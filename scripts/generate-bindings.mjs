#!/usr/bin/env node

/**
 * AI ReScript Bindings Generator
 *
 * Scans a React component directory, reads the .tsx and types.ts files,
 * and uses NeuroLink to generate ReScript bindings.
 *
 * Usage: node generate-bindings.mjs --component Button
 */

import dotenv from 'dotenv'
import { NeuroLink } from '@juspay/neurolink'
import {
    readFileSync,
    existsSync,
    writeFileSync,
    mkdirSync,
    readdirSync,
    renameSync,
} from 'fs'
import { fileURLToPath } from 'url'
import { dirname, join, basename } from 'path'
import { execSync } from 'child_process'

const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

const BLEND_ROOT = join(__dirname, '..')

// Explicitly load .env from the package root
dotenv.config({ path: join(BLEND_ROOT, '.env') })

console.log('\n')
console.log('kwebfkwf', process.env.TEST_KEY)
console.log('\n')

// Ensure paths are relative to the script location assuming it's in packages/blend/scripts
const COMPONENTS_DIR = join(BLEND_ROOT, 'node_modules', '@juspay', 'blend-design-system', 'dist', 'components')
const BINDINGS_DIR = join(BLEND_ROOT, 'src')

const CONFIG = {
    provider: 'litellm',
    model: 'kimi-latest',
}

const INSTRUCTIONS_FILE = join(__dirname, 'bindings-instructions.md')
const INSTRUCTIONS_CONTENT = readFileSync(INSTRUCTIONS_FILE, 'utf-8')

const ERRORS_FILE = join(__dirname, 'known-errors.md')
let ERRORS_CONTENT = ''
if (existsSync(ERRORS_FILE)) {
    ERRORS_CONTENT = readFileSync(ERRORS_FILE, 'utf-8')
}

const SYSTEM_PROMPT = `You are an expert ReScript and React developer. Your task is to generate ReScript bindings for a given React component based on its TypeScript declaration files (.d.ts).

Here are previously encountered errors to avoid:
=========================================
${ERRORS_CONTENT}
=========================================

Here is the source of truth for your rules and examples:
=========================================
${INSTRUCTIONS_CONTENT}
=========================================

- Do not output any explanation. Output ONLY the raw ReScript code inside a JSON response or markdown block so it can be extracted.
- Response format MUST be a JSON object:
{
  "success": true,
  "rescriptCode": "...",
  "learnedErrorsToDocument": "Optional: If you are fixing a compiler error during a retry loop, provide a single sentence rule here on how to prevent this error in the future so it can be documented."
}
`

class BindingsGenerator {
    constructor(options) {
        this.component = options.component
        this.all = options.all || false
        this.neurolink = null
    }

    log(level, message) {
        const prefix =
            {
                info: 'ℹ️ ',
                success: '✅',
                error: '❌',
                warn: '⚠️ ',
                phase: '🔄',
            }[level] || ''
        console.log(`${prefix} ${message}`)
    }

    async initialize() {
        this.log('phase', 'Initializing NeuroLink...')
        this.neurolink = new NeuroLink({
            provider: CONFIG.provider,
            model: CONFIG.model,
        })

        if (!existsSync(BINDINGS_DIR)) {
            mkdirSync(BINDINGS_DIR, { recursive: true })
        }
    }

    getComponentFiles(componentName) {
        const compDir = join(COMPONENTS_DIR, componentName)
        if (!existsSync(compDir)) {
            throw new Error(`Component directory not found: ${compDir}`)
        }

        const files = {}
        const mainDtsPath = join(compDir, `${componentName}.d.ts`)
        const indexDtsPath = join(compDir, `index.d.ts`)
        const typesDtsPath = join(compDir, 'types.d.ts')

        // Fetch Main Declaration File
        if (existsSync(mainDtsPath)) {
            files[`${componentName}.d.ts`] = readFileSync(mainDtsPath, 'utf-8')
        } else if (existsSync(indexDtsPath)) {
            files[`index.d.ts`] = readFileSync(indexDtsPath, 'utf-8')
        }

        // Fetch Types File
        if (existsSync(typesDtsPath)) {
            files['types.d.ts'] = readFileSync(typesDtsPath, 'utf-8')
        }

        if (Object.keys(files).length === 0) {
            throw new Error(
                `No relevant .d.ts or types.d.ts found for component ${componentName} in ${compDir}`
            )
        }

        return files
    }

