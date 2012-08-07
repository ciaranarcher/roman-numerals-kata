class RomanNumerals
  NUMERALS = {
    1     : 'I',
    5     : 'V',
    10    : 'X',
    50    : 'L',
    100   : 'C',
    500   : 'D',
    1000  : 'M'
  }
  convert: (value) ->
    return 'I' if value == 1
    return 'II' if value == 2
    return 'III' if value == 3

exports.RomanNumerals = RomanNumerals
