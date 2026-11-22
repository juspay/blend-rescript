type blendI18nValue = {
  locale: string,
  translate?: (string, option<Dict.t<string>>) => option<string>,
  firstDayOfWeek: CommonTypes.blendFirstDayOfWeek,
}
type useMessagesResult = {
  m: (string, option<Dict.t<string>>) => string,
  mp: (string, float, option<Dict.t<string>>) => string,
  pick: (option<string>, string, option<Dict.t<string>>) => string,
  i18n: blendI18nValue,
  locale: string,
  firstDayOfWeek: CommonTypes.blendFirstDayOfWeek,
  translate?: (string, option<Dict.t<string>>) => option<string>,
}
type resolveOptions = {
  vars?: Dict.t<string>,
  translate?: (string, option<Dict.t<string>>) => option<string>,
}
