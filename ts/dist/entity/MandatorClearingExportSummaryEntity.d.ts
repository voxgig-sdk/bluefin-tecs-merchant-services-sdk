import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { MandatorClearingExportSummary, MandatorClearingExportSummaryCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class MandatorClearingExportSummaryEntity extends BluefinTecsMerchantServicesEntityBase<MandatorClearingExportSummary> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: MandatorClearingExportSummaryEntity): MandatorClearingExportSummaryEntity;
    create(this: any, reqdata?: MandatorClearingExportSummaryCreateData, ctrl?: Control): Promise<MandatorClearingExportSummaryEntity>;
}
export { MandatorClearingExportSummaryEntity };
