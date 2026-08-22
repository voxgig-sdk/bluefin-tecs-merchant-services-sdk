import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { ReportData, ReportDataCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class ReportDataEntity extends BluefinTecsMerchantServicesEntityBase<ReportData> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: ReportDataEntity): ReportDataEntity;
    create(this: any, reqdata?: ReportDataCreateData, ctrl?: Control): Promise<ReportDataEntity>;
}
export { ReportDataEntity };
