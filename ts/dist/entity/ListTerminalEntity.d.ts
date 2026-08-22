import { BluefinTecsMerchantServicesEntityBase } from '../BluefinTecsMerchantServicesEntityBase';
import type { BluefinTecsMerchantServicesSDK } from '../BluefinTecsMerchantServicesSDK';
import type { Control } from '../types';
import type { ListTerminal, ListTerminalCreateData } from '../BluefinTecsMerchantServicesTypes';
declare class ListTerminalEntity extends BluefinTecsMerchantServicesEntityBase<ListTerminal> {
    constructor(client: BluefinTecsMerchantServicesSDK, entopts: any);
    make(this: ListTerminalEntity): ListTerminalEntity;
    create(this: any, reqdata?: ListTerminalCreateData, ctrl?: Control): Promise<ListTerminalEntity>;
}
export { ListTerminalEntity };
