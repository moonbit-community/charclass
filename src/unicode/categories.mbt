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
} derive(Show)

///|
fn GeneralCategory::from_byte(b : Byte) -> GeneralCategory {
  match b {
    0 => UppercaseLetter
    1 => LowercaseLetter
    2 => TitlecaseLetter
    3 => ModifierLetter
    4 => OtherLetter
    5 => NonSpacingMark
    6 => SpacingCombiningMark
    7 => EnclosingMark
    8 => DecimalNumber
    9 => LetterNumber
    10 => OtherNumber
    11 => ConnectorPunctuation
    12 => DashPunctuation
    13 => OpenPunctuation
    14 => ClosePunctuation
    15 => InitialQuote
    16 => FinalQuote
    17 => OtherPunctuation
    18 => MathSymbol
    19 => CurrencySymbol
    20 => ModifierSymbol
    21 => OtherSymbol
    22 => Space
    23 => LineSeparator
    24 => ParagraphSeparator
    25 => Control
    26 => Format
    27 => Surrogate
    28 => PrivateUse
    29 => NotAssigned
    _ => panic()
  }
}

///|
pub fn GeneralCategory::of(chr : Char) -> GeneralCategory {
  let n = chr.to_int()
  if n >= 1114110 {
    return NotAssigned
  } else {
    return GeneralCategory::from_byte(categories[n])
  }
}
