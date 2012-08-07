RomanNumerals = require('./../lib/RomanNumerals').RomanNumerals

describe 'RomanNumerals', ->
  beforeEach ->
    @rn = new RomanNumerals()
  # 1 to 10
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
  it 'VIII for 8', ->
    expect(@rn.convert(8)).toBe 'VIII'
  it 'IX for 9', ->
    expect(@rn.convert(9)).toBe 'IX'

  # 10 to 100
  it 'XI for 11', ->
    expect(@rn.convert(11)).toBe 'XI'
  it 'XV for 15', ->
    expect(@rn.convert(15)).toBe 'XV'
  it 'XVIII for 18', ->
    expect(@rn.convert(18)).toBe 'XVIII'
  it 'XIX for 19', ->
    expect(@rn.convert(19)).toBe 'XIX'
