"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BluefinTecsMerchantServicesError = void 0;
class BluefinTecsMerchantServicesError extends Error {
    isBluefinTecsMerchantServicesError = true;
    sdk = 'BluefinTecsMerchantServices';
    code;
    ctx;
    status = -1;
    // `err.notFound` rather than a magic number at every call site.
    get notFound() { return 404 === this.status; }
    constructor(code, msg, ctx) {
        super(msg);
        this.code = code;
        this.ctx = ctx;
    }
}
exports.BluefinTecsMerchantServicesError = BluefinTecsMerchantServicesError;
//# sourceMappingURL=BluefinTecsMerchantServicesError.js.map