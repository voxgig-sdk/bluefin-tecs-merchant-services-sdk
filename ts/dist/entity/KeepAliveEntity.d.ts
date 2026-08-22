import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { KeepAlive, KeepAliveCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class KeepAliveEntity extends BluefinTecsMerchantServicesEntityBase<KeepAlive> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: KeepAliveEntity): KeepAliveEntity;
    create(this: any, reqdata?: KeepAliveCreateData, ctrl?: Control): Promise<KeepAliveEntity>;
}
export { KeepAliveEntity };
