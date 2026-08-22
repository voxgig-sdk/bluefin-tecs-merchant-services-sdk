import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { EmvData, EmvDataCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class EmvDataEntity extends BluefinTecsMerchantServicesEntityBase<EmvData> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: EmvDataEntity): EmvDataEntity;
    create(this: any, reqdata?: EmvDataCreateData, ctrl?: Control): Promise<EmvDataEntity>;
}
export { EmvDataEntity };
