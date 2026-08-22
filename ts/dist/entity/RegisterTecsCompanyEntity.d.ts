import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { RegisterTecsCompany, RegisterTecsCompanyCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class RegisterTecsCompanyEntity extends BluefinTecsMerchantServicesEntityBase<RegisterTecsCompany> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: RegisterTecsCompanyEntity): RegisterTecsCompanyEntity;
    create(this: any, reqdata?: RegisterTecsCompanyCreateData, ctrl?: Control): Promise<RegisterTecsCompanyEntity>;
}
export { RegisterTecsCompanyEntity };
