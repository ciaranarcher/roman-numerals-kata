RomanNumerals = require('./../lib/RomanNumerals').RomanNumerals

describe 'RomanNumerals', ->
  beforeEach ->
    @rn = new RomanNumerals()
  it 'returns I for 1', ->
    expect(@rn.convert(1)).toBe 'I'
  it 'returns II for 2', ->
    expect(@rn.convert(2)).toBe 'II'
  it 'returns III for 3', ->
    expect(@rn.convert(3)).toBe 'III'
  it 'IV for 4', ->
    expect(@rn.convert(4)).toBe 'IV'
  it 'V for 5', ->
    expect(@rn.convert(5)).toBe 'V'
  it 'VI for 6', ->
    expect(@rn.convert(6)).toBe 'VI'
  it 'VII for 7', ->
    expect(@rn.convert(7)).toBe 'VII'
