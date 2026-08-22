import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { EcomParameter, EcomParameterCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class EcomParameterEntity extends BluefinTecsMerchantServicesEntityBase<EcomParameter> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: EcomParameterEntity): EcomParameterEntity;
    create(this: any, reqdata?: EcomParameterCreateData, ctrl?: Control): Promise<EcomParameterEntity>;
}
export { EcomParameterEntity };
