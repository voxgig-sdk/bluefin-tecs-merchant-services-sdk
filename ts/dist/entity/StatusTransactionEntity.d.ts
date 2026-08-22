import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { StatusTransaction, StatusTransactionCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class StatusTransactionEntity extends BluefinTecsMerchantServicesEntityBase<StatusTransaction> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: StatusTransactionEntity): StatusTransactionEntity;
    create(this: any, reqdata?: StatusTransactionCreateData, ctrl?: Control): Promise<StatusTransactionEntity>;
}
export { StatusTransactionEntity };
