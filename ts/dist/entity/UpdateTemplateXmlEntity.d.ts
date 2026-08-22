import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { UpdateTemplateXml, UpdateTemplateXmlCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class UpdateTemplateXmlEntity extends BluefinTecsMerchantServicesEntityBase<UpdateTemplateXml> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: UpdateTemplateXmlEntity): UpdateTemplateXmlEntity;
    create(this: any, reqdata?: UpdateTemplateXmlCreateData, ctrl?: Control): Promise<UpdateTemplateXmlEntity>;
}
export { UpdateTemplateXmlEntity };
