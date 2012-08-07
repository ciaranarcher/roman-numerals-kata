class RomanNumerals
  numerals: {
    '1'     : 'I',
    '4'     : 'IV',
    '5'     : 'V',
    '9'     : 'IX',
    '10'    : 'X',
    '40'    : 'XL',
    '50'    : 'L',
    '90'    : 'XC',
    '100'   : 'C',
    '400'   : 'CD',
    '500'   : 'D',
    '900'   : 'CM'
    '1000'  : 'M'
  }

  lowerNums: (num) ->
    return 'I' if num == 1
    return 'II' if num == 2
    return 'III' if num == 3
    throw 'not a number between 1 and 3'

  convert: (value) ->
    numerals = ''

    # 1 to 3 are special cases
    return @lowerNums(value) if value <= 3

    # check if there is a match in the numerals
    if @numerals[value] != undefined
      return @numerals[value]
    else

      if value >= 10
        value = value % 10
        numerals += @numerals[10]


      if value >= 5 
        value = value % 5
        numerals += @numerals[5]

      if value > 0
        numerals += @lowerNums(value)

    numerals


    # find a number greater than value

exports.RomanNumerals = RomanNumerals