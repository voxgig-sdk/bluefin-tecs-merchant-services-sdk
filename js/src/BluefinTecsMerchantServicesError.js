

class BluefinTecsMerchantServicesError extends Error {

  isBluefinTecsMerchantServicesError = true

  sdk = 'BluefinTecsMerchantServices'

  constructor(code, msg, ctx) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

module.exports = {
  BluefinTecsMerchantServicesError
}

