import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { UpdateMerchant, UpdateMerchantCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class UpdateMerchantEntity extends BluefinTecsMerchantServicesEntityBase<UpdateMerchant> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: UpdateMerchantEntity): UpdateMerchantEntity;
    create(this: any, reqdata?: UpdateMerchantCreateData, ctrl?: Control): Promise<UpdateMerchantEntity>;
}
export { UpdateMerchantEntity };
