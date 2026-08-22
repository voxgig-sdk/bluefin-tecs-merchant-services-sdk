import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { RefundTransaction, RefundTransactionCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class RefundTransactionEntity extends BluefinTecsMerchantServicesEntityBase<RefundTransaction> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: RefundTransactionEntity): RefundTransactionEntity;
    create(this: any, reqdata?: RefundTransactionCreateData, ctrl?: Control): Promise<RefundTransactionEntity>;
}
export { RefundTransactionEntity };
