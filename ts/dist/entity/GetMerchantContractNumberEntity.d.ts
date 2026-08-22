import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { GetMerchantContractNumber, GetMerchantContractNumberCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class GetMerchantContractNumberEntity extends BluefinTecsMerchantServicesEntityBase<GetMerchantContractNumber> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: GetMerchantContractNumberEntity): GetMerchantContractNumberEntity;
    create(this: any, reqdata?: GetMerchantContractNumberCreateData, ctrl?: Control): Promise<GetMerchantContractNumberEntity>;
}
export { GetMerchantContractNumberEntity };
