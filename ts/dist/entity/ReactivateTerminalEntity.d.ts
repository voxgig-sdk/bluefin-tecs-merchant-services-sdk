import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { ReactivateTerminal, ReactivateTerminalCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class ReactivateTerminalEntity extends BluefinTecsMerchantServicesEntityBase<ReactivateTerminal> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: ReactivateTerminalEntity): ReactivateTerminalEntity;
    create(this: any, reqdata?: ReactivateTerminalCreateData, ctrl?: Control): Promise<ReactivateTerminalEntity>;
}
export { ReactivateTerminalEntity };
