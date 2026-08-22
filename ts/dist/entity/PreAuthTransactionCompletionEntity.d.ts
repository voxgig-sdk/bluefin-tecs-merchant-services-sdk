import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { PreAuthTransactionCompletion, PreAuthTransactionCompletionCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class PreAuthTransactionCompletionEntity extends BluefinTecsMerchantServicesEntityBase<PreAuthTransactionCompletion> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: PreAuthTransactionCompletionEntity): PreAuthTransactionCompletionEntity;
    create(this: any, reqdata?: PreAuthTransactionCompletionCreateData, ctrl?: Control): Promise<PreAuthTransactionCompletionEntity>;
}
export { PreAuthTransactionCompletionEntity };
