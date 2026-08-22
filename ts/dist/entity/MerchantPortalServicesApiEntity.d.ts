import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { MerchantPortalServicesApi, MerchantPortalServicesApiCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class MerchantPortalServicesApiEntity extends BluefinTecsMerchantServicesEntityBase<MerchantPortalServicesApi> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: MerchantPortalServicesApiEntity): MerchantPortalServicesApiEntity;
    create(this: any, reqdata?: MerchantPortalServicesApiCreateData, ctrl?: Control): Promise<MerchantPortalServicesApiEntity>;
}
export { MerchantPortalServicesApiEntity };
