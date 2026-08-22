import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { TerminalId, TerminalIdCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class TerminalIdEntity extends BluefinTecsMerchantServicesEntityBase<TerminalId> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: TerminalIdEntity): TerminalIdEntity;
    create(this: any, reqdata?: TerminalIdCreateData, ctrl?: Control): Promise<TerminalIdEntity>;
}
export { TerminalIdEntity };
