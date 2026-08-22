import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { PaymentManual, PaymentManualCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class PaymentManualEntity extends BluefinTecsMerchantServicesEntityBase<PaymentManual> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: PaymentManualEntity): PaymentManualEntity;
    create(this: any, reqdata?: PaymentManualCreateData, ctrl?: Control): Promise<PaymentManualEntity>;
}
export { PaymentManualEntity };
