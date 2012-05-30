test = require '../lib/roman'

describe 'test run', -> 
  it 'obj should be created', -> 
    x = new TestClass()
    expect(x.myValue()).toEqual(100)
