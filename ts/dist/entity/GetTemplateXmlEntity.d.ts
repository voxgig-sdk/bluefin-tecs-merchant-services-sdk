import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { GetTemplateXml, GetTemplateXmlCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class GetTemplateXmlEntity extends BluefinTecsMerchantServicesEntityBase<GetTemplateXml> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: GetTemplateXmlEntity): GetTemplateXmlEntity;
    create(this: any, reqdata?: GetTemplateXmlCreateData, ctrl?: Control): Promise<GetTemplateXmlEntity>;
}
export { GetTemplateXmlEntity };
