import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { TransactionsCount, TransactionsCountCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class TransactionsCountEntity extends BluefinTecsMerchantServicesEntityBase<TransactionsCount> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: TransactionsCountEntity): TransactionsCountEntity;
    create(this: any, reqdata?: TransactionsCountCreateData, ctrl?: Control): Promise<TransactionsCountEntity>;
}
export { TransactionsCountEntity };
