///|
test "general category mapping" {
  debug_inspect(@unicode.GeneralCategory::of('A'), content="UppercaseLetter")
  debug_inspect(@unicode.GeneralCategory::of('a'), content="LowercaseLetter")
  debug_inspect(
    @unicode.GeneralCategory::of('\u{01C5}'),
    content="TitlecaseLetter",
  )
  debug_inspect(
    @unicode.GeneralCategory::of('\u{02B0}'),
    content="ModifierLetter",
  )
  debug_inspect(@unicode.GeneralCategory::of('中'), content="OtherLetter")
  debug_inspect(
    @unicode.GeneralCategory::of('\u{0300}'),
    content="NonSpacingMark",
  )
  debug_inspect(
    @unicode.GeneralCategory::of('\u{0903}'),
    content="SpacingCombiningMark",
  )
  debug_inspect(
    @unicode.GeneralCategory::of('\u{0488}'),
    content="EnclosingMark",
  )
  debug_inspect(@unicode.GeneralCategory::of('0'), content="DecimalNumber")
  debug_inspect(
    @unicode.GeneralCategory::of('\u{2160}'),
    content="LetterNumber",
  )
  debug_inspect(@unicode.GeneralCategory::of('\u{00B2}'), content="OtherNumber")
  debug_inspect(
    @unicode.GeneralCategory::of('_'),
    content="ConnectorPunctuation",
  )
  debug_inspect(@unicode.GeneralCategory::of('-'), content="DashPunctuation")
  debug_inspect(@unicode.GeneralCategory::of('('), content="OpenPunctuation")
  debug_inspect(@unicode.GeneralCategory::of(')'), content="ClosePunctuation")
  debug_inspect(
    @unicode.GeneralCategory::of('\u{00AB}'),
    content="InitialQuote",
  )
  debug_inspect(@unicode.GeneralCategory::of('\u{00BB}'), content="FinalQuote")
  debug_inspect(@unicode.GeneralCategory::of('!'), content="OtherPunctuation")
  debug_inspect(@unicode.GeneralCategory::of('+'), content="MathSymbol")
  debug_inspect(@unicode.GeneralCategory::of('$'), content="CurrencySymbol")
  debug_inspect(@unicode.GeneralCategory::of('^'), content="ModifierSymbol")
  debug_inspect(@unicode.GeneralCategory::of('©'), content="OtherSymbol")
  debug_inspect(@unicode.GeneralCategory::of(' '), content="Space")
  debug_inspect(
    @unicode.GeneralCategory::of('\u{2028}'),
    content="LineSeparator",
  )
  debug_inspect(
    @unicode.GeneralCategory::of('\u{2029}'),
    content="ParagraphSeparator",
  )
  debug_inspect(@unicode.GeneralCategory::of('\u{0000}'), content="Control")
  debug_inspect(@unicode.GeneralCategory::of('\u{200D}'), content="Format")
  debug_inspect(
    @unicode.GeneralCategory::of((0xD800 : Int).unsafe_to_char()),
    content="Surrogate",
  )
  debug_inspect(@unicode.GeneralCategory::of('\u{E000}'), content="PrivateUse")
  debug_inspect(@unicode.GeneralCategory::of('\u{0378}'), content="NotAssigned")
}
