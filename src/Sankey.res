type sankeyNode = {name: string}

type sankeyLink = {
  source: int,
  target: int,
  value: float,
  color: option<string>,
  hoverColor: option<string>,
  sourceName: option<string>,
  targetName: option<string>,
}

type transformedData = {
  nodes: array<sankeyNode>,
  links: array<sankeyLink>,
}

@module("@juspay/blend-design-system") @react.component
external make: (
  ~transformedData: transformedData,
  ~nodeColors: array<string>,
  ~linkColors: array<string>,
  ~sankeyWidth: int,
  ~sankeyHeight: int,
  ~isSmallScreen: bool,
  ~chartName: string=?,
) => React.element = "SankeyChartWrapper"
