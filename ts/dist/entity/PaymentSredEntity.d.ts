import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { PaymentSred, PaymentSredCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class PaymentSredEntity extends BluefinTecsMerchantServicesEntityBase<PaymentSred> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: PaymentSredEntity): PaymentSredEntity;
    create(this: any, reqdata?: PaymentSredCreateData, ctrl?: Control): Promise<PaymentSredEntity>;
}
export { PaymentSredEntity };
