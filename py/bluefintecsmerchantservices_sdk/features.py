# BluefinTecsMerchantServices SDK feature factory

from bluefintecsmerchantservices_sdk.feature.base_feature import BluefinTecsMerchantServicesBaseFeature
from bluefintecsmerchantservices_sdk.feature.audit_feature import BluefinTecsMerchantServicesAuditFeature
from bluefintecsmerchantservices_sdk.feature.clienttrack_feature import BluefinTecsMerchantServicesClienttrackFeature
from bluefintecsmerchantservices_sdk.feature.idempotency_feature import BluefinTecsMerchantServicesIdempotencyFeature
from bluefintecsmerchantservices_sdk.feature.log_feature import BluefinTecsMerchantServicesLogFeature
from bluefintecsmerchantservices_sdk.feature.metrics_feature import BluefinTecsMerchantServicesMetricsFeature
from bluefintecsmerchantservices_sdk.feature.paging_feature import BluefinTecsMerchantServicesPagingFeature
from bluefintecsmerchantservices_sdk.feature.ratelimit_feature import BluefinTecsMerchantServicesRatelimitFeature
from bluefintecsmerchantservices_sdk.feature.retry_feature import BluefinTecsMerchantServicesRetryFeature
from bluefintecsmerchantservices_sdk.feature.telemetry_feature import BluefinTecsMerchantServicesTelemetryFeature
from bluefintecsmerchantservices_sdk.feature.test_feature import BluefinTecsMerchantServicesTestFeature
from bluefintecsmerchantservices_sdk.feature.timeout_feature import BluefinTecsMerchantServicesTimeoutFeature


_FEATURES = {
    "base": lambda: BluefinTecsMerchantServicesBaseFeature(),
    "audit": lambda: BluefinTecsMerchantServicesAuditFeature(),
    "clienttrack": lambda: BluefinTecsMerchantServicesClienttrackFeature(),
    "idempotency": lambda: BluefinTecsMerchantServicesIdempotencyFeature(),
    "log": lambda: BluefinTecsMerchantServicesLogFeature(),
    "metrics": lambda: BluefinTecsMerchantServicesMetricsFeature(),
    "paging": lambda: BluefinTecsMerchantServicesPagingFeature(),
    "ratelimit": lambda: BluefinTecsMerchantServicesRatelimitFeature(),
    "retry": lambda: BluefinTecsMerchantServicesRetryFeature(),
    "telemetry": lambda: BluefinTecsMerchantServicesTelemetryFeature(),
    "test": lambda: BluefinTecsMerchantServicesTestFeature(),
    "timeout": lambda: BluefinTecsMerchantServicesTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
