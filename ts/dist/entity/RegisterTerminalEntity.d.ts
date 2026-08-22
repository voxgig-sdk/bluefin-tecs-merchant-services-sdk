import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { RegisterTerminal, RegisterTerminalCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class RegisterTerminalEntity extends BluefinTecsMerchantServicesEntityBase<RegisterTerminal> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: RegisterTerminalEntity): RegisterTerminalEntity;
    create(this: any, reqdata?: RegisterTerminalCreateData, ctrl?: Control): Promise<RegisterTerminalEntity>;
}
export { RegisterTerminalEntity };
