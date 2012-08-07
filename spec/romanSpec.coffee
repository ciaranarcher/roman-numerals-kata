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
