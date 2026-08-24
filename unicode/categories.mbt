///|
pub enum GeneralCategory {
  UppercaseLetter // Lu: Letter, Uppercase
  LowercaseLetter // Ll: Letter, Lowercase
  TitlecaseLetter // Lt: Letter, Titlecase
  ModifierLetter // Lm: Letter, Modifier
  OtherLetter // Lo: Letter, Other
  NonSpacingMark // Mn: Mark, Non-Spacing
  SpacingCombiningMark // Mc: Mark, Spacing Combining
  EnclosingMark // Me: Mark, Enclosing
  DecimalNumber // Nd: Number, Decimal
  LetterNumber // Nl: Number, Letter
  OtherNumber // No: Number, Other
  ConnectorPunctuation // Pc: Punctuation, Connector
  DashPunctuation // Pd: Punctuation, Dash
  OpenPunctuation // Ps: Punctuation, Open
  ClosePunctuation // Pe: Punctuation, Close
  InitialQuote // Pi: Punctuation, Initial quote
  FinalQuote // Pf: Punctuation, Final quote
  OtherPunctuation // Po: Punctuation, Other
  MathSymbol // Sm: Symbol, Math
  CurrencySymbol // Sc: Symbol, Currency
  ModifierSymbol // Sk: Symbol, Modifier
  OtherSymbol // So: Symbol, Other
  Space // Zs: Separator, Space
  LineSeparator // Zl: Separator, Line
  ParagraphSeparator // Zp: Separator, Paragraph
  Control // Cc: Other, Control
  Format // Cf: Other, Format
  Surrogate // Cs: Other, Surrogate
  PrivateUse // Co: Other, Private Use
  NotAssigned // Cn: Other, Not Assigned
} derive(Debug)

///|
fn GeneralCategory::from_ucd(
  category : @ucd.GeneralCategory,
) -> GeneralCategory {
  match category {
    Lu => UppercaseLetter
    Ll => LowercaseLetter
    Lt => TitlecaseLetter
    Lm => ModifierLetter
    Lo => OtherLetter
    Mn => NonSpacingMark
    Mc => SpacingCombiningMark
    Me => EnclosingMark
    Nd => DecimalNumber
    Nl => LetterNumber
    No => OtherNumber
    Pc => ConnectorPunctuation
    Pd => DashPunctuation
    Ps => OpenPunctuation
    Pe => ClosePunctuation
    Pi => InitialQuote
    Pf => FinalQuote
    Po => OtherPunctuation
    Sm => MathSymbol
    Sc => CurrencySymbol
    Sk => ModifierSymbol
    So => OtherSymbol
    Zs => Space
    Zl => LineSeparator
    Zp => ParagraphSeparator
    Cc => Control
    Cf => Format
    Cs => Surrogate
    Co => PrivateUse
    Cn => NotAssigned
  }
}

///|
pub fn GeneralCategory::of(chr : Char) -> GeneralCategory {
  GeneralCategory::from_ucd(@ucd.general_category(chr))
}
