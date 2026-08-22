import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { EcDataEcom, EcDataEcomCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class EcDataEcomEntity extends BluefinTecsMerchantServicesEntityBase<EcDataEcom> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: EcDataEcomEntity): EcDataEcomEntity;
    create(this: any, reqdata?: EcDataEcomCreateData, ctrl?: Control): Promise<EcDataEcomEntity>;
}
export { EcDataEcomEntity };