    verifyCompilation(componentName) {
        try {
            execSync('npm run build', { stdio: 'pipe' })
            return { success: true }
        } catch (error) {
            const output = (error.stdout ? error.stdout.toString() : '') + (error.stderr ? error.stderr.toString() : '');
            
            // Isolate errors to only the current component to avoid AI context stacking
            const blocks = output.split(/Error in/g);
            let relevantError = "";
            for (const block of blocks) {
                if (block.includes(`src/${componentName}.res:`)) {
                    relevantError += "Error in" + block;
                }
            }

            if (!relevantError.trim()) {
                return { 
                    success: false, 
                    errorOutput: `FATAL: Global compilation proxy failed. Another broken file in your src/ directory is blocking compilation for ${componentName}.res.` 
                }
            }

            return { success: false, errorOutput: relevantError.trim() }
        }
    }

    parseJSON(content) {
        try {
            const jsonMatch = content.match(/\{[\s\S]*\}/)
            if (jsonMatch) return JSON.parse(jsonMatch[0])

            const codeBlockMatch = content.match(
                /```(?:json)?\s*(\{[\s\S]*?\})\s*```/
            )
            if (codeBlockMatch) return JSON.parse(codeBlockMatch[1])

            return { success: false, error: 'No valid JSON found in response' }
        } catch (e) {
            return { success: false, error: e.message }
        }
    }

