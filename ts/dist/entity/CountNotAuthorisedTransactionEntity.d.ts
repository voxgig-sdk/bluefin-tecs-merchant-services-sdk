import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { CountNotAuthorisedTransaction, CountNotAuthorisedTransactionCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class CountNotAuthorisedTransactionEntity extends BluefinTecsMerchantServicesEntityBase<CountNotAuthorisedTransaction> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: CountNotAuthorisedTransactionEntity): CountNotAuthorisedTransactionEntity;
    create(this: any, reqdata?: CountNotAuthorisedTransactionCreateData, ctrl?: Control): Promise<CountNotAuthorisedTransactionEntity>;
}
export { CountNotAuthorisedTransactionEntity };
