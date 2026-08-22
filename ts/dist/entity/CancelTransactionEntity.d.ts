import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { CancelTransaction, CancelTransactionCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class CancelTransactionEntity extends BluefinTecsMerchantServicesEntityBase<CancelTransaction> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: CancelTransactionEntity): CancelTransactionEntity;
    create(this: any, reqdata?: CancelTransactionCreateData, ctrl?: Control): Promise<CancelTransactionEntity>;
}
export { CancelTransactionEntity };
