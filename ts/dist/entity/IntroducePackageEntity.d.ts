import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { IntroducePackage, IntroducePackageCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class IntroducePackageEntity extends BluefinTecsMerchantServicesEntityBase<IntroducePackage> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: IntroducePackageEntity): IntroducePackageEntity;
    create(this: any, reqdata?: IntroducePackageCreateData, ctrl?: Control): Promise<IntroducePackageEntity>;
}
export { IntroducePackageEntity };
