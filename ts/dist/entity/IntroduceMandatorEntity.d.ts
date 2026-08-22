import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { IntroduceMandator, IntroduceMandatorCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class IntroduceMandatorEntity extends BluefinTecsMerchantServicesEntityBase<IntroduceMandator> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: IntroduceMandatorEntity): IntroduceMandatorEntity;
    create(this: any, reqdata?: IntroduceMandatorCreateData, ctrl?: Control): Promise<IntroduceMandatorEntity>;
}
export { IntroduceMandatorEntity };
