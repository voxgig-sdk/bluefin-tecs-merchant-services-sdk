# BluefinTecsMerchantServices SDK feature factory

from feature.base_feature import BluefinTecsMerchantServicesBaseFeature
from feature.test_feature import BluefinTecsMerchantServicesTestFeature


def _make_feature(name):
    features = {
        "base": lambda: BluefinTecsMerchantServicesBaseFeature(),
        "test": lambda: BluefinTecsMerchantServicesTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
