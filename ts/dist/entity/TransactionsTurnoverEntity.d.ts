import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { TransactionsTurnover, TransactionsTurnoverCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class TransactionsTurnoverEntity extends BluefinTecsMerchantServicesEntityBase<TransactionsTurnover> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: TransactionsTurnoverEntity): TransactionsTurnoverEntity;
    create(this: any, reqdata?: TransactionsTurnoverCreateData, ctrl?: Control): Promise<TransactionsTurnoverEntity>;
}
export { TransactionsTurnoverEntity };
