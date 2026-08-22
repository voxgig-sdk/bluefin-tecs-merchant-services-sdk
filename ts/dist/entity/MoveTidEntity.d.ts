import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { MoveTid, MoveTidCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class MoveTidEntity extends BluefinTecsMerchantServicesEntityBase<MoveTid> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: MoveTidEntity): MoveTidEntity;
    create(this: any, reqdata?: MoveTidCreateData, ctrl?: Control): Promise<MoveTidEntity>;
}
export { MoveTidEntity };
