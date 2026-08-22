import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { DigitalServicesApi, DigitalServicesApiLoadMatch, DigitalServicesApiCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class DigitalServicesApiEntity extends BluefinTecsMerchantServicesEntityBase<DigitalServicesApi> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: DigitalServicesApiEntity): DigitalServicesApiEntity;
    load(this: any, reqmatch?: DigitalServicesApiLoadMatch, ctrl?: Control): Promise<DigitalServicesApiEntity>;
    create(this: any, reqdata?: DigitalServicesApiCreateData, ctrl?: Control): Promise<DigitalServicesApiEntity>;
}
export { DigitalServicesApiEntity };
