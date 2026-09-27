import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { CountAuthorisedTransaction, CountAuthorisedTransactionCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class CountAuthorisedTransactionEntity extends BluefinTecsMerchantServicesEntityBase<CountAuthorisedTransaction> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: CountAuthorisedTransactionEntity): CountAuthorisedTransactionEntity;
    create(this: any, reqdata?: CountAuthorisedTransactionCreateData, ctrl?: Control): Promise<CountAuthorisedTransactionEntity>;
}
export { CountAuthorisedTransactionEntity };
