import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { TransactionHistory, TransactionHistoryCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class TransactionHistoryEntity extends BluefinTecsMerchantServicesEntityBase<TransactionHistory> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: TransactionHistoryEntity): TransactionHistoryEntity;
    create(this: any, reqdata?: TransactionHistoryCreateData, ctrl?: Control): Promise<TransactionHistoryEntity>;
}
export { TransactionHistoryEntity };
