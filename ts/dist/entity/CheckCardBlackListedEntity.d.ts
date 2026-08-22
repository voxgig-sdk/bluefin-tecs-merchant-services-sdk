import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { CheckCardBlackListed, CheckCardBlackListedCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class CheckCardBlackListedEntity extends BluefinTecsMerchantServicesEntityBase<CheckCardBlackListed> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: CheckCardBlackListedEntity): CheckCardBlackListedEntity;
    create(this: any, reqdata?: CheckCardBlackListedCreateData, ctrl?: Control): Promise<CheckCardBlackListedEntity>;
}
export { CheckCardBlackListedEntity };
