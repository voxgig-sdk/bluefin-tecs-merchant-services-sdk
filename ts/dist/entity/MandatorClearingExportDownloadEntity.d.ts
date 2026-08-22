import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { MandatorClearingExportDownload, MandatorClearingExportDownloadLoadMatch, MandatorClearingExportDownloadCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class MandatorClearingExportDownloadEntity extends BluefinTecsMerchantServicesEntityBase<MandatorClearingExportDownload> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: MandatorClearingExportDownloadEntity): MandatorClearingExportDownloadEntity;
    load(this: any, reqmatch?: MandatorClearingExportDownloadLoadMatch, ctrl?: Control): Promise<MandatorClearingExportDownloadEntity>;
    create(this: any, reqdata?: MandatorClearingExportDownloadCreateData, ctrl?: Control): Promise<MandatorClearingExportDownloadEntity>;
}
export { MandatorClearingExportDownloadEntity };
