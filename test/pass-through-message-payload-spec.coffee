ReturnValue = require 'nanocyte-component-return-value'
PassThroughMessagePayload = require '../src/pass-through-message-payload'

describe 'PassThroughMessagePayload', ->
  beforeEach ->
    @sut = new PassThroughMessagePayload

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the payload', ->
        expect(@sut.onEnvelope({message: payload: 'anything'})).to.deep.equal 'anything'
