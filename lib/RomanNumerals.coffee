class RomanNumerals
  convert: (value) ->
    return 'I' if value == 1
    return 'II' if value == 2

exports.RomanNumerals = RomanNumerals
