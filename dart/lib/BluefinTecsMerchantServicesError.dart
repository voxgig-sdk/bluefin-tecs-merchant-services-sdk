class BluefinTecsMerchantServicesError extends Error {
  final bool isBluefinTecsMerchantServicesError = true;

  final String sdk = 'BluefinTecsMerchantServices';

  String code;
  String message;
  dynamic ctx;

  // Populated by makeError with the (cleaned) result and spec.
  dynamic result;
  dynamic spec;

  BluefinTecsMerchantServicesError(this.code, this.message, [this.ctx]);

  @override
  String toString() => 'BluefinTecsMerchantServicesError: ' + code + ': ' + message;
}
