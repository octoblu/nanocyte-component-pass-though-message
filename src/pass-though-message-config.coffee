ReturnValue = require 'nanocyte-component-return-value'

class PassThoughMessage extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message.payload

module.exports = PassThoughMessage
