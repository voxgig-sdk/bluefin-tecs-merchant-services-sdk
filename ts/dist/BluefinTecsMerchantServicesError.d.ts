import { Context } from './Context';
declare class BluefinTecsMerchantServicesError extends Error {
    isBluefinTecsMerchantServicesError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { BluefinTecsMerchantServicesError };
