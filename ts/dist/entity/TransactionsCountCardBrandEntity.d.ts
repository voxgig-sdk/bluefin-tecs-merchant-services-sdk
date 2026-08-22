import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { TransactionsCountCardBrand, TransactionsCountCardBrandCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class TransactionsCountCardBrandEntity extends BluefinTecsMerchantServicesEntityBase<TransactionsCountCardBrand> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: TransactionsCountCardBrandEntity): TransactionsCountCardBrandEntity;
    create(this: any, reqdata?: TransactionsCountCardBrandCreateData, ctrl?: Control): Promise<TransactionsCountCardBrandEntity>;
}
export { TransactionsCountCardBrandEntity };
