ReturnValue = require 'nanocyte-component-return-value'

class PassThrough extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = PassThrough
