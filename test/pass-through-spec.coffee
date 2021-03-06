ReturnValue = require 'nanocyte-component-return-value'
PassThrough = require '../src/pass-through'

describe 'PassThrough', ->
  beforeEach ->
    @sut = new PassThrough

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
