import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { Version, VersionLoadMatch } from '../BluefinTecsMerchantServicesTypes';
declare class VersionEntity extends BluefinTecsMerchantServicesEntityBase<Version> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: VersionEntity): VersionEntity;
    load(this: any, reqmatch?: VersionLoadMatch, ctrl?: Control): Promise<VersionEntity>;
}
export { VersionEntity };
