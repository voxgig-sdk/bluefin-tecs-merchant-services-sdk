# BluefinTecsMerchantServices SDK utility: make_context

from bluefintecsmerchantservices_sdk.core.context import BluefinTecsMerchantServicesContext


def make_context_util(ctxmap, basectx):
    return BluefinTecsMerchantServicesContext(ctxmap, basectx)
