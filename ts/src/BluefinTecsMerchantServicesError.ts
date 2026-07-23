
import { Context } from './Context'


class BluefinTecsMerchantServicesError extends Error {

  isBluefinTecsMerchantServicesError = true

  sdk = 'BluefinTecsMerchantServices'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  BluefinTecsMerchantServicesError
}

