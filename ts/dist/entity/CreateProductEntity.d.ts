import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { CreateProduct, CreateProductCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class CreateProductEntity extends BluefinTecsMerchantServicesEntityBase<CreateProduct> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: CreateProductEntity): CreateProductEntity;
    create(this: any, reqdata?: CreateProductCreateData, ctrl?: Control): Promise<CreateProductEntity>;
}
export { CreateProductEntity };
