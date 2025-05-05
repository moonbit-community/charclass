///|
test "control character" {
  assert_true!(is_control('\u{00}'))
  assert_true!(is_control('\u{01}'))
  assert_true!(is_control('\u{02}'))
  assert_true!(is_control('\u{03}'))
  assert_true!(is_control('\u{04}'))
  assert_true!(is_control('\u{05}'))
  assert_true!(is_control('\u{06}'))
  assert_true!(is_control('\u{07}'))
  assert_true!(is_control('\u{7f}'))
}
