import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { StoreTerminalParameter, StoreTerminalParameterCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class StoreTerminalParameterEntity extends BluefinTecsMerchantServicesEntityBase<StoreTerminalParameter> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: StoreTerminalParameterEntity): StoreTerminalParameterEntity;
    create(this: any, reqdata?: StoreTerminalParameterCreateData, ctrl?: Control): Promise<StoreTerminalParameterEntity>;
}
export { StoreTerminalParameterEntity };
