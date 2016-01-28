ReturnValue = require 'nanocyte-component-return-value'
PassThoughMessage = require '../src/pass-though-message-config'

describe 'PassThoughMessage', ->
  beforeEach ->
    @sut = new PassThoughMessage

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the payload', ->
        expect(@sut.onEnvelope({message: payload: 'anything'})).to.deep.equal 'anything'