    async processComponent(componentName) {
        this.log('phase', `Generating bindings for ${componentName}...`)

        let files
        try {
            files = this.getComponentFiles(componentName)
        } catch (e) {
            this.log('error', e.message)
            return false
        }

        let fileContext = ''
        for (const [fileName, content] of Object.entries(files)) {
            fileContext += `\n### File: ${fileName}\n\`\`\`typescript\n${content}\n\`\`\`\n`
        }

        let currentPrompt = `Generate a ReScript binding for the component "${componentName}".
Here are the relevant source declaration files:
${fileContext}

Please return the output as a JSON object matching the requested format.
`
        let isSuccessState = false;
        const destPath = join(BINDINGS_DIR, `${componentName}.res`)
        const failedPath = join(BINDINGS_DIR, `${componentName}.failed.res`)

        const MAX_RETRIES = 3;
        for (let attempt = 1; attempt <= MAX_RETRIES; attempt++) {
            this.log('info', `Attempt ${attempt}/${MAX_RETRIES} to generate bindings for ${componentName}...`)

            try {
                const result = await this.neurolink.generate({
                    input: { text: currentPrompt },
                    systemPrompt: SYSTEM_PROMPT,
                    provider: CONFIG.provider,
                    model: CONFIG.model,
                })

                const parsed = this.parseJSON(result.content)

                if (parsed.success && parsed.rescriptCode) {
                    let finalCode = parsed.rescriptCode.trim()
                    // Fix double-escaped payload from LLM JSON payloads
                    finalCode = finalCode.replace(/\\n/g, '\n').replace(/\\r/g, '\r').replace(/\\t/g, '\t').replace(/\\"/g, '"')
                    
                    writeFileSync(destPath, finalCode, 'utf-8')
                    
                    this.log('phase', `Validating compilation for ${componentName}...`)
                    const validation = this.verifyCompilation(componentName)
                    
                    if (validation.success) {
                        this.log('success', `Generated and compiled bindings for ${componentName} -> ${destPath}`)
                        if (parsed.learnedErrorsToDocument) {
                            const fs = await import('fs');
                            fs.appendFileSync(ERRORS_FILE, `\n- [Auto-Learned]: ${parsed.learnedErrorsToDocument}\n`, 'utf-8');
                            this.log('info', `Appended new learned rule to known-errors: ${parsed.learnedErrorsToDocument}`);
                        }
                        isSuccessState = true;
                        break;
                    } else {
                        this.log('warn', `Compilation failed on attempt ${attempt}.`)
                        if (attempt === MAX_RETRIES) {
                            this.log('error', `Max retries reached. Failing component ${componentName}.\nCompilation errors:\n${validation.errorOutput}`)
                            
                            const fs = await import('fs');
                            fs.appendFileSync(ERRORS_FILE, `\n- [Unresolved Failure] ${componentName}: Failed compilation because: \n${validation.errorOutput.split('\\n').slice(0, 5).join('\\n')}\n`, 'utf-8');
                            break;
                        } else {
                            this.log('phase', 'Injecting compiler feedback loop...')
                            
                            // Inject actual human context dynamically to rescue failing generation
                            let goldenExample = "";
                            const fs = await import('fs');
                            const goldenPath = join(BINDINGS_DIR, 'Card.res');
                            if (fs.existsSync(goldenPath)) {
                                goldenExample = `\n\nREFERENCE EXAMPLE:\nTo help you, here is a perfectly formatted, highly advanced human codebase file (Card.res) for you to mimic:\n\`\`\`rescript\n${fs.readFileSync(goldenPath, 'utf-8')}\n\`\`\`\n`;
                            }

                            currentPrompt = `The previous code you generated failed to compile.
Here was the generated code:
\`\`\`rescript
${parsed.rescriptCode.trim()}
\`\`\`

Here are the exact ReScript compiler errors:
\`\`\`
${validation.errorOutput}
\`\`\`

Please fix the compilation errors and return the corrected ReScript bindings as a JSON object matching the requested format. Follow the instruction rules meticulously, specially around polymoprhic variants and react components! 
CRITICAL: Include the "learnedErrorsToDocument" field in your JSON documenting what rule must be followed to avoid this specific error.${goldenExample}
`
                        }
                    }
                } else {
                    this.log('error', `Failed to parse generated JSON bindings for ${componentName}: ${parsed.error || 'Missing rescriptCode'}`)
                    break;
                }
            } catch (e) {
                this.log('error', `AI generation failed for ${componentName}: ${e.message}`)
                break;
            }
        }

        // Cleanup any failed files safely
        if (!isSuccessState) {
            import('fs').then(fs => {
                if (fs.existsSync(destPath)) {
                    fs.renameSync(destPath, failedPath)
                }
            });
            return false;
        }

        return true;
    }

    async run() {
        await this.initialize()

        if (this.component) {
            await this.processComponent(this.component)
        } else if (this.all) {
            const components = readdirSync(COMPONENTS_DIR, {
                withFileTypes: true,
            })
                .filter((dirent) => dirent.isDirectory())
                .map((dirent) => dirent.name)

            this.log(
                'info',
                `Found ${components.length} components. Generating bindings...`
            )
            for (const comp of components) {
                await this.processComponent(comp)
            }
        } else {
            this.log(
                'error',
                'No target specified. Use --component <Name> or --all'
            )
            process.exit(1)
        }
    }
}

function parseArgs() {
    const args = process.argv.slice(2)
    const options = {}

    for (let i = 0; i < args.length; i++) {
        const arg = args[i]
        if (arg === '--component' || arg === '-c') {
            options.component = args[i + 1]
            i++
        } else if (arg === '--path' || arg === '-p') {
            const rawPath = args[i + 1]
            options.component = basename(rawPath)
            i++
        } else if (arg === '--all') {
            options.all = true
        }
    }
    return options
}

const options = parseArgs()
if (!options.component && !options.all) {
    console.log(
        'Usage: node generate-bindings.mjs --component <ComponentName> [or --all]'
    )
    process.exit(1)
}

const generator = new BindingsGenerator(options)
generator.run().catch(console.error)
