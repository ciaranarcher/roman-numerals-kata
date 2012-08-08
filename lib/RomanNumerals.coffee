class RomanNumerals
  numerals: {
    '1'     : 'I',
    '2'     : 'II',
    '3'     : 'III',
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

  factor: (input, number, numerals) ->
    groups = Math.floor(input / number)
    remainder = input % number
    if groups > 0
      for i in [1..groups]
        numerals += @numerals[number]
        @numerals[remainder] + numerals if remainder > 0

    [numerals, remainder] # return the remainder and the roman numeral built thusfar

  convert: (value) ->
    numerals = ''

    # check if there is a match in the numerals
    if @numerals[value] != undefined
      return @numerals[value]
    else
      for number in [1000, 900, 500, 400, 100, 90, 50, 40, 10, 5]
        res = @factor(value, number, numerals)
        numerals = res[0]
        value = res[1]
      
        if @numerals[value] != undefined
          return numerals += @numerals[value]

      if value > 0
        numerals += @lowerNums(value)
        
    numerals

exports.RomanNumerals = RomanNumerals