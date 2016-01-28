ReturnValue = require 'nanocyte-component-return-value'

class PassThroughMessagePayload extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message.payload

module.exports = PassThroughMessagePayload
