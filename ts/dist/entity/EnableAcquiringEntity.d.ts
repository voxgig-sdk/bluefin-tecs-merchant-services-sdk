import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { EnableAcquiring, EnableAcquiringCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class EnableAcquiringEntity extends BluefinTecsMerchantServicesEntityBase<EnableAcquiring> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: EnableAcquiringEntity): EnableAcquiringEntity;
    create(this: any, reqdata?: EnableAcquiringCreateData, ctrl?: Control): Promise<EnableAcquiringEntity>;
}
export { EnableAcquiringEntity };
