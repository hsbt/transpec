# Changelog

## Master

## v0.0.3

* Suppress addition of superfluous parentheses when converting operator matcher that have argument in parentheses to non-operator matcher (e.g. from `== (2 - 1)` to `eq(2 - 1)`)
* Support auto-modification of syntax configuration in `RSpec.configure`

## v0.0.2

* Support conversion from `be_close(expected, delta)` to `be_within(delta).of(expected)`

## v0.0.1

* Initial release