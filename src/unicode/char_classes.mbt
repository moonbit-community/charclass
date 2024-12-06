pub fn is_control(this : Char) -> Bool {
  match GeneralCategory::of(this) {
    Control => true
    _ => false
  }
}

test "control character" {
  assert_true!(is_control('\x00'))
  assert_true!(is_control('\x01'))
  assert_true!(is_control('\x02'))
  assert_true!(is_control('\x03'))
  assert_true!(is_control('\x04'))
  assert_true!(is_control('\x05'))
  assert_true!(is_control('\x06'))
  assert_true!(is_control('\x07'))
  //
  assert_true!(is_control('\x7f'))
}