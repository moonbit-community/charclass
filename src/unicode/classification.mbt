///|
pub fn is_control(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    Control => true
    _ => false
  }
}

///|
pub fn is_space(this : Char) -> Bool {
  let uc = this.to_int().reinterpret_as_uint()
  if uc <= 0x377 {
    uc == 32 || uc - 0x9 <= 4 || uc == 0xA0
  } else {
    GeneralCategory::of(this) is Space
  }
}

///|
pub fn is_alphabetic(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    UppercaseLetter
    | LowercaseLetter
    | TitlecaseLetter
    | ModifierLetter
    | OtherLetter => true
    _ => false
  }
}

///|
pub fn is_number(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    DecimalNumber | LetterNumber | OtherNumber => true
    _ => false
  }
}

///|
pub fn is_alphanum(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    UppercaseLetter
    | LowercaseLetter
    | TitlecaseLetter
    | ModifierLetter
    | OtherLetter
    | DecimalNumber
    | LetterNumber
    | OtherNumber => true
    _ => false
  }
}

///|
pub fn is_puncutation(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    ConnectorPunctuation
    | DashPunctuation
    | OpenPunctuation
    | ClosePunctuation
    | InitialQuote
    | FinalQuote
    | OtherPunctuation => true
    _ => false
  }
}

///|
pub fn is_symbol(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    MathSymbol | CurrencySymbol | ModifierSymbol | OtherSymbol => true
    _ => false
  }
}

///|
pub fn is_mark(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    NonSpacingMark | SpacingCombiningMark | EnclosingMark => true
    _ => false
  }
}

///|
pub fn is_separator(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    Space | LineSeparator | ParagraphSeparator => true
    _ => false
  }
}
