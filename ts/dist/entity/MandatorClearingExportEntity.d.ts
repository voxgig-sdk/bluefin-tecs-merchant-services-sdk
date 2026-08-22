import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { MandatorClearingExport, MandatorClearingExportCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class MandatorClearingExportEntity extends BluefinTecsMerchantServicesEntityBase<MandatorClearingExport> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: MandatorClearingExportEntity): MandatorClearingExportEntity;
    create(this: any, reqdata?: MandatorClearingExportCreateData, ctrl?: Control): Promise<MandatorClearingExportEntity>;
}
export { MandatorClearingExportEntity };
