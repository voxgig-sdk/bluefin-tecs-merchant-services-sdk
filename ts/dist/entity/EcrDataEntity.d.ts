import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { EcrData, EcrDataCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class EcrDataEntity extends BluefinTecsMerchantServicesEntityBase<EcrData> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: EcrDataEntity): EcrDataEntity;
    create(this: any, reqdata?: EcrDataCreateData, ctrl?: Control): Promise<EcrDataEntity>;
}
export { EcrDataEntity };
