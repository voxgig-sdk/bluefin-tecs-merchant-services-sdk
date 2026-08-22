import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { DeactivateTerminal, DeactivateTerminalCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class DeactivateTerminalEntity extends BluefinTecsMerchantServicesEntityBase<DeactivateTerminal> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: DeactivateTerminalEntity): DeactivateTerminalEntity;
    create(this: any, reqdata?: DeactivateTerminalCreateData, ctrl?: Control): Promise<DeactivateTerminalEntity>;
}
export { DeactivateTerminalEntity };
