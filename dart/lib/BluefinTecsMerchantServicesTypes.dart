// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON).
// Do not edit by hand.
//
// The operation pipeline passes plain maps; these classes are the typed,
// convertible view: `BluefinTecsMerchantServices.fromMap(ent.data())` / `model.toMap()`.

class CancelTransaction {
  /// STRING
  String? acquirerId;
  /// STRING
  String? acquirerName;
  /// STRING
  String? actualBonusPoints;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorizationCode;
  /// STRING
  String? balanceAmount;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardNumber;
  /// INTEGER (required at the API)
  int? clientId;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ecData;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvData;
  /// INTEGER
  int? exchangeFee;
  /// STRING
  String? exchangeRate;
  /// STRING
  String? languageCode;
  /// STRING
  String? merchantAddress;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? messageType;
  /// INTEGER
  int? originalTraceNumber;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptFooter;
  /// STRING
  String? receiptHeader;
  /// INTEGER
  int? receiptLayout;
  /// STRING (required at the API)
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? serialNumber;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// STRING
  String? txType;
  /// STRING
  String? userData;

  CancelTransaction({
    this.acquirerId,
    this.acquirerName,
    this.actualBonusPoints,
    this.amount,
    this.authorizationCode,
    this.balanceAmount,
    this.cardBrand,
    this.cardNumber,
    this.clientId,
    this.currency,
    this.cvc,
    this.ecData,
    this.ecrData,
    this.emvData,
    this.exchangeFee,
    this.exchangeRate,
    this.languageCode,
    this.merchantAddress,
    this.merchantName,
    this.merchantNumber,
    this.messageType,
    this.originalTraceNumber,
    this.originalTransactionId,
    this.password,
    this.paymentReason,
    this.receiptFooter,
    this.receiptHeader,
    this.receiptLayout,
    this.receiptNumber,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.svc,
    this.terminalId,
    this.terminalLocation,
    this.traceNumber,
    this.transactionDate,
    this.transactionId,
    this.txType,
    this.userData,
  });

  factory CancelTransaction.fromMap(Map<String, dynamic> m) => CancelTransaction(
        acquirerId: m['acquirerId'] is String ? m['acquirerId'] : null,
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        actualBonusPoints: m['actualBonusPoints'] is String ? m['actualBonusPoints'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        balanceAmount: m['balanceAmount'] is String ? m['balanceAmount'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ecData: m['ecData'] is String ? m['ecData'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvData: m['emvData'] is String ? m['emvData'] : null,
        exchangeFee: m['exchangeFee'] is int ? m['exchangeFee'] : null,
        exchangeRate: m['exchangeRate'] is String ? m['exchangeRate'] : null,
        languageCode: m['languageCode'] is String ? m['languageCode'] : null,
        merchantAddress: m['merchantAddress'] is String ? m['merchantAddress'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        messageType: m['messageType'] is String ? m['messageType'] : null,
        originalTraceNumber: m['originalTraceNumber'] is int ? m['originalTraceNumber'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptFooter: m['receiptFooter'] is String ? m['receiptFooter'] : null,
        receiptHeader: m['receiptHeader'] is String ? m['receiptHeader'] : null,
        receiptLayout: m['receiptLayout'] is int ? m['receiptLayout'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        txType: m['txType'] is String ? m['txType'] : null,
        userData: m['userData'] is String ? m['userData'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != actualBonusPoints) {
      m['actualBonusPoints'] = actualBonusPoints;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != balanceAmount) {
      m['balanceAmount'] = balanceAmount;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ecData) {
      m['ecData'] = ecData;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != exchangeFee) {
      m['exchangeFee'] = exchangeFee;
    }
    if (null != exchangeRate) {
      m['exchangeRate'] = exchangeRate;
    }
    if (null != languageCode) {
      m['languageCode'] = languageCode;
    }
    if (null != merchantAddress) {
      m['merchantAddress'] = merchantAddress;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != messageType) {
      m['messageType'] = messageType;
    }
    if (null != originalTraceNumber) {
      m['originalTraceNumber'] = originalTraceNumber;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptFooter) {
      m['receiptFooter'] = receiptFooter;
    }
    if (null != receiptHeader) {
      m['receiptHeader'] = receiptHeader;
    }
    if (null != receiptLayout) {
      m['receiptLayout'] = receiptLayout;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != txType) {
      m['txType'] = txType;
    }
    if (null != userData) {
      m['userData'] = userData;
    }
    return m;
  }
}

class CancelTransactionCreateData {
  /// STRING
  String? acquirerId;
  /// STRING
  String? acquirerName;
  /// STRING
  String? actualBonusPoints;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorizationCode;
  /// STRING
  String? balanceAmount;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardNumber;
  /// INTEGER (required at the API)
  int? clientId;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ecData;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvData;
  /// INTEGER
  int? exchangeFee;
  /// STRING
  String? exchangeRate;
  /// STRING
  String? languageCode;
  /// STRING
  String? merchantAddress;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? messageType;
  /// INTEGER
  int? originalTraceNumber;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptFooter;
  /// STRING
  String? receiptHeader;
  /// INTEGER
  int? receiptLayout;
  /// STRING (required at the API)
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? serialNumber;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// STRING
  String? txType;
  /// STRING
  String? userData;

  CancelTransactionCreateData({
    this.acquirerId,
    this.acquirerName,
    this.actualBonusPoints,
    this.amount,
    this.authorizationCode,
    this.balanceAmount,
    this.cardBrand,
    this.cardNumber,
    this.clientId,
    this.currency,
    this.cvc,
    this.ecData,
    this.ecrData,
    this.emvData,
    this.exchangeFee,
    this.exchangeRate,
    this.languageCode,
    this.merchantAddress,
    this.merchantName,
    this.merchantNumber,
    this.messageType,
    this.originalTraceNumber,
    this.originalTransactionId,
    this.password,
    this.paymentReason,
    this.receiptFooter,
    this.receiptHeader,
    this.receiptLayout,
    this.receiptNumber,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.svc,
    this.terminalId,
    this.terminalLocation,
    this.traceNumber,
    this.transactionDate,
    this.transactionId,
    this.txType,
    this.userData,
  });

  factory CancelTransactionCreateData.fromMap(Map<String, dynamic> m) => CancelTransactionCreateData(
        acquirerId: m['acquirerId'] is String ? m['acquirerId'] : null,
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        actualBonusPoints: m['actualBonusPoints'] is String ? m['actualBonusPoints'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        balanceAmount: m['balanceAmount'] is String ? m['balanceAmount'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ecData: m['ecData'] is String ? m['ecData'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvData: m['emvData'] is String ? m['emvData'] : null,
        exchangeFee: m['exchangeFee'] is int ? m['exchangeFee'] : null,
        exchangeRate: m['exchangeRate'] is String ? m['exchangeRate'] : null,
        languageCode: m['languageCode'] is String ? m['languageCode'] : null,
        merchantAddress: m['merchantAddress'] is String ? m['merchantAddress'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        messageType: m['messageType'] is String ? m['messageType'] : null,
        originalTraceNumber: m['originalTraceNumber'] is int ? m['originalTraceNumber'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptFooter: m['receiptFooter'] is String ? m['receiptFooter'] : null,
        receiptHeader: m['receiptHeader'] is String ? m['receiptHeader'] : null,
        receiptLayout: m['receiptLayout'] is int ? m['receiptLayout'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        txType: m['txType'] is String ? m['txType'] : null,
        userData: m['userData'] is String ? m['userData'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != actualBonusPoints) {
      m['actualBonusPoints'] = actualBonusPoints;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != balanceAmount) {
      m['balanceAmount'] = balanceAmount;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ecData) {
      m['ecData'] = ecData;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != exchangeFee) {
      m['exchangeFee'] = exchangeFee;
    }
    if (null != exchangeRate) {
      m['exchangeRate'] = exchangeRate;
    }
    if (null != languageCode) {
      m['languageCode'] = languageCode;
    }
    if (null != merchantAddress) {
      m['merchantAddress'] = merchantAddress;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != messageType) {
      m['messageType'] = messageType;
    }
    if (null != originalTraceNumber) {
      m['originalTraceNumber'] = originalTraceNumber;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptFooter) {
      m['receiptFooter'] = receiptFooter;
    }
    if (null != receiptHeader) {
      m['receiptHeader'] = receiptHeader;
    }
    if (null != receiptLayout) {
      m['receiptLayout'] = receiptLayout;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != txType) {
      m['txType'] = txType;
    }
    if (null != userData) {
      m['userData'] = userData;
    }
    return m;
  }
}

class CheckCardBlackListed {
  /// STRING
  String? cardNo;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  CheckCardBlackListed({
    this.cardNo,
    this.responseCode,
    this.responseMessage,
  });

  factory CheckCardBlackListed.fromMap(Map<String, dynamic> m) => CheckCardBlackListed(
        cardNo: m['cardNo'] is String ? m['cardNo'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != cardNo) {
      m['cardNo'] = cardNo;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class CheckCardBlackListedCreateData {
  /// STRING
  String? cardNo;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  CheckCardBlackListedCreateData({
    this.cardNo,
    this.responseCode,
    this.responseMessage,
  });

  factory CheckCardBlackListedCreateData.fromMap(Map<String, dynamic> m) => CheckCardBlackListedCreateData(
        cardNo: m['cardNo'] is String ? m['cardNo'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != cardNo) {
      m['cardNo'] = cardNo;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class CreateProduct {
  /// INTEGER
  int? acquirerId;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;
  /// STRING (required at the API)
  String? templateType;
  /// STRING (required at the API)
  String? templateXml;
  /// STRING (required at the API)
  String? terminalType;

  CreateProduct({
    this.acquirerId,
    this.responseCode,
    this.responseMessage,
    this.templateName,
    this.templateType,
    this.templateXml,
    this.terminalType,
  });

  factory CreateProduct.fromMap(Map<String, dynamic> m) => CreateProduct(
        acquirerId: m['acquirerId'] is int ? m['acquirerId'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        templateType: m['templateType'] is String ? m['templateType'] : null,
        templateXml: m['templateXml'] is String ? m['templateXml'] : null,
        terminalType: m['terminalType'] is String ? m['terminalType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != templateType) {
      m['templateType'] = templateType;
    }
    if (null != templateXml) {
      m['templateXml'] = templateXml;
    }
    if (null != terminalType) {
      m['terminalType'] = terminalType;
    }
    return m;
  }
}

class CreateProductCreateData {
  /// INTEGER
  int? acquirerId;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;
  /// STRING (required at the API)
  String? templateType;
  /// STRING (required at the API)
  String? templateXml;
  /// STRING (required at the API)
  String? terminalType;

  CreateProductCreateData({
    this.acquirerId,
    this.responseCode,
    this.responseMessage,
    this.templateName,
    this.templateType,
    this.templateXml,
    this.terminalType,
  });

  factory CreateProductCreateData.fromMap(Map<String, dynamic> m) => CreateProductCreateData(
        acquirerId: m['acquirerId'] is int ? m['acquirerId'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        templateType: m['templateType'] is String ? m['templateType'] : null,
        templateXml: m['templateXml'] is String ? m['templateXml'] : null,
        terminalType: m['terminalType'] is String ? m['terminalType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != templateType) {
      m['templateType'] = templateType;
    }
    if (null != templateXml) {
      m['templateXml'] = templateXml;
    }
    if (null != terminalType) {
      m['terminalType'] = terminalType;
    }
    return m;
  }
}

class DeactivateTerminal {
  /// STRING
  String? corporateUuid;
  /// STRING (required at the API)
  String? deactivationReason;
  /// STRING
  String? packageOrderUuid;
  /// STRING
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;

  DeactivateTerminal({
    this.corporateUuid,
    this.deactivationReason,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
  });

  factory DeactivateTerminal.fromMap(Map<String, dynamic> m) => DeactivateTerminal(
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        deactivationReason: m['deactivationReason'] is String ? m['deactivationReason'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != deactivationReason) {
      m['deactivationReason'] = deactivationReason;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class DeactivateTerminalCreateData {
  /// STRING
  String? corporateUuid;
  /// STRING (required at the API)
  String? deactivationReason;
  /// STRING
  String? packageOrderUuid;
  /// STRING
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;

  DeactivateTerminalCreateData({
    this.corporateUuid,
    this.deactivationReason,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
  });

  factory DeactivateTerminalCreateData.fromMap(Map<String, dynamic> m) => DeactivateTerminalCreateData(
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        deactivationReason: m['deactivationReason'] is String ? m['deactivationReason'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != deactivationReason) {
      m['deactivationReason'] = deactivationReason;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class DigitalServicesApi {
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER
  int? txCount;
  /// STRING
  String? txIdEnd;
  /// STRING
  String? txIdStart;
  /// INTEGER
  int? txSeqNoEnd;
  /// INTEGER
  int? txSeqNoStart;
  /// INTEGER
  int? txTotal;

  DigitalServicesApi({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.responseCode,
    this.responseMessage,
    this.txCount,
    this.txIdEnd,
    this.txIdStart,
    this.txSeqNoEnd,
    this.txSeqNoStart,
    this.txTotal,
  });

  factory DigitalServicesApi.fromMap(Map<String, dynamic> m) => DigitalServicesApi(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        txCount: m['txCount'] is int ? m['txCount'] : null,
        txIdEnd: m['txIdEnd'] is String ? m['txIdEnd'] : null,
        txIdStart: m['txIdStart'] is String ? m['txIdStart'] : null,
        txSeqNoEnd: m['txSeqNoEnd'] is int ? m['txSeqNoEnd'] : null,
        txSeqNoStart: m['txSeqNoStart'] is int ? m['txSeqNoStart'] : null,
        txTotal: m['txTotal'] is int ? m['txTotal'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != txCount) {
      m['txCount'] = txCount;
    }
    if (null != txIdEnd) {
      m['txIdEnd'] = txIdEnd;
    }
    if (null != txIdStart) {
      m['txIdStart'] = txIdStart;
    }
    if (null != txSeqNoEnd) {
      m['txSeqNoEnd'] = txSeqNoEnd;
    }
    if (null != txSeqNoStart) {
      m['txSeqNoStart'] = txSeqNoStart;
    }
    if (null != txTotal) {
      m['txTotal'] = txTotal;
    }
    return m;
  }
}

class DigitalServicesApiLoadMatch {
  /// STRING
  String? clearingDateFrom;
  /// STRING
  String? clearingDateTo;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER
  int? txCount;
  /// STRING
  String? txIdEnd;
  /// STRING
  String? txIdStart;
  /// INTEGER
  int? txSeqNoEnd;
  /// INTEGER
  int? txSeqNoStart;
  /// INTEGER
  int? txTotal;

  DigitalServicesApiLoadMatch({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.responseCode,
    this.responseMessage,
    this.txCount,
    this.txIdEnd,
    this.txIdStart,
    this.txSeqNoEnd,
    this.txSeqNoStart,
    this.txTotal,
  });

  factory DigitalServicesApiLoadMatch.fromMap(Map<String, dynamic> m) => DigitalServicesApiLoadMatch(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        txCount: m['txCount'] is int ? m['txCount'] : null,
        txIdEnd: m['txIdEnd'] is String ? m['txIdEnd'] : null,
        txIdStart: m['txIdStart'] is String ? m['txIdStart'] : null,
        txSeqNoEnd: m['txSeqNoEnd'] is int ? m['txSeqNoEnd'] : null,
        txSeqNoStart: m['txSeqNoStart'] is int ? m['txSeqNoStart'] : null,
        txTotal: m['txTotal'] is int ? m['txTotal'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != txCount) {
      m['txCount'] = txCount;
    }
    if (null != txIdEnd) {
      m['txIdEnd'] = txIdEnd;
    }
    if (null != txIdStart) {
      m['txIdStart'] = txIdStart;
    }
    if (null != txSeqNoEnd) {
      m['txSeqNoEnd'] = txSeqNoEnd;
    }
    if (null != txSeqNoStart) {
      m['txSeqNoStart'] = txSeqNoStart;
    }
    if (null != txTotal) {
      m['txTotal'] = txTotal;
    }
    return m;
  }
}

class DigitalServicesApiCreateData {
  /// STRING
  String? file_id;
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER
  int? txCount;
  /// STRING
  String? txIdEnd;
  /// STRING
  String? txIdStart;
  /// INTEGER
  int? txSeqNoEnd;
  /// INTEGER
  int? txSeqNoStart;
  /// INTEGER
  int? txTotal;

  DigitalServicesApiCreateData({
    this.file_id,
    this.clearingDateFrom,
    this.clearingDateTo,
    this.responseCode,
    this.responseMessage,
    this.txCount,
    this.txIdEnd,
    this.txIdStart,
    this.txSeqNoEnd,
    this.txSeqNoStart,
    this.txTotal,
  });

  factory DigitalServicesApiCreateData.fromMap(Map<String, dynamic> m) => DigitalServicesApiCreateData(
        file_id: m['file_id'] is String ? m['file_id'] : null,
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        txCount: m['txCount'] is int ? m['txCount'] : null,
        txIdEnd: m['txIdEnd'] is String ? m['txIdEnd'] : null,
        txIdStart: m['txIdStart'] is String ? m['txIdStart'] : null,
        txSeqNoEnd: m['txSeqNoEnd'] is int ? m['txSeqNoEnd'] : null,
        txSeqNoStart: m['txSeqNoStart'] is int ? m['txSeqNoStart'] : null,
        txTotal: m['txTotal'] is int ? m['txTotal'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != file_id) {
      m['file_id'] = file_id;
    }
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != txCount) {
      m['txCount'] = txCount;
    }
    if (null != txIdEnd) {
      m['txIdEnd'] = txIdEnd;
    }
    if (null != txIdStart) {
      m['txIdStart'] = txIdStart;
    }
    if (null != txSeqNoEnd) {
      m['txSeqNoEnd'] = txSeqNoEnd;
    }
    if (null != txSeqNoStart) {
      m['txSeqNoStart'] = txSeqNoStart;
    }
    if (null != txTotal) {
      m['txTotal'] = txTotal;
    }
    return m;
  }
}

class EcDataEcom {
  /// STRING
  String? ecomData;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING (required at the API)
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;

  EcDataEcom({
    this.ecomData,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.transactionType,
  });

  factory EcDataEcom.fromMap(Map<String, dynamic> m) => EcDataEcom(
        ecomData: m['ecomData'] is String ? m['ecomData'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecomData) {
      m['ecomData'] = ecomData;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class EcDataEcomCreateData {
  /// STRING
  String? ecomData;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING (required at the API)
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;

  EcDataEcomCreateData({
    this.ecomData,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.transactionType,
  });

  factory EcDataEcomCreateData.fromMap(Map<String, dynamic> m) => EcDataEcomCreateData(
        ecomData: m['ecomData'] is String ? m['ecomData'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecomData) {
      m['ecomData'] = ecomData;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class EcomParameter {
  /// STRING
  String? ecomPass;
  /// STRING
  String? ecomSkey;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;

  EcomParameter({
    this.ecomPass,
    this.ecomSkey,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
  });

  factory EcomParameter.fromMap(Map<String, dynamic> m) => EcomParameter(
        ecomPass: m['ecomPass'] is String ? m['ecomPass'] : null,
        ecomSkey: m['ecomSkey'] is String ? m['ecomSkey'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecomPass) {
      m['ecomPass'] = ecomPass;
    }
    if (null != ecomSkey) {
      m['ecomSkey'] = ecomSkey;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class EcomParameterCreateData {
  /// STRING
  String? ecomPass;
  /// STRING
  String? ecomSkey;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;

  EcomParameterCreateData({
    this.ecomPass,
    this.ecomSkey,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
  });

  factory EcomParameterCreateData.fromMap(Map<String, dynamic> m) => EcomParameterCreateData(
        ecomPass: m['ecomPass'] is String ? m['ecomPass'] : null,
        ecomSkey: m['ecomSkey'] is String ? m['ecomSkey'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecomPass) {
      m['ecomPass'] = ecomPass;
    }
    if (null != ecomSkey) {
      m['ecomSkey'] = ecomSkey;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class EcrData {
  /// STRING
  String? ecrData;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING (required at the API)
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;

  EcrData({
    this.ecrData,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.transactionType,
  });

  factory EcrData.fromMap(Map<String, dynamic> m) => EcrData(
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class EcrDataCreateData {
  /// STRING
  String? ecrData;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING (required at the API)
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;

  EcrDataCreateData({
    this.ecrData,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.transactionType,
  });

  factory EcrDataCreateData.fromMap(Map<String, dynamic> m) => EcrDataCreateData(
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class EmvData {
  /// STRING
  String? emvData;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING (required at the API)
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;

  EmvData({
    this.emvData,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.transactionType,
  });

  factory EmvData.fromMap(Map<String, dynamic> m) => EmvData(
        emvData: m['emvData'] is String ? m['emvData'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class EmvDataCreateData {
  /// STRING
  String? emvData;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING (required at the API)
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;

  EmvDataCreateData({
    this.emvData,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.transactionType,
  });

  factory EmvDataCreateData.fromMap(Map<String, dynamic> m) => EmvDataCreateData(
        emvData: m['emvData'] is String ? m['emvData'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class EnableAcquiring {
  /// INTEGER
  int? accountNo;
  /// OBJECT
  Map<String, dynamic>? additionalData;
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER (required at the API)
  int? merchantCategoryCode;
  /// STRING (required at the API)
  String? packageOrderUuid;
  /// STRING (required at the API)
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER
  int? sortingCode;
  /// STRING (required at the API)
  String? templateName;
  /// STRING
  String? terminalIdAcq;
  /// ARRAY
  List<dynamic>? terminalIds;
  /// STRING
  String? vuNummer;

  EnableAcquiring({
    this.accountNo,
    this.additionalData,
    this.corporateUuid,
    this.currency,
    this.merchantCategoryCode,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.sortingCode,
    this.templateName,
    this.terminalIdAcq,
    this.terminalIds,
    this.vuNummer,
  });

  factory EnableAcquiring.fromMap(Map<String, dynamic> m) => EnableAcquiring(
        accountNo: m['accountNo'] is int ? m['accountNo'] : null,
        additionalData: m['additionalData'] is Map<String, dynamic> ? m['additionalData'] : null,
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        merchantCategoryCode: m['merchantCategoryCode'] is int ? m['merchantCategoryCode'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sortingCode: m['sortingCode'] is int ? m['sortingCode'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        terminalIdAcq: m['terminalIdAcq'] is String ? m['terminalIdAcq'] : null,
        terminalIds: m['terminalIds'] is List<dynamic> ? m['terminalIds'] : null,
        vuNummer: m['vuNummer'] is String ? m['vuNummer'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != accountNo) {
      m['accountNo'] = accountNo;
    }
    if (null != additionalData) {
      m['additionalData'] = additionalData;
    }
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != merchantCategoryCode) {
      m['merchantCategoryCode'] = merchantCategoryCode;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sortingCode) {
      m['sortingCode'] = sortingCode;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != terminalIdAcq) {
      m['terminalIdAcq'] = terminalIdAcq;
    }
    if (null != terminalIds) {
      m['terminalIds'] = terminalIds;
    }
    if (null != vuNummer) {
      m['vuNummer'] = vuNummer;
    }
    return m;
  }
}

class EnableAcquiringCreateData {
  /// INTEGER
  int? accountNo;
  /// OBJECT
  Map<String, dynamic>? additionalData;
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER (required at the API)
  int? merchantCategoryCode;
  /// STRING (required at the API)
  String? packageOrderUuid;
  /// STRING (required at the API)
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER
  int? sortingCode;
  /// STRING (required at the API)
  String? templateName;
  /// STRING
  String? terminalIdAcq;
  /// ARRAY
  List<dynamic>? terminalIds;
  /// STRING
  String? vuNummer;

  EnableAcquiringCreateData({
    this.accountNo,
    this.additionalData,
    this.corporateUuid,
    this.currency,
    this.merchantCategoryCode,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.sortingCode,
    this.templateName,
    this.terminalIdAcq,
    this.terminalIds,
    this.vuNummer,
  });

  factory EnableAcquiringCreateData.fromMap(Map<String, dynamic> m) => EnableAcquiringCreateData(
        accountNo: m['accountNo'] is int ? m['accountNo'] : null,
        additionalData: m['additionalData'] is Map<String, dynamic> ? m['additionalData'] : null,
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        merchantCategoryCode: m['merchantCategoryCode'] is int ? m['merchantCategoryCode'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sortingCode: m['sortingCode'] is int ? m['sortingCode'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        terminalIdAcq: m['terminalIdAcq'] is String ? m['terminalIdAcq'] : null,
        terminalIds: m['terminalIds'] is List<dynamic> ? m['terminalIds'] : null,
        vuNummer: m['vuNummer'] is String ? m['vuNummer'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != accountNo) {
      m['accountNo'] = accountNo;
    }
    if (null != additionalData) {
      m['additionalData'] = additionalData;
    }
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != merchantCategoryCode) {
      m['merchantCategoryCode'] = merchantCategoryCode;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sortingCode) {
      m['sortingCode'] = sortingCode;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != terminalIdAcq) {
      m['terminalIdAcq'] = terminalIdAcq;
    }
    if (null != terminalIds) {
      m['terminalIds'] = terminalIds;
    }
    if (null != vuNummer) {
      m['vuNummer'] = vuNummer;
    }
    return m;
  }
}

class GetMerchantContractNumber {
  /// STRING (required at the API)
  String? merchantContractNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  GetMerchantContractNumber({
    this.merchantContractNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory GetMerchantContractNumber.fromMap(Map<String, dynamic> m) => GetMerchantContractNumber(
        merchantContractNumber: m['merchantContractNumber'] is String ? m['merchantContractNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != merchantContractNumber) {
      m['merchantContractNumber'] = merchantContractNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class GetMerchantContractNumberCreateData {
  /// STRING (required at the API)
  String? merchantContractNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  GetMerchantContractNumberCreateData({
    this.merchantContractNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory GetMerchantContractNumberCreateData.fromMap(Map<String, dynamic> m) => GetMerchantContractNumberCreateData(
        merchantContractNumber: m['merchantContractNumber'] is String ? m['merchantContractNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != merchantContractNumber) {
      m['merchantContractNumber'] = merchantContractNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class GetTemplateXml {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;

  GetTemplateXml({
    this.responseCode,
    this.responseMessage,
    this.templateName,
  });

  factory GetTemplateXml.fromMap(Map<String, dynamic> m) => GetTemplateXml(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    return m;
  }
}

class GetTemplateXmlCreateData {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;

  GetTemplateXmlCreateData({
    this.responseCode,
    this.responseMessage,
    this.templateName,
  });

  factory GetTemplateXmlCreateData.fromMap(Map<String, dynamic> m) => GetTemplateXmlCreateData(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    return m;
  }
}

class IntroduceMandator {
  /// STRING (required at the API)
  String? mandatorName;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  IntroduceMandator({
    this.mandatorName,
    this.responseCode,
    this.responseMessage,
  });

  factory IntroduceMandator.fromMap(Map<String, dynamic> m) => IntroduceMandator(
        mandatorName: m['mandatorName'] is String ? m['mandatorName'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandatorName) {
      m['mandatorName'] = mandatorName;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class IntroduceMandatorCreateData {
  /// STRING (required at the API)
  String? mandatorName;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  IntroduceMandatorCreateData({
    this.mandatorName,
    this.responseCode,
    this.responseMessage,
  });

  factory IntroduceMandatorCreateData.fromMap(Map<String, dynamic> m) => IntroduceMandatorCreateData(
        mandatorName: m['mandatorName'] is String ? m['mandatorName'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandatorName) {
      m['mandatorName'] = mandatorName;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class IntroducePackage {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? terminalTemplateDescription;

  IntroducePackage({
    this.responseCode,
    this.responseMessage,
    this.terminalTemplateDescription,
  });

  factory IntroducePackage.fromMap(Map<String, dynamic> m) => IntroducePackage(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalTemplateDescription: m['terminalTemplateDescription'] is String ? m['terminalTemplateDescription'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalTemplateDescription) {
      m['terminalTemplateDescription'] = terminalTemplateDescription;
    }
    return m;
  }
}

class IntroducePackageCreateData {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? terminalTemplateDescription;

  IntroducePackageCreateData({
    this.responseCode,
    this.responseMessage,
    this.terminalTemplateDescription,
  });

  factory IntroducePackageCreateData.fromMap(Map<String, dynamic> m) => IntroducePackageCreateData(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalTemplateDescription: m['terminalTemplateDescription'] is String ? m['terminalTemplateDescription'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalTemplateDescription) {
      m['terminalTemplateDescription'] = terminalTemplateDescription;
    }
    return m;
  }
}

class KeepAlive {
  /// STRING
  String? hwserialno;
  /// STRING
  String? kaDateTimeFrom;
  /// STRING
  String? kaDateTimeTo;
  /// ARRAY
  List<dynamic>? keepAliveData;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? terminalDateTimeFrom;
  /// STRING
  String? terminalDateTimeTo;
  /// INTEGER
  int? terminalId;

  KeepAlive({
    this.hwserialno,
    this.kaDateTimeFrom,
    this.kaDateTimeTo,
    this.keepAliveData,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.terminalDateTimeFrom,
    this.terminalDateTimeTo,
    this.terminalId,
  });

  factory KeepAlive.fromMap(Map<String, dynamic> m) => KeepAlive(
        hwserialno: m['hwserialno'] is String ? m['hwserialno'] : null,
        kaDateTimeFrom: m['kaDateTimeFrom'] is String ? m['kaDateTimeFrom'] : null,
        kaDateTimeTo: m['kaDateTimeTo'] is String ? m['kaDateTimeTo'] : null,
        keepAliveData: m['keepAliveData'] is List<dynamic> ? m['keepAliveData'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalDateTimeFrom: m['terminalDateTimeFrom'] is String ? m['terminalDateTimeFrom'] : null,
        terminalDateTimeTo: m['terminalDateTimeTo'] is String ? m['terminalDateTimeTo'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != hwserialno) {
      m['hwserialno'] = hwserialno;
    }
    if (null != kaDateTimeFrom) {
      m['kaDateTimeFrom'] = kaDateTimeFrom;
    }
    if (null != kaDateTimeTo) {
      m['kaDateTimeTo'] = kaDateTimeTo;
    }
    if (null != keepAliveData) {
      m['keepAliveData'] = keepAliveData;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalDateTimeFrom) {
      m['terminalDateTimeFrom'] = terminalDateTimeFrom;
    }
    if (null != terminalDateTimeTo) {
      m['terminalDateTimeTo'] = terminalDateTimeTo;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class KeepAliveCreateData {
  /// STRING
  String? hwserialno;
  /// STRING
  String? kaDateTimeFrom;
  /// STRING
  String? kaDateTimeTo;
  /// ARRAY
  List<dynamic>? keepAliveData;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? terminalDateTimeFrom;
  /// STRING
  String? terminalDateTimeTo;
  /// INTEGER
  int? terminalId;

  KeepAliveCreateData({
    this.hwserialno,
    this.kaDateTimeFrom,
    this.kaDateTimeTo,
    this.keepAliveData,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.terminalDateTimeFrom,
    this.terminalDateTimeTo,
    this.terminalId,
  });

  factory KeepAliveCreateData.fromMap(Map<String, dynamic> m) => KeepAliveCreateData(
        hwserialno: m['hwserialno'] is String ? m['hwserialno'] : null,
        kaDateTimeFrom: m['kaDateTimeFrom'] is String ? m['kaDateTimeFrom'] : null,
        kaDateTimeTo: m['kaDateTimeTo'] is String ? m['kaDateTimeTo'] : null,
        keepAliveData: m['keepAliveData'] is List<dynamic> ? m['keepAliveData'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalDateTimeFrom: m['terminalDateTimeFrom'] is String ? m['terminalDateTimeFrom'] : null,
        terminalDateTimeTo: m['terminalDateTimeTo'] is String ? m['terminalDateTimeTo'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != hwserialno) {
      m['hwserialno'] = hwserialno;
    }
    if (null != kaDateTimeFrom) {
      m['kaDateTimeFrom'] = kaDateTimeFrom;
    }
    if (null != kaDateTimeTo) {
      m['kaDateTimeTo'] = kaDateTimeTo;
    }
    if (null != keepAliveData) {
      m['keepAliveData'] = keepAliveData;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalDateTimeFrom) {
      m['terminalDateTimeFrom'] = terminalDateTimeFrom;
    }
    if (null != terminalDateTimeTo) {
      m['terminalDateTimeTo'] = terminalDateTimeTo;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class ListTerminal {
  /// ARRAY
  List<dynamic>? corporateUuid;
  /// OBJECT
  Map<String, dynamic>? filter;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY
  List<dynamic>? terminals;

  ListTerminal({
    this.corporateUuid,
    this.filter,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.terminals,
  });

  factory ListTerminal.fromMap(Map<String, dynamic> m) => ListTerminal(
        corporateUuid: m['corporateUuid'] is List<dynamic> ? m['corporateUuid'] : null,
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminals: m['terminals'] is List<dynamic> ? m['terminals'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminals) {
      m['terminals'] = terminals;
    }
    return m;
  }
}

class ListTerminalCreateData {
  /// ARRAY
  List<dynamic>? corporateUuid;
  /// OBJECT
  Map<String, dynamic>? filter;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY
  List<dynamic>? terminals;

  ListTerminalCreateData({
    this.corporateUuid,
    this.filter,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.terminals,
  });

  factory ListTerminalCreateData.fromMap(Map<String, dynamic> m) => ListTerminalCreateData(
        corporateUuid: m['corporateUuid'] is List<dynamic> ? m['corporateUuid'] : null,
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminals: m['terminals'] is List<dynamic> ? m['terminals'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminals) {
      m['terminals'] = terminals;
    }
    return m;
  }
}

class MandatorClearingExport {
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// ARRAY
  List<dynamic>? records;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  MandatorClearingExport({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.pagination,
    this.records,
    this.responseCode,
    this.responseMessage,
  });

  factory MandatorClearingExport.fromMap(Map<String, dynamic> m) => MandatorClearingExport(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        records: m['records'] is List<dynamic> ? m['records'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != records) {
      m['records'] = records;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class MandatorClearingExportCreateData {
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// ARRAY
  List<dynamic>? records;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  MandatorClearingExportCreateData({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.pagination,
    this.records,
    this.responseCode,
    this.responseMessage,
  });

  factory MandatorClearingExportCreateData.fromMap(Map<String, dynamic> m) => MandatorClearingExportCreateData(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        records: m['records'] is List<dynamic> ? m['records'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != records) {
      m['records'] = records;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class MandatorClearingExportDownload {
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// STRING
  String? fileId;
  /// STRING
  String? filenameTemplate;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? status;

  MandatorClearingExportDownload({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.fileId,
    this.filenameTemplate,
    this.responseCode,
    this.responseMessage,
    this.status,
  });

  factory MandatorClearingExportDownload.fromMap(Map<String, dynamic> m) => MandatorClearingExportDownload(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        fileId: m['fileId'] is String ? m['fileId'] : null,
        filenameTemplate: m['filenameTemplate'] is String ? m['filenameTemplate'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        status: m['status'] is String ? m['status'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != fileId) {
      m['fileId'] = fileId;
    }
    if (null != filenameTemplate) {
      m['filenameTemplate'] = filenameTemplate;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != status) {
      m['status'] = status;
    }
    return m;
  }
}

class MandatorClearingExportDownloadLoadMatch {
  /// STRING (required at the API)
  String? id;

  MandatorClearingExportDownloadLoadMatch({
    this.id,
  });

  factory MandatorClearingExportDownloadLoadMatch.fromMap(Map<String, dynamic> m) => MandatorClearingExportDownloadLoadMatch(
        id: m['id'] is String ? m['id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != id) {
      m['id'] = id;
    }
    return m;
  }
}

class MandatorClearingExportDownloadCreateData {
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// STRING
  String? fileId;
  /// STRING
  String? filenameTemplate;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? status;

  MandatorClearingExportDownloadCreateData({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.fileId,
    this.filenameTemplate,
    this.responseCode,
    this.responseMessage,
    this.status,
  });

  factory MandatorClearingExportDownloadCreateData.fromMap(Map<String, dynamic> m) => MandatorClearingExportDownloadCreateData(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        fileId: m['fileId'] is String ? m['fileId'] : null,
        filenameTemplate: m['filenameTemplate'] is String ? m['filenameTemplate'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        status: m['status'] is String ? m['status'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != fileId) {
      m['fileId'] = fileId;
    }
    if (null != filenameTemplate) {
      m['filenameTemplate'] = filenameTemplate;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != status) {
      m['status'] = status;
    }
    return m;
  }
}

class MandatorClearingExportSummary {
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// ARRAY
  List<dynamic>? records;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  MandatorClearingExportSummary({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.records,
    this.responseCode,
    this.responseMessage,
  });

  factory MandatorClearingExportSummary.fromMap(Map<String, dynamic> m) => MandatorClearingExportSummary(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        records: m['records'] is List<dynamic> ? m['records'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != records) {
      m['records'] = records;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class MandatorClearingExportSummaryCreateData {
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// ARRAY
  List<dynamic>? records;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  MandatorClearingExportSummaryCreateData({
    this.clearingDateFrom,
    this.clearingDateTo,
    this.records,
    this.responseCode,
    this.responseMessage,
  });

  factory MandatorClearingExportSummaryCreateData.fromMap(Map<String, dynamic> m) => MandatorClearingExportSummaryCreateData(
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        records: m['records'] is List<dynamic> ? m['records'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != records) {
      m['records'] = records;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class MerchantPortalServicesApi {
  /// STRING
  String? authorizationCode;
  /// STRING
  String? cardBrand;
  /// STRING
  String? clearingAmountFrom;
  /// STRING
  String? clearingAmountTo;
  /// STRING
  String? clearingCurrency;
  /// STRING
  String? clearingStatus;
  /// STRING
  String? corporateUUID;
  /// STRING
  String? orderByTransactionDate;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? receiptNumber;
  /// STRING
  String? referencedTransactionId;
  /// STRING
  String? retrievalReferenceNumber;
  /// INTEGER
  int? sourceId;
  /// STRING
  String? tecsengineResponseCodeFrom;
  /// STRING
  String? tecsengineResponseCodeTo;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? traceNumber;
  /// STRING
  String? transactionAmountFrom;
  /// STRING
  String? transactionAmountTo;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// STRING
  String? transactionId;
  /// STRING
  String? transactionType;
  /// STRING
  String? wallet;

  MerchantPortalServicesApi({
    this.authorizationCode,
    this.cardBrand,
    this.clearingAmountFrom,
    this.clearingAmountTo,
    this.clearingCurrency,
    this.clearingStatus,
    this.corporateUUID,
    this.orderByTransactionDate,
    this.pagination,
    this.receiptNumber,
    this.referencedTransactionId,
    this.retrievalReferenceNumber,
    this.sourceId,
    this.tecsengineResponseCodeFrom,
    this.tecsengineResponseCodeTo,
    this.terminalId,
    this.traceNumber,
    this.transactionAmountFrom,
    this.transactionAmountTo,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionId,
    this.transactionType,
    this.wallet,
  });

  factory MerchantPortalServicesApi.fromMap(Map<String, dynamic> m) => MerchantPortalServicesApi(
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        clearingAmountFrom: m['clearingAmountFrom'] is String ? m['clearingAmountFrom'] : null,
        clearingAmountTo: m['clearingAmountTo'] is String ? m['clearingAmountTo'] : null,
        clearingCurrency: m['clearingCurrency'] is String ? m['clearingCurrency'] : null,
        clearingStatus: m['clearingStatus'] is String ? m['clearingStatus'] : null,
        corporateUUID: m['corporateUUID'] is String ? m['corporateUUID'] : null,
        orderByTransactionDate: m['orderByTransactionDate'] is String ? m['orderByTransactionDate'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        referencedTransactionId: m['referencedTransactionId'] is String ? m['referencedTransactionId'] : null,
        retrievalReferenceNumber: m['retrievalReferenceNumber'] is String ? m['retrievalReferenceNumber'] : null,
        sourceId: m['sourceId'] is int ? m['sourceId'] : null,
        tecsengineResponseCodeFrom: m['tecsengineResponseCodeFrom'] is String ? m['tecsengineResponseCodeFrom'] : null,
        tecsengineResponseCodeTo: m['tecsengineResponseCodeTo'] is String ? m['tecsengineResponseCodeTo'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        traceNumber: m['traceNumber'] is String ? m['traceNumber'] : null,
        transactionAmountFrom: m['transactionAmountFrom'] is String ? m['transactionAmountFrom'] : null,
        transactionAmountTo: m['transactionAmountTo'] is String ? m['transactionAmountTo'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != clearingAmountFrom) {
      m['clearingAmountFrom'] = clearingAmountFrom;
    }
    if (null != clearingAmountTo) {
      m['clearingAmountTo'] = clearingAmountTo;
    }
    if (null != clearingCurrency) {
      m['clearingCurrency'] = clearingCurrency;
    }
    if (null != clearingStatus) {
      m['clearingStatus'] = clearingStatus;
    }
    if (null != corporateUUID) {
      m['corporateUUID'] = corporateUUID;
    }
    if (null != orderByTransactionDate) {
      m['orderByTransactionDate'] = orderByTransactionDate;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != referencedTransactionId) {
      m['referencedTransactionId'] = referencedTransactionId;
    }
    if (null != retrievalReferenceNumber) {
      m['retrievalReferenceNumber'] = retrievalReferenceNumber;
    }
    if (null != sourceId) {
      m['sourceId'] = sourceId;
    }
    if (null != tecsengineResponseCodeFrom) {
      m['tecsengineResponseCodeFrom'] = tecsengineResponseCodeFrom;
    }
    if (null != tecsengineResponseCodeTo) {
      m['tecsengineResponseCodeTo'] = tecsengineResponseCodeTo;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionAmountFrom) {
      m['transactionAmountFrom'] = transactionAmountFrom;
    }
    if (null != transactionAmountTo) {
      m['transactionAmountTo'] = transactionAmountTo;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    if (null != wallet) {
      m['wallet'] = wallet;
    }
    return m;
  }
}

class MerchantPortalServicesApiCreateData {
  /// STRING
  String? authorizationCode;
  /// STRING
  String? cardBrand;
  /// STRING
  String? clearingAmountFrom;
  /// STRING
  String? clearingAmountTo;
  /// STRING
  String? clearingCurrency;
  /// STRING
  String? clearingStatus;
  /// STRING
  String? corporateUUID;
  /// STRING
  String? orderByTransactionDate;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? receiptNumber;
  /// STRING
  String? referencedTransactionId;
  /// STRING
  String? retrievalReferenceNumber;
  /// INTEGER
  int? sourceId;
  /// STRING
  String? tecsengineResponseCodeFrom;
  /// STRING
  String? tecsengineResponseCodeTo;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? traceNumber;
  /// STRING
  String? transactionAmountFrom;
  /// STRING
  String? transactionAmountTo;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// STRING
  String? transactionId;
  /// STRING
  String? transactionType;
  /// STRING
  String? wallet;

  MerchantPortalServicesApiCreateData({
    this.authorizationCode,
    this.cardBrand,
    this.clearingAmountFrom,
    this.clearingAmountTo,
    this.clearingCurrency,
    this.clearingStatus,
    this.corporateUUID,
    this.orderByTransactionDate,
    this.pagination,
    this.receiptNumber,
    this.referencedTransactionId,
    this.retrievalReferenceNumber,
    this.sourceId,
    this.tecsengineResponseCodeFrom,
    this.tecsengineResponseCodeTo,
    this.terminalId,
    this.traceNumber,
    this.transactionAmountFrom,
    this.transactionAmountTo,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionId,
    this.transactionType,
    this.wallet,
  });

  factory MerchantPortalServicesApiCreateData.fromMap(Map<String, dynamic> m) => MerchantPortalServicesApiCreateData(
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        clearingAmountFrom: m['clearingAmountFrom'] is String ? m['clearingAmountFrom'] : null,
        clearingAmountTo: m['clearingAmountTo'] is String ? m['clearingAmountTo'] : null,
        clearingCurrency: m['clearingCurrency'] is String ? m['clearingCurrency'] : null,
        clearingStatus: m['clearingStatus'] is String ? m['clearingStatus'] : null,
        corporateUUID: m['corporateUUID'] is String ? m['corporateUUID'] : null,
        orderByTransactionDate: m['orderByTransactionDate'] is String ? m['orderByTransactionDate'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        referencedTransactionId: m['referencedTransactionId'] is String ? m['referencedTransactionId'] : null,
        retrievalReferenceNumber: m['retrievalReferenceNumber'] is String ? m['retrievalReferenceNumber'] : null,
        sourceId: m['sourceId'] is int ? m['sourceId'] : null,
        tecsengineResponseCodeFrom: m['tecsengineResponseCodeFrom'] is String ? m['tecsengineResponseCodeFrom'] : null,
        tecsengineResponseCodeTo: m['tecsengineResponseCodeTo'] is String ? m['tecsengineResponseCodeTo'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        traceNumber: m['traceNumber'] is String ? m['traceNumber'] : null,
        transactionAmountFrom: m['transactionAmountFrom'] is String ? m['transactionAmountFrom'] : null,
        transactionAmountTo: m['transactionAmountTo'] is String ? m['transactionAmountTo'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != clearingAmountFrom) {
      m['clearingAmountFrom'] = clearingAmountFrom;
    }
    if (null != clearingAmountTo) {
      m['clearingAmountTo'] = clearingAmountTo;
    }
    if (null != clearingCurrency) {
      m['clearingCurrency'] = clearingCurrency;
    }
    if (null != clearingStatus) {
      m['clearingStatus'] = clearingStatus;
    }
    if (null != corporateUUID) {
      m['corporateUUID'] = corporateUUID;
    }
    if (null != orderByTransactionDate) {
      m['orderByTransactionDate'] = orderByTransactionDate;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != referencedTransactionId) {
      m['referencedTransactionId'] = referencedTransactionId;
    }
    if (null != retrievalReferenceNumber) {
      m['retrievalReferenceNumber'] = retrievalReferenceNumber;
    }
    if (null != sourceId) {
      m['sourceId'] = sourceId;
    }
    if (null != tecsengineResponseCodeFrom) {
      m['tecsengineResponseCodeFrom'] = tecsengineResponseCodeFrom;
    }
    if (null != tecsengineResponseCodeTo) {
      m['tecsengineResponseCodeTo'] = tecsengineResponseCodeTo;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionAmountFrom) {
      m['transactionAmountFrom'] = transactionAmountFrom;
    }
    if (null != transactionAmountTo) {
      m['transactionAmountTo'] = transactionAmountTo;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    if (null != wallet) {
      m['wallet'] = wallet;
    }
    return m;
  }
}

class MoveTid {
  /// ARRAY (required at the API)
  List<dynamic>? productorderuuids;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? targetPackageorderuuid;
  /// STRING
  String? targetProductorderuuid;

  MoveTid({
    this.productorderuuids,
    this.responseCode,
    this.responseMessage,
    this.targetPackageorderuuid,
    this.targetProductorderuuid,
  });

  factory MoveTid.fromMap(Map<String, dynamic> m) => MoveTid(
        productorderuuids: m['productorderuuids'] is List<dynamic> ? m['productorderuuids'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        targetPackageorderuuid: m['targetPackageorderuuid'] is String ? m['targetPackageorderuuid'] : null,
        targetProductorderuuid: m['targetProductorderuuid'] is String ? m['targetProductorderuuid'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != productorderuuids) {
      m['productorderuuids'] = productorderuuids;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != targetPackageorderuuid) {
      m['targetPackageorderuuid'] = targetPackageorderuuid;
    }
    if (null != targetProductorderuuid) {
      m['targetProductorderuuid'] = targetProductorderuuid;
    }
    return m;
  }
}

class MoveTidCreateData {
  /// ARRAY (required at the API)
  List<dynamic>? productorderuuids;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? targetPackageorderuuid;
  /// STRING
  String? targetProductorderuuid;

  MoveTidCreateData({
    this.productorderuuids,
    this.responseCode,
    this.responseMessage,
    this.targetPackageorderuuid,
    this.targetProductorderuuid,
  });

  factory MoveTidCreateData.fromMap(Map<String, dynamic> m) => MoveTidCreateData(
        productorderuuids: m['productorderuuids'] is List<dynamic> ? m['productorderuuids'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        targetPackageorderuuid: m['targetPackageorderuuid'] is String ? m['targetPackageorderuuid'] : null,
        targetProductorderuuid: m['targetProductorderuuid'] is String ? m['targetProductorderuuid'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != productorderuuids) {
      m['productorderuuids'] = productorderuuids;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != targetPackageorderuuid) {
      m['targetPackageorderuuid'] = targetPackageorderuuid;
    }
    if (null != targetProductorderuuid) {
      m['targetProductorderuuid'] = targetProductorderuuid;
    }
    return m;
  }
}

class PaymentManual {
  /// STRING
  String? acquirerName;
  /// INTEGER (required at the API)
  int? amount;
  /// STRING
  String? authorizationNumber;
  /// STRING (required at the API)
  String? cardNumber;
  /// STRING
  String? cardType;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? dateTimeTx;
  /// STRING (required at the API)
  String? expDate;
  /// STRING
  String? merchantId;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? terminalId;
  /// STRING
  String? transactionId;
  /// STRING (required at the API)
  String? txtype;

  PaymentManual({
    this.acquirerName,
    this.amount,
    this.authorizationNumber,
    this.cardNumber,
    this.cardType,
    this.currency,
    this.cvc,
    this.dateTimeTx,
    this.expDate,
    this.merchantId,
    this.originalTransactionId,
    this.password,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.txtype,
  });

  factory PaymentManual.fromMap(Map<String, dynamic> m) => PaymentManual(
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationNumber: m['authorizationNumber'] is String ? m['authorizationNumber'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        cardType: m['cardType'] is String ? m['cardType'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        dateTimeTx: m['dateTimeTx'] is String ? m['dateTimeTx'] : null,
        expDate: m['expDate'] is String ? m['expDate'] : null,
        merchantId: m['merchantId'] is String ? m['merchantId'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        responseCode: m['responseCode'] is String ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is String ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationNumber) {
      m['authorizationNumber'] = authorizationNumber;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != cardType) {
      m['cardType'] = cardType;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != dateTimeTx) {
      m['dateTimeTx'] = dateTimeTx;
    }
    if (null != expDate) {
      m['expDate'] = expDate;
    }
    if (null != merchantId) {
      m['merchantId'] = merchantId;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PaymentManualCreateData {
  /// STRING
  String? acquirerName;
  /// INTEGER (required at the API)
  int? amount;
  /// STRING
  String? authorizationNumber;
  /// STRING (required at the API)
  String? cardNumber;
  /// STRING
  String? cardType;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? dateTimeTx;
  /// STRING (required at the API)
  String? expDate;
  /// STRING
  String? merchantId;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? terminalId;
  /// STRING
  String? transactionId;
  /// STRING (required at the API)
  String? txtype;

  PaymentManualCreateData({
    this.acquirerName,
    this.amount,
    this.authorizationNumber,
    this.cardNumber,
    this.cardType,
    this.currency,
    this.cvc,
    this.dateTimeTx,
    this.expDate,
    this.merchantId,
    this.originalTransactionId,
    this.password,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
    this.transactionId,
    this.txtype,
  });

  factory PaymentManualCreateData.fromMap(Map<String, dynamic> m) => PaymentManualCreateData(
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationNumber: m['authorizationNumber'] is String ? m['authorizationNumber'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        cardType: m['cardType'] is String ? m['cardType'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        dateTimeTx: m['dateTimeTx'] is String ? m['dateTimeTx'] : null,
        expDate: m['expDate'] is String ? m['expDate'] : null,
        merchantId: m['merchantId'] is String ? m['merchantId'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        responseCode: m['responseCode'] is String ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is String ? m['terminalId'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationNumber) {
      m['authorizationNumber'] = authorizationNumber;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != cardType) {
      m['cardType'] = cardType;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != dateTimeTx) {
      m['dateTimeTx'] = dateTimeTx;
    }
    if (null != expDate) {
      m['expDate'] = expDate;
    }
    if (null != merchantId) {
      m['merchantId'] = merchantId;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PaymentSred {
  /// INTEGER (required at the API)
  int? amount;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? device;
  /// STRING (required at the API)
  String? devicePayload;
  /// STRING
  String? expDate;
  /// STRING
  String? mode;
  /// STRING
  String? panMasked;
  /// STRING
  String? password;
  /// STRING
  String? serial;
  /// STRING
  String? serviceCode;
  /// STRING (required at the API)
  String? terminalId;
  /// STRING (required at the API)
  String? txtype;

  PaymentSred({
    this.amount,
    this.currency,
    this.device,
    this.devicePayload,
    this.expDate,
    this.mode,
    this.panMasked,
    this.password,
    this.serial,
    this.serviceCode,
    this.terminalId,
    this.txtype,
  });

  factory PaymentSred.fromMap(Map<String, dynamic> m) => PaymentSred(
        amount: m['amount'] is int ? m['amount'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        device: m['device'] is String ? m['device'] : null,
        devicePayload: m['devicePayload'] is String ? m['devicePayload'] : null,
        expDate: m['expDate'] is String ? m['expDate'] : null,
        mode: m['mode'] is String ? m['mode'] : null,
        panMasked: m['panMasked'] is String ? m['panMasked'] : null,
        password: m['password'] is String ? m['password'] : null,
        serial: m['serial'] is String ? m['serial'] : null,
        serviceCode: m['serviceCode'] is String ? m['serviceCode'] : null,
        terminalId: m['terminalId'] is String ? m['terminalId'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != device) {
      m['device'] = device;
    }
    if (null != devicePayload) {
      m['devicePayload'] = devicePayload;
    }
    if (null != expDate) {
      m['expDate'] = expDate;
    }
    if (null != mode) {
      m['mode'] = mode;
    }
    if (null != panMasked) {
      m['panMasked'] = panMasked;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != serial) {
      m['serial'] = serial;
    }
    if (null != serviceCode) {
      m['serviceCode'] = serviceCode;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PaymentSredCreateData {
  /// INTEGER (required at the API)
  int? amount;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? device;
  /// STRING (required at the API)
  String? devicePayload;
  /// STRING
  String? expDate;
  /// STRING
  String? mode;
  /// STRING
  String? panMasked;
  /// STRING
  String? password;
  /// STRING
  String? serial;
  /// STRING
  String? serviceCode;
  /// STRING (required at the API)
  String? terminalId;
  /// STRING (required at the API)
  String? txtype;

  PaymentSredCreateData({
    this.amount,
    this.currency,
    this.device,
    this.devicePayload,
    this.expDate,
    this.mode,
    this.panMasked,
    this.password,
    this.serial,
    this.serviceCode,
    this.terminalId,
    this.txtype,
  });

  factory PaymentSredCreateData.fromMap(Map<String, dynamic> m) => PaymentSredCreateData(
        amount: m['amount'] is int ? m['amount'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        device: m['device'] is String ? m['device'] : null,
        devicePayload: m['devicePayload'] is String ? m['devicePayload'] : null,
        expDate: m['expDate'] is String ? m['expDate'] : null,
        mode: m['mode'] is String ? m['mode'] : null,
        panMasked: m['panMasked'] is String ? m['panMasked'] : null,
        password: m['password'] is String ? m['password'] : null,
        serial: m['serial'] is String ? m['serial'] : null,
        serviceCode: m['serviceCode'] is String ? m['serviceCode'] : null,
        terminalId: m['terminalId'] is String ? m['terminalId'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != device) {
      m['device'] = device;
    }
    if (null != devicePayload) {
      m['devicePayload'] = devicePayload;
    }
    if (null != expDate) {
      m['expDate'] = expDate;
    }
    if (null != mode) {
      m['mode'] = mode;
    }
    if (null != panMasked) {
      m['panMasked'] = panMasked;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != serial) {
      m['serial'] = serial;
    }
    if (null != serviceCode) {
      m['serviceCode'] = serviceCode;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PreAuthTransactionCompletion {
  /// STRING
  String? acquirerId;
  /// STRING
  String? acquirerName;
  /// STRING
  String? actualBonusPoints;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorizationCode;
  /// STRING
  String? balanceAmount;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardNumber;
  /// STRING (required at the API)
  String? cardNumberReference;
  /// INTEGER (required at the API)
  int? clientId;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ecData;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvData;
  /// INTEGER
  int? exchangeFee;
  /// STRING
  String? exchangeRate;
  /// STRING
  String? languageCode;
  /// STRING
  String? merchantAddress;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? messageType;
  /// INTEGER
  int? originalTraceNumber;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptFooter;
  /// STRING
  String? receiptHeader;
  /// INTEGER
  int? receiptLayout;
  /// STRING (required at the API)
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? serialNumber;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;
  /// STRING
  String? txType;
  /// STRING
  String? userData;

  PreAuthTransactionCompletion({
    this.acquirerId,
    this.acquirerName,
    this.actualBonusPoints,
    this.amount,
    this.authorizationCode,
    this.balanceAmount,
    this.cardBrand,
    this.cardNumber,
    this.cardNumberReference,
    this.clientId,
    this.currency,
    this.cvc,
    this.ecData,
    this.ecrData,
    this.emvData,
    this.exchangeFee,
    this.exchangeRate,
    this.languageCode,
    this.merchantAddress,
    this.merchantName,
    this.merchantNumber,
    this.messageType,
    this.originalTraceNumber,
    this.originalTransactionId,
    this.password,
    this.paymentReason,
    this.receiptFooter,
    this.receiptHeader,
    this.receiptLayout,
    this.receiptNumber,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.svc,
    this.terminalId,
    this.terminalLocation,
    this.traceNumber,
    this.transactionDate,
    this.transactionId,
    this.transactionType,
    this.txType,
    this.userData,
  });

  factory PreAuthTransactionCompletion.fromMap(Map<String, dynamic> m) => PreAuthTransactionCompletion(
        acquirerId: m['acquirerId'] is String ? m['acquirerId'] : null,
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        actualBonusPoints: m['actualBonusPoints'] is String ? m['actualBonusPoints'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        balanceAmount: m['balanceAmount'] is String ? m['balanceAmount'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        cardNumberReference: m['cardNumberReference'] is String ? m['cardNumberReference'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ecData: m['ecData'] is String ? m['ecData'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvData: m['emvData'] is String ? m['emvData'] : null,
        exchangeFee: m['exchangeFee'] is int ? m['exchangeFee'] : null,
        exchangeRate: m['exchangeRate'] is String ? m['exchangeRate'] : null,
        languageCode: m['languageCode'] is String ? m['languageCode'] : null,
        merchantAddress: m['merchantAddress'] is String ? m['merchantAddress'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        messageType: m['messageType'] is String ? m['messageType'] : null,
        originalTraceNumber: m['originalTraceNumber'] is int ? m['originalTraceNumber'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptFooter: m['receiptFooter'] is String ? m['receiptFooter'] : null,
        receiptHeader: m['receiptHeader'] is String ? m['receiptHeader'] : null,
        receiptLayout: m['receiptLayout'] is int ? m['receiptLayout'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
        txType: m['txType'] is String ? m['txType'] : null,
        userData: m['userData'] is String ? m['userData'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != actualBonusPoints) {
      m['actualBonusPoints'] = actualBonusPoints;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != balanceAmount) {
      m['balanceAmount'] = balanceAmount;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != cardNumberReference) {
      m['cardNumberReference'] = cardNumberReference;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ecData) {
      m['ecData'] = ecData;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != exchangeFee) {
      m['exchangeFee'] = exchangeFee;
    }
    if (null != exchangeRate) {
      m['exchangeRate'] = exchangeRate;
    }
    if (null != languageCode) {
      m['languageCode'] = languageCode;
    }
    if (null != merchantAddress) {
      m['merchantAddress'] = merchantAddress;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != messageType) {
      m['messageType'] = messageType;
    }
    if (null != originalTraceNumber) {
      m['originalTraceNumber'] = originalTraceNumber;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptFooter) {
      m['receiptFooter'] = receiptFooter;
    }
    if (null != receiptHeader) {
      m['receiptHeader'] = receiptHeader;
    }
    if (null != receiptLayout) {
      m['receiptLayout'] = receiptLayout;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    if (null != txType) {
      m['txType'] = txType;
    }
    if (null != userData) {
      m['userData'] = userData;
    }
    return m;
  }
}

class PreAuthTransactionCompletionCreateData {
  /// STRING
  String? acquirerId;
  /// STRING
  String? acquirerName;
  /// STRING
  String? actualBonusPoints;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorizationCode;
  /// STRING
  String? balanceAmount;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardNumber;
  /// STRING (required at the API)
  String? cardNumberReference;
  /// INTEGER (required at the API)
  int? clientId;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ecData;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvData;
  /// INTEGER
  int? exchangeFee;
  /// STRING
  String? exchangeRate;
  /// STRING
  String? languageCode;
  /// STRING
  String? merchantAddress;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? messageType;
  /// INTEGER
  int? originalTraceNumber;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptFooter;
  /// STRING
  String? receiptHeader;
  /// INTEGER
  int? receiptLayout;
  /// STRING (required at the API)
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? serialNumber;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// STRING (required at the API)
  String? transactionType;
  /// STRING
  String? txType;
  /// STRING
  String? userData;

  PreAuthTransactionCompletionCreateData({
    this.acquirerId,
    this.acquirerName,
    this.actualBonusPoints,
    this.amount,
    this.authorizationCode,
    this.balanceAmount,
    this.cardBrand,
    this.cardNumber,
    this.cardNumberReference,
    this.clientId,
    this.currency,
    this.cvc,
    this.ecData,
    this.ecrData,
    this.emvData,
    this.exchangeFee,
    this.exchangeRate,
    this.languageCode,
    this.merchantAddress,
    this.merchantName,
    this.merchantNumber,
    this.messageType,
    this.originalTraceNumber,
    this.originalTransactionId,
    this.password,
    this.paymentReason,
    this.receiptFooter,
    this.receiptHeader,
    this.receiptLayout,
    this.receiptNumber,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.svc,
    this.terminalId,
    this.terminalLocation,
    this.traceNumber,
    this.transactionDate,
    this.transactionId,
    this.transactionType,
    this.txType,
    this.userData,
  });

  factory PreAuthTransactionCompletionCreateData.fromMap(Map<String, dynamic> m) => PreAuthTransactionCompletionCreateData(
        acquirerId: m['acquirerId'] is String ? m['acquirerId'] : null,
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        actualBonusPoints: m['actualBonusPoints'] is String ? m['actualBonusPoints'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        balanceAmount: m['balanceAmount'] is String ? m['balanceAmount'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        cardNumberReference: m['cardNumberReference'] is String ? m['cardNumberReference'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ecData: m['ecData'] is String ? m['ecData'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvData: m['emvData'] is String ? m['emvData'] : null,
        exchangeFee: m['exchangeFee'] is int ? m['exchangeFee'] : null,
        exchangeRate: m['exchangeRate'] is String ? m['exchangeRate'] : null,
        languageCode: m['languageCode'] is String ? m['languageCode'] : null,
        merchantAddress: m['merchantAddress'] is String ? m['merchantAddress'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        messageType: m['messageType'] is String ? m['messageType'] : null,
        originalTraceNumber: m['originalTraceNumber'] is int ? m['originalTraceNumber'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptFooter: m['receiptFooter'] is String ? m['receiptFooter'] : null,
        receiptHeader: m['receiptHeader'] is String ? m['receiptHeader'] : null,
        receiptLayout: m['receiptLayout'] is int ? m['receiptLayout'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
        txType: m['txType'] is String ? m['txType'] : null,
        userData: m['userData'] is String ? m['userData'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != actualBonusPoints) {
      m['actualBonusPoints'] = actualBonusPoints;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != balanceAmount) {
      m['balanceAmount'] = balanceAmount;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != cardNumberReference) {
      m['cardNumberReference'] = cardNumberReference;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ecData) {
      m['ecData'] = ecData;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != exchangeFee) {
      m['exchangeFee'] = exchangeFee;
    }
    if (null != exchangeRate) {
      m['exchangeRate'] = exchangeRate;
    }
    if (null != languageCode) {
      m['languageCode'] = languageCode;
    }
    if (null != merchantAddress) {
      m['merchantAddress'] = merchantAddress;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != messageType) {
      m['messageType'] = messageType;
    }
    if (null != originalTraceNumber) {
      m['originalTraceNumber'] = originalTraceNumber;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptFooter) {
      m['receiptFooter'] = receiptFooter;
    }
    if (null != receiptHeader) {
      m['receiptHeader'] = receiptHeader;
    }
    if (null != receiptLayout) {
      m['receiptLayout'] = receiptLayout;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    if (null != txType) {
      m['txType'] = txType;
    }
    if (null != userData) {
      m['userData'] = userData;
    }
    return m;
  }
}

class ReactivateTerminal {
  /// STRING
  String? corporateUuid;
  /// STRING
  String? packageOrderUuid;
  /// STRING
  String? productOrderUuid;
  /// STRING (required at the API)
  String? reactivationReason;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;

  ReactivateTerminal({
    this.corporateUuid,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.reactivationReason,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
  });

  factory ReactivateTerminal.fromMap(Map<String, dynamic> m) => ReactivateTerminal(
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        reactivationReason: m['reactivationReason'] is String ? m['reactivationReason'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != reactivationReason) {
      m['reactivationReason'] = reactivationReason;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class ReactivateTerminalCreateData {
  /// STRING
  String? corporateUuid;
  /// STRING
  String? packageOrderUuid;
  /// STRING
  String? productOrderUuid;
  /// STRING (required at the API)
  String? reactivationReason;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// INTEGER (required at the API)
  int? terminalId;

  ReactivateTerminalCreateData({
    this.corporateUuid,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.reactivationReason,
    this.responseCode,
    this.responseMessage,
    this.terminalId,
  });

  factory ReactivateTerminalCreateData.fromMap(Map<String, dynamic> m) => ReactivateTerminalCreateData(
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        reactivationReason: m['reactivationReason'] is String ? m['reactivationReason'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != reactivationReason) {
      m['reactivationReason'] = reactivationReason;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class RefundTransaction {
  /// STRING
  String? acquirerId;
  /// STRING
  String? acquirerName;
  /// STRING
  String? actualBonusPoints;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorizationCode;
  /// STRING
  String? balanceAmount;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardNumber;
  /// INTEGER (required at the API)
  int? clientId;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ecData;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvData;
  /// INTEGER
  int? exchangeFee;
  /// STRING
  String? exchangeRate;
  /// STRING
  String? languageCode;
  /// STRING
  String? merchantAddress;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? messageType;
  /// INTEGER
  int? originalTraceNumber;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptFooter;
  /// STRING
  String? receiptHeader;
  /// INTEGER
  int? receiptLayout;
  /// STRING (required at the API)
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? serialNumber;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// STRING
  String? txType;
  /// STRING
  String? userData;

  RefundTransaction({
    this.acquirerId,
    this.acquirerName,
    this.actualBonusPoints,
    this.amount,
    this.authorizationCode,
    this.balanceAmount,
    this.cardBrand,
    this.cardNumber,
    this.clientId,
    this.currency,
    this.cvc,
    this.ecData,
    this.ecrData,
    this.emvData,
    this.exchangeFee,
    this.exchangeRate,
    this.languageCode,
    this.merchantAddress,
    this.merchantName,
    this.merchantNumber,
    this.messageType,
    this.originalTraceNumber,
    this.originalTransactionId,
    this.password,
    this.paymentReason,
    this.receiptFooter,
    this.receiptHeader,
    this.receiptLayout,
    this.receiptNumber,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.svc,
    this.terminalId,
    this.terminalLocation,
    this.traceNumber,
    this.transactionDate,
    this.transactionId,
    this.txType,
    this.userData,
  });

  factory RefundTransaction.fromMap(Map<String, dynamic> m) => RefundTransaction(
        acquirerId: m['acquirerId'] is String ? m['acquirerId'] : null,
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        actualBonusPoints: m['actualBonusPoints'] is String ? m['actualBonusPoints'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        balanceAmount: m['balanceAmount'] is String ? m['balanceAmount'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ecData: m['ecData'] is String ? m['ecData'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvData: m['emvData'] is String ? m['emvData'] : null,
        exchangeFee: m['exchangeFee'] is int ? m['exchangeFee'] : null,
        exchangeRate: m['exchangeRate'] is String ? m['exchangeRate'] : null,
        languageCode: m['languageCode'] is String ? m['languageCode'] : null,
        merchantAddress: m['merchantAddress'] is String ? m['merchantAddress'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        messageType: m['messageType'] is String ? m['messageType'] : null,
        originalTraceNumber: m['originalTraceNumber'] is int ? m['originalTraceNumber'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptFooter: m['receiptFooter'] is String ? m['receiptFooter'] : null,
        receiptHeader: m['receiptHeader'] is String ? m['receiptHeader'] : null,
        receiptLayout: m['receiptLayout'] is int ? m['receiptLayout'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        txType: m['txType'] is String ? m['txType'] : null,
        userData: m['userData'] is String ? m['userData'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != actualBonusPoints) {
      m['actualBonusPoints'] = actualBonusPoints;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != balanceAmount) {
      m['balanceAmount'] = balanceAmount;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ecData) {
      m['ecData'] = ecData;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != exchangeFee) {
      m['exchangeFee'] = exchangeFee;
    }
    if (null != exchangeRate) {
      m['exchangeRate'] = exchangeRate;
    }
    if (null != languageCode) {
      m['languageCode'] = languageCode;
    }
    if (null != merchantAddress) {
      m['merchantAddress'] = merchantAddress;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != messageType) {
      m['messageType'] = messageType;
    }
    if (null != originalTraceNumber) {
      m['originalTraceNumber'] = originalTraceNumber;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptFooter) {
      m['receiptFooter'] = receiptFooter;
    }
    if (null != receiptHeader) {
      m['receiptHeader'] = receiptHeader;
    }
    if (null != receiptLayout) {
      m['receiptLayout'] = receiptLayout;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != txType) {
      m['txType'] = txType;
    }
    if (null != userData) {
      m['userData'] = userData;
    }
    return m;
  }
}

class RefundTransactionCreateData {
  /// STRING
  String? acquirerId;
  /// STRING
  String? acquirerName;
  /// STRING
  String? actualBonusPoints;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorizationCode;
  /// STRING
  String? balanceAmount;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardNumber;
  /// INTEGER (required at the API)
  int? clientId;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ecData;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvData;
  /// INTEGER
  int? exchangeFee;
  /// STRING
  String? exchangeRate;
  /// STRING
  String? languageCode;
  /// STRING
  String? merchantAddress;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? messageType;
  /// INTEGER
  int? originalTraceNumber;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? password;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptFooter;
  /// STRING
  String? receiptHeader;
  /// INTEGER
  int? receiptLayout;
  /// STRING (required at the API)
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? serialNumber;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// STRING
  String? txType;
  /// STRING
  String? userData;

  RefundTransactionCreateData({
    this.acquirerId,
    this.acquirerName,
    this.actualBonusPoints,
    this.amount,
    this.authorizationCode,
    this.balanceAmount,
    this.cardBrand,
    this.cardNumber,
    this.clientId,
    this.currency,
    this.cvc,
    this.ecData,
    this.ecrData,
    this.emvData,
    this.exchangeFee,
    this.exchangeRate,
    this.languageCode,
    this.merchantAddress,
    this.merchantName,
    this.merchantNumber,
    this.messageType,
    this.originalTraceNumber,
    this.originalTransactionId,
    this.password,
    this.paymentReason,
    this.receiptFooter,
    this.receiptHeader,
    this.receiptLayout,
    this.receiptNumber,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.svc,
    this.terminalId,
    this.terminalLocation,
    this.traceNumber,
    this.transactionDate,
    this.transactionId,
    this.txType,
    this.userData,
  });

  factory RefundTransactionCreateData.fromMap(Map<String, dynamic> m) => RefundTransactionCreateData(
        acquirerId: m['acquirerId'] is String ? m['acquirerId'] : null,
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        actualBonusPoints: m['actualBonusPoints'] is String ? m['actualBonusPoints'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        balanceAmount: m['balanceAmount'] is String ? m['balanceAmount'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ecData: m['ecData'] is String ? m['ecData'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvData: m['emvData'] is String ? m['emvData'] : null,
        exchangeFee: m['exchangeFee'] is int ? m['exchangeFee'] : null,
        exchangeRate: m['exchangeRate'] is String ? m['exchangeRate'] : null,
        languageCode: m['languageCode'] is String ? m['languageCode'] : null,
        merchantAddress: m['merchantAddress'] is String ? m['merchantAddress'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        messageType: m['messageType'] is String ? m['messageType'] : null,
        originalTraceNumber: m['originalTraceNumber'] is int ? m['originalTraceNumber'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        password: m['password'] is String ? m['password'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptFooter: m['receiptFooter'] is String ? m['receiptFooter'] : null,
        receiptHeader: m['receiptHeader'] is String ? m['receiptHeader'] : null,
        receiptLayout: m['receiptLayout'] is int ? m['receiptLayout'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        txType: m['txType'] is String ? m['txType'] : null,
        userData: m['userData'] is String ? m['userData'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerId) {
      m['acquirerId'] = acquirerId;
    }
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != actualBonusPoints) {
      m['actualBonusPoints'] = actualBonusPoints;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != balanceAmount) {
      m['balanceAmount'] = balanceAmount;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ecData) {
      m['ecData'] = ecData;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvData) {
      m['emvData'] = emvData;
    }
    if (null != exchangeFee) {
      m['exchangeFee'] = exchangeFee;
    }
    if (null != exchangeRate) {
      m['exchangeRate'] = exchangeRate;
    }
    if (null != languageCode) {
      m['languageCode'] = languageCode;
    }
    if (null != merchantAddress) {
      m['merchantAddress'] = merchantAddress;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != messageType) {
      m['messageType'] = messageType;
    }
    if (null != originalTraceNumber) {
      m['originalTraceNumber'] = originalTraceNumber;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptFooter) {
      m['receiptFooter'] = receiptFooter;
    }
    if (null != receiptHeader) {
      m['receiptHeader'] = receiptHeader;
    }
    if (null != receiptLayout) {
      m['receiptLayout'] = receiptLayout;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != txType) {
      m['txType'] = txType;
    }
    if (null != userData) {
      m['userData'] = userData;
    }
    return m;
  }
}

class RegisterTecsCompany {
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING (required at the API)
  String? packageOrderUuid;
  /// INTEGER
  int? partnerId;
  /// STRING
  String? partnerName;
  /// STRING (required at the API)
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;

  RegisterTecsCompany({
    this.corporateUuid,
    this.packageOrderUuid,
    this.partnerId,
    this.partnerName,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.templateName,
  });

  factory RegisterTecsCompany.fromMap(Map<String, dynamic> m) => RegisterTecsCompany(
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        partnerId: m['partnerId'] is int ? m['partnerId'] : null,
        partnerName: m['partnerName'] is String ? m['partnerName'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != partnerId) {
      m['partnerId'] = partnerId;
    }
    if (null != partnerName) {
      m['partnerName'] = partnerName;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    return m;
  }
}

class RegisterTecsCompanyCreateData {
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING (required at the API)
  String? packageOrderUuid;
  /// INTEGER
  int? partnerId;
  /// STRING
  String? partnerName;
  /// STRING (required at the API)
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;

  RegisterTecsCompanyCreateData({
    this.corporateUuid,
    this.packageOrderUuid,
    this.partnerId,
    this.partnerName,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.templateName,
  });

  factory RegisterTecsCompanyCreateData.fromMap(Map<String, dynamic> m) => RegisterTecsCompanyCreateData(
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        partnerId: m['partnerId'] is int ? m['partnerId'] : null,
        partnerName: m['partnerName'] is String ? m['partnerName'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != partnerId) {
      m['partnerId'] = partnerId;
    }
    if (null != partnerName) {
      m['partnerName'] = partnerName;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    return m;
  }
}

class RegisterTerminal {
  /// OBJECT
  Map<String, dynamic>? additionalData;
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING (required at the API)
  String? packageOrderUuid;
  /// STRING (required at the API)
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? tecsWebSecretKey;
  /// STRING (required at the API)
  String? templateName;
  /// STRING (required at the API)
  String? terminalCountryCode;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? terminalIdAcq;
  /// STRING (required at the API)
  String? terminalLanguageCode;
  /// STRING (required at the API)
  String? terminalLocation;
  /// STRING
  String? terminalSerialNumber;
  /// STRING
  String? tokenIOAlias;
  /// STRING
  String? tokenIOIban;
  /// STRING
  String? tokenIOMemberId;
  /// STRING
  String? webShopUrl;

  RegisterTerminal({
    this.additionalData,
    this.corporateUuid,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.tecsWebSecretKey,
    this.templateName,
    this.terminalCountryCode,
    this.terminalId,
    this.terminalIdAcq,
    this.terminalLanguageCode,
    this.terminalLocation,
    this.terminalSerialNumber,
    this.tokenIOAlias,
    this.tokenIOIban,
    this.tokenIOMemberId,
    this.webShopUrl,
  });

  factory RegisterTerminal.fromMap(Map<String, dynamic> m) => RegisterTerminal(
        additionalData: m['additionalData'] is Map<String, dynamic> ? m['additionalData'] : null,
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        tecsWebSecretKey: m['tecsWebSecretKey'] is String ? m['tecsWebSecretKey'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        terminalCountryCode: m['terminalCountryCode'] is String ? m['terminalCountryCode'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalIdAcq: m['terminalIdAcq'] is String ? m['terminalIdAcq'] : null,
        terminalLanguageCode: m['terminalLanguageCode'] is String ? m['terminalLanguageCode'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        terminalSerialNumber: m['terminalSerialNumber'] is String ? m['terminalSerialNumber'] : null,
        tokenIOAlias: m['tokenIOAlias'] is String ? m['tokenIOAlias'] : null,
        tokenIOIban: m['tokenIOIban'] is String ? m['tokenIOIban'] : null,
        tokenIOMemberId: m['tokenIOMemberId'] is String ? m['tokenIOMemberId'] : null,
        webShopUrl: m['webShopUrl'] is String ? m['webShopUrl'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != additionalData) {
      m['additionalData'] = additionalData;
    }
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != tecsWebSecretKey) {
      m['tecsWebSecretKey'] = tecsWebSecretKey;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != terminalCountryCode) {
      m['terminalCountryCode'] = terminalCountryCode;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalIdAcq) {
      m['terminalIdAcq'] = terminalIdAcq;
    }
    if (null != terminalLanguageCode) {
      m['terminalLanguageCode'] = terminalLanguageCode;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != terminalSerialNumber) {
      m['terminalSerialNumber'] = terminalSerialNumber;
    }
    if (null != tokenIOAlias) {
      m['tokenIOAlias'] = tokenIOAlias;
    }
    if (null != tokenIOIban) {
      m['tokenIOIban'] = tokenIOIban;
    }
    if (null != tokenIOMemberId) {
      m['tokenIOMemberId'] = tokenIOMemberId;
    }
    if (null != webShopUrl) {
      m['webShopUrl'] = webShopUrl;
    }
    return m;
  }
}

class RegisterTerminalCreateData {
  /// OBJECT
  Map<String, dynamic>? additionalData;
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING (required at the API)
  String? packageOrderUuid;
  /// STRING (required at the API)
  String? productOrderUuid;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? tecsWebSecretKey;
  /// STRING (required at the API)
  String? templateName;
  /// STRING (required at the API)
  String? terminalCountryCode;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? terminalIdAcq;
  /// STRING (required at the API)
  String? terminalLanguageCode;
  /// STRING (required at the API)
  String? terminalLocation;
  /// STRING
  String? terminalSerialNumber;
  /// STRING
  String? tokenIOAlias;
  /// STRING
  String? tokenIOIban;
  /// STRING
  String? tokenIOMemberId;
  /// STRING
  String? webShopUrl;

  RegisterTerminalCreateData({
    this.additionalData,
    this.corporateUuid,
    this.packageOrderUuid,
    this.productOrderUuid,
    this.responseCode,
    this.responseMessage,
    this.tecsWebSecretKey,
    this.templateName,
    this.terminalCountryCode,
    this.terminalId,
    this.terminalIdAcq,
    this.terminalLanguageCode,
    this.terminalLocation,
    this.terminalSerialNumber,
    this.tokenIOAlias,
    this.tokenIOIban,
    this.tokenIOMemberId,
    this.webShopUrl,
  });

  factory RegisterTerminalCreateData.fromMap(Map<String, dynamic> m) => RegisterTerminalCreateData(
        additionalData: m['additionalData'] is Map<String, dynamic> ? m['additionalData'] : null,
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        packageOrderUuid: m['packageOrderUuid'] is String ? m['packageOrderUuid'] : null,
        productOrderUuid: m['productOrderUuid'] is String ? m['productOrderUuid'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        tecsWebSecretKey: m['tecsWebSecretKey'] is String ? m['tecsWebSecretKey'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        terminalCountryCode: m['terminalCountryCode'] is String ? m['terminalCountryCode'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalIdAcq: m['terminalIdAcq'] is String ? m['terminalIdAcq'] : null,
        terminalLanguageCode: m['terminalLanguageCode'] is String ? m['terminalLanguageCode'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        terminalSerialNumber: m['terminalSerialNumber'] is String ? m['terminalSerialNumber'] : null,
        tokenIOAlias: m['tokenIOAlias'] is String ? m['tokenIOAlias'] : null,
        tokenIOIban: m['tokenIOIban'] is String ? m['tokenIOIban'] : null,
        tokenIOMemberId: m['tokenIOMemberId'] is String ? m['tokenIOMemberId'] : null,
        webShopUrl: m['webShopUrl'] is String ? m['webShopUrl'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != additionalData) {
      m['additionalData'] = additionalData;
    }
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != packageOrderUuid) {
      m['packageOrderUuid'] = packageOrderUuid;
    }
    if (null != productOrderUuid) {
      m['productOrderUuid'] = productOrderUuid;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != tecsWebSecretKey) {
      m['tecsWebSecretKey'] = tecsWebSecretKey;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != terminalCountryCode) {
      m['terminalCountryCode'] = terminalCountryCode;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalIdAcq) {
      m['terminalIdAcq'] = terminalIdAcq;
    }
    if (null != terminalLanguageCode) {
      m['terminalLanguageCode'] = terminalLanguageCode;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != terminalSerialNumber) {
      m['terminalSerialNumber'] = terminalSerialNumber;
    }
    if (null != tokenIOAlias) {
      m['tokenIOAlias'] = tokenIOAlias;
    }
    if (null != tokenIOIban) {
      m['tokenIOIban'] = tokenIOIban;
    }
    if (null != tokenIOMemberId) {
      m['tokenIOMemberId'] = tokenIOMemberId;
    }
    if (null != webShopUrl) {
      m['webShopUrl'] = webShopUrl;
    }
    return m;
  }
}

class ReportData {
  /// ARRAY
  List<dynamic>? cardBrandReportData;
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// STRING (required at the API)
  String? corporateId;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sumOverCreditTx;
  /// OBJECT
  Map<String, dynamic>? sumOverDebitTx;
  /// INTEGER
  int? terminalId;

  ReportData({
    this.cardBrandReportData,
    this.clearingDateFrom,
    this.clearingDateTo,
    this.corporateId,
    this.currency,
    this.responseCode,
    this.responseMessage,
    this.sumOverCreditTx,
    this.sumOverDebitTx,
    this.terminalId,
  });

  factory ReportData.fromMap(Map<String, dynamic> m) => ReportData(
        cardBrandReportData: m['cardBrandReportData'] is List<dynamic> ? m['cardBrandReportData'] : null,
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        corporateId: m['corporateId'] is String ? m['corporateId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sumOverCreditTx: m['sumOverCreditTx'] is Map<String, dynamic> ? m['sumOverCreditTx'] : null,
        sumOverDebitTx: m['sumOverDebitTx'] is Map<String, dynamic> ? m['sumOverDebitTx'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != cardBrandReportData) {
      m['cardBrandReportData'] = cardBrandReportData;
    }
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != corporateId) {
      m['corporateId'] = corporateId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sumOverCreditTx) {
      m['sumOverCreditTx'] = sumOverCreditTx;
    }
    if (null != sumOverDebitTx) {
      m['sumOverDebitTx'] = sumOverDebitTx;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class ReportDataCreateData {
  /// ARRAY
  List<dynamic>? cardBrandReportData;
  /// STRING (required at the API)
  String? clearingDateFrom;
  /// STRING (required at the API)
  String? clearingDateTo;
  /// STRING (required at the API)
  String? corporateId;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sumOverCreditTx;
  /// OBJECT
  Map<String, dynamic>? sumOverDebitTx;
  /// INTEGER
  int? terminalId;

  ReportDataCreateData({
    this.cardBrandReportData,
    this.clearingDateFrom,
    this.clearingDateTo,
    this.corporateId,
    this.currency,
    this.responseCode,
    this.responseMessage,
    this.sumOverCreditTx,
    this.sumOverDebitTx,
    this.terminalId,
  });

  factory ReportDataCreateData.fromMap(Map<String, dynamic> m) => ReportDataCreateData(
        cardBrandReportData: m['cardBrandReportData'] is List<dynamic> ? m['cardBrandReportData'] : null,
        clearingDateFrom: m['clearingDateFrom'] is String ? m['clearingDateFrom'] : null,
        clearingDateTo: m['clearingDateTo'] is String ? m['clearingDateTo'] : null,
        corporateId: m['corporateId'] is String ? m['corporateId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sumOverCreditTx: m['sumOverCreditTx'] is Map<String, dynamic> ? m['sumOverCreditTx'] : null,
        sumOverDebitTx: m['sumOverDebitTx'] is Map<String, dynamic> ? m['sumOverDebitTx'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != cardBrandReportData) {
      m['cardBrandReportData'] = cardBrandReportData;
    }
    if (null != clearingDateFrom) {
      m['clearingDateFrom'] = clearingDateFrom;
    }
    if (null != clearingDateTo) {
      m['clearingDateTo'] = clearingDateTo;
    }
    if (null != corporateId) {
      m['corporateId'] = corporateId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sumOverCreditTx) {
      m['sumOverCreditTx'] = sumOverCreditTx;
    }
    if (null != sumOverDebitTx) {
      m['sumOverDebitTx'] = sumOverDebitTx;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    return m;
  }
}

class StatusTransaction {
  /// STRING
  String? acquirerName;
  /// STRING
  String? acquirerTerminalId;
  /// INTEGER
  int? amount;
  /// STRING
  String? applicationCryptogram;
  /// ONE,STRING,NULL
  dynamic authorizationCode;
  /// STRING
  String? authorizationDate;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardEntry;
  /// STRING
  String? cardExpiration;
  /// STRING
  String? cardNumber;
  /// INTEGER
  int? clearingAmount;
  /// STRING
  String? clearingBatchId;
  /// STRING
  String? clearingCurrency;
  /// STRING
  String? clearingDate;
  /// STRING
  String? clearingProcessedDate;
  /// STRING
  String? clearingStatus;
  /// INTEGER
  int? clientId;
  /// STRING
  String? currency;
  /// STRING
  String? cvm;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvApplicationId;
  /// STRING
  String? emvApplicationLabel;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? originalClientId;
  /// INTEGER
  int? originalTerminalId;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseCodeFromAS;
  /// STRING
  String? responseMessage;
  /// STRING
  String? retrievalReferenceNumber;
  /// STRING
  String? serviceCode;
  /// STRING
  String? settlementStatus;
  /// INTEGER
  int? sourceId;
  /// INTEGER
  int? tecsengineResponseCode;
  /// STRING
  String? tecsengineResponseText;
  /// STRING
  String? terminalEndOfDayDate;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? tipAmount;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionClearingDate;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// INTEGER
  int? transactionSeqNumber;
  /// STRING
  String? transactionServerDate;
  /// STRING
  String? transactionSource;
  /// STRING
  String? transactionType;

  StatusTransaction({
    this.acquirerName,
    this.acquirerTerminalId,
    this.amount,
    this.applicationCryptogram,
    this.authorizationCode,
    this.authorizationDate,
    this.cardBrand,
    this.cardEntry,
    this.cardExpiration,
    this.cardNumber,
    this.clearingAmount,
    this.clearingBatchId,
    this.clearingCurrency,
    this.clearingDate,
    this.clearingProcessedDate,
    this.clearingStatus,
    this.clientId,
    this.currency,
    this.cvm,
    this.ecrData,
    this.emvApplicationId,
    this.emvApplicationLabel,
    this.merchantName,
    this.merchantNumber,
    this.originalClientId,
    this.originalTerminalId,
    this.originalTransactionId,
    this.paymentReason,
    this.receiptNumber,
    this.responseCode,
    this.responseCodeFromAS,
    this.responseMessage,
    this.retrievalReferenceNumber,
    this.serviceCode,
    this.settlementStatus,
    this.sourceId,
    this.tecsengineResponseCode,
    this.tecsengineResponseText,
    this.terminalEndOfDayDate,
    this.terminalId,
    this.terminalLocation,
    this.tipAmount,
    this.traceNumber,
    this.transactionClearingDate,
    this.transactionDate,
    this.transactionId,
    this.transactionSeqNumber,
    this.transactionServerDate,
    this.transactionSource,
    this.transactionType,
  });

  factory StatusTransaction.fromMap(Map<String, dynamic> m) => StatusTransaction(
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        acquirerTerminalId: m['acquirerTerminalId'] is String ? m['acquirerTerminalId'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        applicationCryptogram: m['applicationCryptogram'] is String ? m['applicationCryptogram'] : null,
        authorizationCode: m['authorizationCode'],
        authorizationDate: m['authorizationDate'] is String ? m['authorizationDate'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardEntry: m['cardEntry'] is String ? m['cardEntry'] : null,
        cardExpiration: m['cardExpiration'] is String ? m['cardExpiration'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        clearingAmount: m['clearingAmount'] is int ? m['clearingAmount'] : null,
        clearingBatchId: m['clearingBatchId'] is String ? m['clearingBatchId'] : null,
        clearingCurrency: m['clearingCurrency'] is String ? m['clearingCurrency'] : null,
        clearingDate: m['clearingDate'] is String ? m['clearingDate'] : null,
        clearingProcessedDate: m['clearingProcessedDate'] is String ? m['clearingProcessedDate'] : null,
        clearingStatus: m['clearingStatus'] is String ? m['clearingStatus'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvm: m['cvm'] is String ? m['cvm'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvApplicationId: m['emvApplicationId'] is String ? m['emvApplicationId'] : null,
        emvApplicationLabel: m['emvApplicationLabel'] is String ? m['emvApplicationLabel'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        originalClientId: m['originalClientId'] is String ? m['originalClientId'] : null,
        originalTerminalId: m['originalTerminalId'] is int ? m['originalTerminalId'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseCodeFromAS: m['responseCodeFromAS'] is String ? m['responseCodeFromAS'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        retrievalReferenceNumber: m['retrievalReferenceNumber'] is String ? m['retrievalReferenceNumber'] : null,
        serviceCode: m['serviceCode'] is String ? m['serviceCode'] : null,
        settlementStatus: m['settlementStatus'] is String ? m['settlementStatus'] : null,
        sourceId: m['sourceId'] is int ? m['sourceId'] : null,
        tecsengineResponseCode: m['tecsengineResponseCode'] is int ? m['tecsengineResponseCode'] : null,
        tecsengineResponseText: m['tecsengineResponseText'] is String ? m['tecsengineResponseText'] : null,
        terminalEndOfDayDate: m['terminalEndOfDayDate'] is String ? m['terminalEndOfDayDate'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        tipAmount: m['tipAmount'] is int ? m['tipAmount'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionClearingDate: m['transactionClearingDate'] is String ? m['transactionClearingDate'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionSeqNumber: m['transactionSeqNumber'] is int ? m['transactionSeqNumber'] : null,
        transactionServerDate: m['transactionServerDate'] is String ? m['transactionServerDate'] : null,
        transactionSource: m['transactionSource'] is String ? m['transactionSource'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != acquirerTerminalId) {
      m['acquirerTerminalId'] = acquirerTerminalId;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != applicationCryptogram) {
      m['applicationCryptogram'] = applicationCryptogram;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != authorizationDate) {
      m['authorizationDate'] = authorizationDate;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardEntry) {
      m['cardEntry'] = cardEntry;
    }
    if (null != cardExpiration) {
      m['cardExpiration'] = cardExpiration;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != clearingAmount) {
      m['clearingAmount'] = clearingAmount;
    }
    if (null != clearingBatchId) {
      m['clearingBatchId'] = clearingBatchId;
    }
    if (null != clearingCurrency) {
      m['clearingCurrency'] = clearingCurrency;
    }
    if (null != clearingDate) {
      m['clearingDate'] = clearingDate;
    }
    if (null != clearingProcessedDate) {
      m['clearingProcessedDate'] = clearingProcessedDate;
    }
    if (null != clearingStatus) {
      m['clearingStatus'] = clearingStatus;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvm) {
      m['cvm'] = cvm;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvApplicationId) {
      m['emvApplicationId'] = emvApplicationId;
    }
    if (null != emvApplicationLabel) {
      m['emvApplicationLabel'] = emvApplicationLabel;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != originalClientId) {
      m['originalClientId'] = originalClientId;
    }
    if (null != originalTerminalId) {
      m['originalTerminalId'] = originalTerminalId;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseCodeFromAS) {
      m['responseCodeFromAS'] = responseCodeFromAS;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != retrievalReferenceNumber) {
      m['retrievalReferenceNumber'] = retrievalReferenceNumber;
    }
    if (null != serviceCode) {
      m['serviceCode'] = serviceCode;
    }
    if (null != settlementStatus) {
      m['settlementStatus'] = settlementStatus;
    }
    if (null != sourceId) {
      m['sourceId'] = sourceId;
    }
    if (null != tecsengineResponseCode) {
      m['tecsengineResponseCode'] = tecsengineResponseCode;
    }
    if (null != tecsengineResponseText) {
      m['tecsengineResponseText'] = tecsengineResponseText;
    }
    if (null != terminalEndOfDayDate) {
      m['terminalEndOfDayDate'] = terminalEndOfDayDate;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != tipAmount) {
      m['tipAmount'] = tipAmount;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionClearingDate) {
      m['transactionClearingDate'] = transactionClearingDate;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionSeqNumber) {
      m['transactionSeqNumber'] = transactionSeqNumber;
    }
    if (null != transactionServerDate) {
      m['transactionServerDate'] = transactionServerDate;
    }
    if (null != transactionSource) {
      m['transactionSource'] = transactionSource;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class StatusTransactionCreateData {
  /// STRING
  String? acquirerName;
  /// STRING
  String? acquirerTerminalId;
  /// INTEGER
  int? amount;
  /// STRING
  String? applicationCryptogram;
  /// ONE,STRING,NULL
  dynamic authorizationCode;
  /// STRING
  String? authorizationDate;
  /// STRING
  String? cardBrand;
  /// STRING
  String? cardEntry;
  /// STRING
  String? cardExpiration;
  /// STRING
  String? cardNumber;
  /// INTEGER
  int? clearingAmount;
  /// STRING
  String? clearingBatchId;
  /// STRING
  String? clearingCurrency;
  /// STRING
  String? clearingDate;
  /// STRING
  String? clearingProcessedDate;
  /// STRING
  String? clearingStatus;
  /// INTEGER
  int? clientId;
  /// STRING
  String? currency;
  /// STRING
  String? cvm;
  /// STRING
  String? ecrData;
  /// STRING
  String? emvApplicationId;
  /// STRING
  String? emvApplicationLabel;
  /// STRING
  String? merchantName;
  /// STRING
  String? merchantNumber;
  /// STRING
  String? originalClientId;
  /// INTEGER
  int? originalTerminalId;
  /// STRING
  String? originalTransactionId;
  /// STRING
  String? paymentReason;
  /// STRING
  String? receiptNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseCodeFromAS;
  /// STRING
  String? responseMessage;
  /// STRING
  String? retrievalReferenceNumber;
  /// STRING
  String? serviceCode;
  /// STRING
  String? settlementStatus;
  /// INTEGER
  int? sourceId;
  /// INTEGER
  int? tecsengineResponseCode;
  /// STRING
  String? tecsengineResponseText;
  /// STRING
  String? terminalEndOfDayDate;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? terminalLocation;
  /// INTEGER
  int? tipAmount;
  /// INTEGER
  int? traceNumber;
  /// STRING
  String? transactionClearingDate;
  /// STRING
  String? transactionDate;
  /// STRING
  String? transactionId;
  /// INTEGER
  int? transactionSeqNumber;
  /// STRING
  String? transactionServerDate;
  /// STRING
  String? transactionSource;
  /// STRING
  String? transactionType;

  StatusTransactionCreateData({
    this.acquirerName,
    this.acquirerTerminalId,
    this.amount,
    this.applicationCryptogram,
    this.authorizationCode,
    this.authorizationDate,
    this.cardBrand,
    this.cardEntry,
    this.cardExpiration,
    this.cardNumber,
    this.clearingAmount,
    this.clearingBatchId,
    this.clearingCurrency,
    this.clearingDate,
    this.clearingProcessedDate,
    this.clearingStatus,
    this.clientId,
    this.currency,
    this.cvm,
    this.ecrData,
    this.emvApplicationId,
    this.emvApplicationLabel,
    this.merchantName,
    this.merchantNumber,
    this.originalClientId,
    this.originalTerminalId,
    this.originalTransactionId,
    this.paymentReason,
    this.receiptNumber,
    this.responseCode,
    this.responseCodeFromAS,
    this.responseMessage,
    this.retrievalReferenceNumber,
    this.serviceCode,
    this.settlementStatus,
    this.sourceId,
    this.tecsengineResponseCode,
    this.tecsengineResponseText,
    this.terminalEndOfDayDate,
    this.terminalId,
    this.terminalLocation,
    this.tipAmount,
    this.traceNumber,
    this.transactionClearingDate,
    this.transactionDate,
    this.transactionId,
    this.transactionSeqNumber,
    this.transactionServerDate,
    this.transactionSource,
    this.transactionType,
  });

  factory StatusTransactionCreateData.fromMap(Map<String, dynamic> m) => StatusTransactionCreateData(
        acquirerName: m['acquirerName'] is String ? m['acquirerName'] : null,
        acquirerTerminalId: m['acquirerTerminalId'] is String ? m['acquirerTerminalId'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        applicationCryptogram: m['applicationCryptogram'] is String ? m['applicationCryptogram'] : null,
        authorizationCode: m['authorizationCode'],
        authorizationDate: m['authorizationDate'] is String ? m['authorizationDate'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        cardEntry: m['cardEntry'] is String ? m['cardEntry'] : null,
        cardExpiration: m['cardExpiration'] is String ? m['cardExpiration'] : null,
        cardNumber: m['cardNumber'] is String ? m['cardNumber'] : null,
        clearingAmount: m['clearingAmount'] is int ? m['clearingAmount'] : null,
        clearingBatchId: m['clearingBatchId'] is String ? m['clearingBatchId'] : null,
        clearingCurrency: m['clearingCurrency'] is String ? m['clearingCurrency'] : null,
        clearingDate: m['clearingDate'] is String ? m['clearingDate'] : null,
        clearingProcessedDate: m['clearingProcessedDate'] is String ? m['clearingProcessedDate'] : null,
        clearingStatus: m['clearingStatus'] is String ? m['clearingStatus'] : null,
        clientId: m['clientId'] is int ? m['clientId'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvm: m['cvm'] is String ? m['cvm'] : null,
        ecrData: m['ecrData'] is String ? m['ecrData'] : null,
        emvApplicationId: m['emvApplicationId'] is String ? m['emvApplicationId'] : null,
        emvApplicationLabel: m['emvApplicationLabel'] is String ? m['emvApplicationLabel'] : null,
        merchantName: m['merchantName'] is String ? m['merchantName'] : null,
        merchantNumber: m['merchantNumber'] is String ? m['merchantNumber'] : null,
        originalClientId: m['originalClientId'] is String ? m['originalClientId'] : null,
        originalTerminalId: m['originalTerminalId'] is int ? m['originalTerminalId'] : null,
        originalTransactionId: m['originalTransactionId'] is String ? m['originalTransactionId'] : null,
        paymentReason: m['paymentReason'] is String ? m['paymentReason'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseCodeFromAS: m['responseCodeFromAS'] is String ? m['responseCodeFromAS'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        retrievalReferenceNumber: m['retrievalReferenceNumber'] is String ? m['retrievalReferenceNumber'] : null,
        serviceCode: m['serviceCode'] is String ? m['serviceCode'] : null,
        settlementStatus: m['settlementStatus'] is String ? m['settlementStatus'] : null,
        sourceId: m['sourceId'] is int ? m['sourceId'] : null,
        tecsengineResponseCode: m['tecsengineResponseCode'] is int ? m['tecsengineResponseCode'] : null,
        tecsengineResponseText: m['tecsengineResponseText'] is String ? m['tecsengineResponseText'] : null,
        terminalEndOfDayDate: m['terminalEndOfDayDate'] is String ? m['terminalEndOfDayDate'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        terminalLocation: m['terminalLocation'] is String ? m['terminalLocation'] : null,
        tipAmount: m['tipAmount'] is int ? m['tipAmount'] : null,
        traceNumber: m['traceNumber'] is int ? m['traceNumber'] : null,
        transactionClearingDate: m['transactionClearingDate'] is String ? m['transactionClearingDate'] : null,
        transactionDate: m['transactionDate'] is String ? m['transactionDate'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionSeqNumber: m['transactionSeqNumber'] is int ? m['transactionSeqNumber'] : null,
        transactionServerDate: m['transactionServerDate'] is String ? m['transactionServerDate'] : null,
        transactionSource: m['transactionSource'] is String ? m['transactionSource'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirerName) {
      m['acquirerName'] = acquirerName;
    }
    if (null != acquirerTerminalId) {
      m['acquirerTerminalId'] = acquirerTerminalId;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != applicationCryptogram) {
      m['applicationCryptogram'] = applicationCryptogram;
    }
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != authorizationDate) {
      m['authorizationDate'] = authorizationDate;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != cardEntry) {
      m['cardEntry'] = cardEntry;
    }
    if (null != cardExpiration) {
      m['cardExpiration'] = cardExpiration;
    }
    if (null != cardNumber) {
      m['cardNumber'] = cardNumber;
    }
    if (null != clearingAmount) {
      m['clearingAmount'] = clearingAmount;
    }
    if (null != clearingBatchId) {
      m['clearingBatchId'] = clearingBatchId;
    }
    if (null != clearingCurrency) {
      m['clearingCurrency'] = clearingCurrency;
    }
    if (null != clearingDate) {
      m['clearingDate'] = clearingDate;
    }
    if (null != clearingProcessedDate) {
      m['clearingProcessedDate'] = clearingProcessedDate;
    }
    if (null != clearingStatus) {
      m['clearingStatus'] = clearingStatus;
    }
    if (null != clientId) {
      m['clientId'] = clientId;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvm) {
      m['cvm'] = cvm;
    }
    if (null != ecrData) {
      m['ecrData'] = ecrData;
    }
    if (null != emvApplicationId) {
      m['emvApplicationId'] = emvApplicationId;
    }
    if (null != emvApplicationLabel) {
      m['emvApplicationLabel'] = emvApplicationLabel;
    }
    if (null != merchantName) {
      m['merchantName'] = merchantName;
    }
    if (null != merchantNumber) {
      m['merchantNumber'] = merchantNumber;
    }
    if (null != originalClientId) {
      m['originalClientId'] = originalClientId;
    }
    if (null != originalTerminalId) {
      m['originalTerminalId'] = originalTerminalId;
    }
    if (null != originalTransactionId) {
      m['originalTransactionId'] = originalTransactionId;
    }
    if (null != paymentReason) {
      m['paymentReason'] = paymentReason;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseCodeFromAS) {
      m['responseCodeFromAS'] = responseCodeFromAS;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != retrievalReferenceNumber) {
      m['retrievalReferenceNumber'] = retrievalReferenceNumber;
    }
    if (null != serviceCode) {
      m['serviceCode'] = serviceCode;
    }
    if (null != settlementStatus) {
      m['settlementStatus'] = settlementStatus;
    }
    if (null != sourceId) {
      m['sourceId'] = sourceId;
    }
    if (null != tecsengineResponseCode) {
      m['tecsengineResponseCode'] = tecsengineResponseCode;
    }
    if (null != tecsengineResponseText) {
      m['tecsengineResponseText'] = tecsengineResponseText;
    }
    if (null != terminalEndOfDayDate) {
      m['terminalEndOfDayDate'] = terminalEndOfDayDate;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != terminalLocation) {
      m['terminalLocation'] = terminalLocation;
    }
    if (null != tipAmount) {
      m['tipAmount'] = tipAmount;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionClearingDate) {
      m['transactionClearingDate'] = transactionClearingDate;
    }
    if (null != transactionDate) {
      m['transactionDate'] = transactionDate;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionSeqNumber) {
      m['transactionSeqNumber'] = transactionSeqNumber;
    }
    if (null != transactionServerDate) {
      m['transactionServerDate'] = transactionServerDate;
    }
    if (null != transactionSource) {
      m['transactionSource'] = transactionSource;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    return m;
  }
}

class StoreTerminalParameter {
  /// OBJECT
  Map<String, dynamic>? acqTabNexo;
  /// STRING
  String? configVersion;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? serialNumber;
  /// STRING
  String? tidSent;

  StoreTerminalParameter({
    this.acqTabNexo,
    this.configVersion,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.tidSent,
  });

  factory StoreTerminalParameter.fromMap(Map<String, dynamic> m) => StoreTerminalParameter(
        acqTabNexo: m['acqTabNexo'] is Map<String, dynamic> ? m['acqTabNexo'] : null,
        configVersion: m['configVersion'] is String ? m['configVersion'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        tidSent: m['tidSent'] is String ? m['tidSent'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acqTabNexo) {
      m['acqTabNexo'] = acqTabNexo;
    }
    if (null != configVersion) {
      m['configVersion'] = configVersion;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != tidSent) {
      m['tidSent'] = tidSent;
    }
    return m;
  }
}

class StoreTerminalParameterCreateData {
  /// OBJECT
  Map<String, dynamic>? acqTabNexo;
  /// STRING
  String? configVersion;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? serialNumber;
  /// STRING
  String? tidSent;

  StoreTerminalParameterCreateData({
    this.acqTabNexo,
    this.configVersion,
    this.responseCode,
    this.responseMessage,
    this.serialNumber,
    this.tidSent,
  });

  factory StoreTerminalParameterCreateData.fromMap(Map<String, dynamic> m) => StoreTerminalParameterCreateData(
        acqTabNexo: m['acqTabNexo'] is Map<String, dynamic> ? m['acqTabNexo'] : null,
        configVersion: m['configVersion'] is String ? m['configVersion'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        serialNumber: m['serialNumber'] is String ? m['serialNumber'] : null,
        tidSent: m['tidSent'] is String ? m['tidSent'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acqTabNexo) {
      m['acqTabNexo'] = acqTabNexo;
    }
    if (null != configVersion) {
      m['configVersion'] = configVersion;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != serialNumber) {
      m['serialNumber'] = serialNumber;
    }
    if (null != tidSent) {
      m['tidSent'] = tidSent;
    }
    return m;
  }
}

class TerminalId {
  /// ARRAY (required at the API)
  List<dynamic>? deviceSerialNumber;
  /// ARRAY
  List<dynamic>? duplicateTerminalIds;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY
  List<dynamic>? terminals;

  TerminalId({
    this.deviceSerialNumber,
    this.duplicateTerminalIds,
    this.responseCode,
    this.responseMessage,
    this.terminals,
  });

  factory TerminalId.fromMap(Map<String, dynamic> m) => TerminalId(
        deviceSerialNumber: m['deviceSerialNumber'] is List<dynamic> ? m['deviceSerialNumber'] : null,
        duplicateTerminalIds: m['duplicateTerminalIds'] is List<dynamic> ? m['duplicateTerminalIds'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminals: m['terminals'] is List<dynamic> ? m['terminals'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != deviceSerialNumber) {
      m['deviceSerialNumber'] = deviceSerialNumber;
    }
    if (null != duplicateTerminalIds) {
      m['duplicateTerminalIds'] = duplicateTerminalIds;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminals) {
      m['terminals'] = terminals;
    }
    return m;
  }
}

class TerminalIdCreateData {
  /// ARRAY (required at the API)
  List<dynamic>? deviceSerialNumber;
  /// ARRAY
  List<dynamic>? duplicateTerminalIds;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY
  List<dynamic>? terminals;

  TerminalIdCreateData({
    this.deviceSerialNumber,
    this.duplicateTerminalIds,
    this.responseCode,
    this.responseMessage,
    this.terminals,
  });

  factory TerminalIdCreateData.fromMap(Map<String, dynamic> m) => TerminalIdCreateData(
        deviceSerialNumber: m['deviceSerialNumber'] is List<dynamic> ? m['deviceSerialNumber'] : null,
        duplicateTerminalIds: m['duplicateTerminalIds'] is List<dynamic> ? m['duplicateTerminalIds'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        terminals: m['terminals'] is List<dynamic> ? m['terminals'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != deviceSerialNumber) {
      m['deviceSerialNumber'] = deviceSerialNumber;
    }
    if (null != duplicateTerminalIds) {
      m['duplicateTerminalIds'] = duplicateTerminalIds;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != terminals) {
      m['terminals'] = terminals;
    }
    return m;
  }
}

class TransactionHistory {
  /// STRING
  String? authorizationCode;
  /// STRING
  String? cardBrand;
  /// STRING
  String? clearingAmountFrom;
  /// STRING
  String? clearingAmountTo;
  /// STRING
  String? clearingCurrency;
  /// STRING
  String? clearingStatus;
  /// STRING
  String? corporateUUID;
  /// STRING
  String? orderByTransactionDate;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? paymentTokenPublicId;
  /// STRING
  String? receiptNumber;
  /// STRING
  String? referencedTransactionId;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? retrievalReferenceNumber;
  /// INTEGER
  int? sourceId;
  /// STRING
  String? tecsengineResponseCodeFrom;
  /// STRING
  String? tecsengineResponseCodeTo;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? traceNumber;
  /// STRING
  String? transactionAmountFrom;
  /// STRING
  String? transactionAmountTo;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? transactionHistories;
  /// STRING
  String? transactionId;
  /// STRING
  String? transactionType;
  /// STRING
  String? wallet;

  TransactionHistory({
    this.authorizationCode,
    this.cardBrand,
    this.clearingAmountFrom,
    this.clearingAmountTo,
    this.clearingCurrency,
    this.clearingStatus,
    this.corporateUUID,
    this.orderByTransactionDate,
    this.pagination,
    this.paymentTokenPublicId,
    this.receiptNumber,
    this.referencedTransactionId,
    this.responseCode,
    this.responseMessage,
    this.retrievalReferenceNumber,
    this.sourceId,
    this.tecsengineResponseCodeFrom,
    this.tecsengineResponseCodeTo,
    this.terminalId,
    this.traceNumber,
    this.transactionAmountFrom,
    this.transactionAmountTo,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionHistories,
    this.transactionId,
    this.transactionType,
    this.wallet,
  });

  factory TransactionHistory.fromMap(Map<String, dynamic> m) => TransactionHistory(
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        clearingAmountFrom: m['clearingAmountFrom'] is String ? m['clearingAmountFrom'] : null,
        clearingAmountTo: m['clearingAmountTo'] is String ? m['clearingAmountTo'] : null,
        clearingCurrency: m['clearingCurrency'] is String ? m['clearingCurrency'] : null,
        clearingStatus: m['clearingStatus'] is String ? m['clearingStatus'] : null,
        corporateUUID: m['corporateUUID'] is String ? m['corporateUUID'] : null,
        orderByTransactionDate: m['orderByTransactionDate'] is String ? m['orderByTransactionDate'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        paymentTokenPublicId: m['paymentTokenPublicId'] is String ? m['paymentTokenPublicId'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        referencedTransactionId: m['referencedTransactionId'] is String ? m['referencedTransactionId'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        retrievalReferenceNumber: m['retrievalReferenceNumber'] is String ? m['retrievalReferenceNumber'] : null,
        sourceId: m['sourceId'] is int ? m['sourceId'] : null,
        tecsengineResponseCodeFrom: m['tecsengineResponseCodeFrom'] is String ? m['tecsengineResponseCodeFrom'] : null,
        tecsengineResponseCodeTo: m['tecsengineResponseCodeTo'] is String ? m['tecsengineResponseCodeTo'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        traceNumber: m['traceNumber'] is String ? m['traceNumber'] : null,
        transactionAmountFrom: m['transactionAmountFrom'] is String ? m['transactionAmountFrom'] : null,
        transactionAmountTo: m['transactionAmountTo'] is String ? m['transactionAmountTo'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionHistories: m['transactionHistories'] is List<dynamic> ? m['transactionHistories'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != clearingAmountFrom) {
      m['clearingAmountFrom'] = clearingAmountFrom;
    }
    if (null != clearingAmountTo) {
      m['clearingAmountTo'] = clearingAmountTo;
    }
    if (null != clearingCurrency) {
      m['clearingCurrency'] = clearingCurrency;
    }
    if (null != clearingStatus) {
      m['clearingStatus'] = clearingStatus;
    }
    if (null != corporateUUID) {
      m['corporateUUID'] = corporateUUID;
    }
    if (null != orderByTransactionDate) {
      m['orderByTransactionDate'] = orderByTransactionDate;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != paymentTokenPublicId) {
      m['paymentTokenPublicId'] = paymentTokenPublicId;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != referencedTransactionId) {
      m['referencedTransactionId'] = referencedTransactionId;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != retrievalReferenceNumber) {
      m['retrievalReferenceNumber'] = retrievalReferenceNumber;
    }
    if (null != sourceId) {
      m['sourceId'] = sourceId;
    }
    if (null != tecsengineResponseCodeFrom) {
      m['tecsengineResponseCodeFrom'] = tecsengineResponseCodeFrom;
    }
    if (null != tecsengineResponseCodeTo) {
      m['tecsengineResponseCodeTo'] = tecsengineResponseCodeTo;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionAmountFrom) {
      m['transactionAmountFrom'] = transactionAmountFrom;
    }
    if (null != transactionAmountTo) {
      m['transactionAmountTo'] = transactionAmountTo;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionHistories) {
      m['transactionHistories'] = transactionHistories;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    if (null != wallet) {
      m['wallet'] = wallet;
    }
    return m;
  }
}

class TransactionHistoryCreateData {
  /// STRING
  String? authorizationCode;
  /// STRING
  String? cardBrand;
  /// STRING
  String? clearingAmountFrom;
  /// STRING
  String? clearingAmountTo;
  /// STRING
  String? clearingCurrency;
  /// STRING
  String? clearingStatus;
  /// STRING
  String? corporateUUID;
  /// STRING
  String? orderByTransactionDate;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? paymentTokenPublicId;
  /// STRING
  String? receiptNumber;
  /// STRING
  String? referencedTransactionId;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? retrievalReferenceNumber;
  /// INTEGER
  int? sourceId;
  /// STRING
  String? tecsengineResponseCodeFrom;
  /// STRING
  String? tecsengineResponseCodeTo;
  /// INTEGER
  int? terminalId;
  /// STRING
  String? traceNumber;
  /// STRING
  String? transactionAmountFrom;
  /// STRING
  String? transactionAmountTo;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? transactionHistories;
  /// STRING
  String? transactionId;
  /// STRING
  String? transactionType;
  /// STRING
  String? wallet;

  TransactionHistoryCreateData({
    this.authorizationCode,
    this.cardBrand,
    this.clearingAmountFrom,
    this.clearingAmountTo,
    this.clearingCurrency,
    this.clearingStatus,
    this.corporateUUID,
    this.orderByTransactionDate,
    this.pagination,
    this.paymentTokenPublicId,
    this.receiptNumber,
    this.referencedTransactionId,
    this.responseCode,
    this.responseMessage,
    this.retrievalReferenceNumber,
    this.sourceId,
    this.tecsengineResponseCodeFrom,
    this.tecsengineResponseCodeTo,
    this.terminalId,
    this.traceNumber,
    this.transactionAmountFrom,
    this.transactionAmountTo,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionHistories,
    this.transactionId,
    this.transactionType,
    this.wallet,
  });

  factory TransactionHistoryCreateData.fromMap(Map<String, dynamic> m) => TransactionHistoryCreateData(
        authorizationCode: m['authorizationCode'] is String ? m['authorizationCode'] : null,
        cardBrand: m['cardBrand'] is String ? m['cardBrand'] : null,
        clearingAmountFrom: m['clearingAmountFrom'] is String ? m['clearingAmountFrom'] : null,
        clearingAmountTo: m['clearingAmountTo'] is String ? m['clearingAmountTo'] : null,
        clearingCurrency: m['clearingCurrency'] is String ? m['clearingCurrency'] : null,
        clearingStatus: m['clearingStatus'] is String ? m['clearingStatus'] : null,
        corporateUUID: m['corporateUUID'] is String ? m['corporateUUID'] : null,
        orderByTransactionDate: m['orderByTransactionDate'] is String ? m['orderByTransactionDate'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        paymentTokenPublicId: m['paymentTokenPublicId'] is String ? m['paymentTokenPublicId'] : null,
        receiptNumber: m['receiptNumber'] is String ? m['receiptNumber'] : null,
        referencedTransactionId: m['referencedTransactionId'] is String ? m['referencedTransactionId'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        retrievalReferenceNumber: m['retrievalReferenceNumber'] is String ? m['retrievalReferenceNumber'] : null,
        sourceId: m['sourceId'] is int ? m['sourceId'] : null,
        tecsengineResponseCodeFrom: m['tecsengineResponseCodeFrom'] is String ? m['tecsengineResponseCodeFrom'] : null,
        tecsengineResponseCodeTo: m['tecsengineResponseCodeTo'] is String ? m['tecsengineResponseCodeTo'] : null,
        terminalId: m['terminalId'] is int ? m['terminalId'] : null,
        traceNumber: m['traceNumber'] is String ? m['traceNumber'] : null,
        transactionAmountFrom: m['transactionAmountFrom'] is String ? m['transactionAmountFrom'] : null,
        transactionAmountTo: m['transactionAmountTo'] is String ? m['transactionAmountTo'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionHistories: m['transactionHistories'] is List<dynamic> ? m['transactionHistories'] : null,
        transactionId: m['transactionId'] is String ? m['transactionId'] : null,
        transactionType: m['transactionType'] is String ? m['transactionType'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorizationCode) {
      m['authorizationCode'] = authorizationCode;
    }
    if (null != cardBrand) {
      m['cardBrand'] = cardBrand;
    }
    if (null != clearingAmountFrom) {
      m['clearingAmountFrom'] = clearingAmountFrom;
    }
    if (null != clearingAmountTo) {
      m['clearingAmountTo'] = clearingAmountTo;
    }
    if (null != clearingCurrency) {
      m['clearingCurrency'] = clearingCurrency;
    }
    if (null != clearingStatus) {
      m['clearingStatus'] = clearingStatus;
    }
    if (null != corporateUUID) {
      m['corporateUUID'] = corporateUUID;
    }
    if (null != orderByTransactionDate) {
      m['orderByTransactionDate'] = orderByTransactionDate;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != paymentTokenPublicId) {
      m['paymentTokenPublicId'] = paymentTokenPublicId;
    }
    if (null != receiptNumber) {
      m['receiptNumber'] = receiptNumber;
    }
    if (null != referencedTransactionId) {
      m['referencedTransactionId'] = referencedTransactionId;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != retrievalReferenceNumber) {
      m['retrievalReferenceNumber'] = retrievalReferenceNumber;
    }
    if (null != sourceId) {
      m['sourceId'] = sourceId;
    }
    if (null != tecsengineResponseCodeFrom) {
      m['tecsengineResponseCodeFrom'] = tecsengineResponseCodeFrom;
    }
    if (null != tecsengineResponseCodeTo) {
      m['tecsengineResponseCodeTo'] = tecsengineResponseCodeTo;
    }
    if (null != terminalId) {
      m['terminalId'] = terminalId;
    }
    if (null != traceNumber) {
      m['traceNumber'] = traceNumber;
    }
    if (null != transactionAmountFrom) {
      m['transactionAmountFrom'] = transactionAmountFrom;
    }
    if (null != transactionAmountTo) {
      m['transactionAmountTo'] = transactionAmountTo;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionHistories) {
      m['transactionHistories'] = transactionHistories;
    }
    if (null != transactionId) {
      m['transactionId'] = transactionId;
    }
    if (null != transactionType) {
      m['transactionType'] = transactionType;
    }
    if (null != wallet) {
      m['wallet'] = wallet;
    }
    return m;
  }
}

class TransactionsCount {
  /// STRING
  String? period;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? transactionsCount;

  TransactionsCount({
    this.period,
    this.responseCode,
    this.responseMessage,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionsCount,
  });

  factory TransactionsCount.fromMap(Map<String, dynamic> m) => TransactionsCount(
        period: m['period'] is String ? m['period'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionsCount: m['transactionsCount'] is List<dynamic> ? m['transactionsCount'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionsCount) {
      m['transactionsCount'] = transactionsCount;
    }
    return m;
  }
}

class TransactionsCountCreateData {
  /// STRING
  String? period;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? transactionsCount;

  TransactionsCountCreateData({
    this.period,
    this.responseCode,
    this.responseMessage,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionsCount,
  });

  factory TransactionsCountCreateData.fromMap(Map<String, dynamic> m) => TransactionsCountCreateData(
        period: m['period'] is String ? m['period'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionsCount: m['transactionsCount'] is List<dynamic> ? m['transactionsCount'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionsCount) {
      m['transactionsCount'] = transactionsCount;
    }
    return m;
  }
}

class TransactionsCountCardBrand {
  /// STRING
  String? period;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? transactionsCount;

  TransactionsCountCardBrand({
    this.period,
    this.responseCode,
    this.responseMessage,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionsCount,
  });

  factory TransactionsCountCardBrand.fromMap(Map<String, dynamic> m) => TransactionsCountCardBrand(
        period: m['period'] is String ? m['period'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionsCount: m['transactionsCount'] is List<dynamic> ? m['transactionsCount'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionsCount) {
      m['transactionsCount'] = transactionsCount;
    }
    return m;
  }
}

class TransactionsCountCardBrandCreateData {
  /// STRING
  String? period;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? transactionsCount;

  TransactionsCountCardBrandCreateData({
    this.period,
    this.responseCode,
    this.responseMessage,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.transactionsCount,
  });

  factory TransactionsCountCardBrandCreateData.fromMap(Map<String, dynamic> m) => TransactionsCountCardBrandCreateData(
        period: m['period'] is String ? m['period'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        transactionsCount: m['transactionsCount'] is List<dynamic> ? m['transactionsCount'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != transactionsCount) {
      m['transactionsCount'] = transactionsCount;
    }
    return m;
  }
}

class TransactionsTurnover {
  /// STRING
  String? period;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? turnovers;

  TransactionsTurnover({
    this.period,
    this.responseCode,
    this.responseMessage,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.turnovers,
  });

  factory TransactionsTurnover.fromMap(Map<String, dynamic> m) => TransactionsTurnover(
        period: m['period'] is String ? m['period'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        turnovers: m['turnovers'] is List<dynamic> ? m['turnovers'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != turnovers) {
      m['turnovers'] = turnovers;
    }
    return m;
  }
}

class TransactionsTurnoverCreateData {
  /// STRING
  String? period;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? transactionDateFrom;
  /// STRING
  String? transactionDateTo;
  /// ARRAY
  List<dynamic>? turnovers;

  TransactionsTurnoverCreateData({
    this.period,
    this.responseCode,
    this.responseMessage,
    this.transactionDateFrom,
    this.transactionDateTo,
    this.turnovers,
  });

  factory TransactionsTurnoverCreateData.fromMap(Map<String, dynamic> m) => TransactionsTurnoverCreateData(
        period: m['period'] is String ? m['period'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        transactionDateFrom: m['transactionDateFrom'] is String ? m['transactionDateFrom'] : null,
        transactionDateTo: m['transactionDateTo'] is String ? m['transactionDateTo'] : null,
        turnovers: m['turnovers'] is List<dynamic> ? m['turnovers'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != transactionDateFrom) {
      m['transactionDateFrom'] = transactionDateFrom;
    }
    if (null != transactionDateTo) {
      m['transactionDateTo'] = transactionDateTo;
    }
    if (null != turnovers) {
      m['turnovers'] = turnovers;
    }
    return m;
  }
}

class UpdateMerchant {
  /// STRING
  String? city;
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING
  String? country;
  /// STRING
  String? merchantCategoryCode;
  /// STRING
  String? name;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? state;
  /// STRING
  String? street;
  /// STRING
  String? vuNummer;
  /// STRING
  String? zipcode;

  UpdateMerchant({
    this.city,
    this.corporateUuid,
    this.country,
    this.merchantCategoryCode,
    this.name,
    this.responseCode,
    this.responseMessage,
    this.state,
    this.street,
    this.vuNummer,
    this.zipcode,
  });

  factory UpdateMerchant.fromMap(Map<String, dynamic> m) => UpdateMerchant(
        city: m['city'] is String ? m['city'] : null,
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        country: m['country'] is String ? m['country'] : null,
        merchantCategoryCode: m['merchantCategoryCode'] is String ? m['merchantCategoryCode'] : null,
        name: m['name'] is String ? m['name'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        state: m['state'] is String ? m['state'] : null,
        street: m['street'] is String ? m['street'] : null,
        vuNummer: m['vuNummer'] is String ? m['vuNummer'] : null,
        zipcode: m['zipcode'] is String ? m['zipcode'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != merchantCategoryCode) {
      m['merchantCategoryCode'] = merchantCategoryCode;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street) {
      m['street'] = street;
    }
    if (null != vuNummer) {
      m['vuNummer'] = vuNummer;
    }
    if (null != zipcode) {
      m['zipcode'] = zipcode;
    }
    return m;
  }
}

class UpdateMerchantCreateData {
  /// STRING
  String? city;
  /// STRING (required at the API)
  String? corporateUuid;
  /// STRING
  String? country;
  /// STRING
  String? merchantCategoryCode;
  /// STRING
  String? name;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? state;
  /// STRING
  String? street;
  /// STRING
  String? vuNummer;
  /// STRING
  String? zipcode;

  UpdateMerchantCreateData({
    this.city,
    this.corporateUuid,
    this.country,
    this.merchantCategoryCode,
    this.name,
    this.responseCode,
    this.responseMessage,
    this.state,
    this.street,
    this.vuNummer,
    this.zipcode,
  });

  factory UpdateMerchantCreateData.fromMap(Map<String, dynamic> m) => UpdateMerchantCreateData(
        city: m['city'] is String ? m['city'] : null,
        corporateUuid: m['corporateUuid'] is String ? m['corporateUuid'] : null,
        country: m['country'] is String ? m['country'] : null,
        merchantCategoryCode: m['merchantCategoryCode'] is String ? m['merchantCategoryCode'] : null,
        name: m['name'] is String ? m['name'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        state: m['state'] is String ? m['state'] : null,
        street: m['street'] is String ? m['street'] : null,
        vuNummer: m['vuNummer'] is String ? m['vuNummer'] : null,
        zipcode: m['zipcode'] is String ? m['zipcode'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != corporateUuid) {
      m['corporateUuid'] = corporateUuid;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != merchantCategoryCode) {
      m['merchantCategoryCode'] = merchantCategoryCode;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street) {
      m['street'] = street;
    }
    if (null != vuNummer) {
      m['vuNummer'] = vuNummer;
    }
    if (null != zipcode) {
      m['zipcode'] = zipcode;
    }
    return m;
  }
}

class UpdateTemplateXml {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;
  /// STRING (required at the API)
  String? templateXml;

  UpdateTemplateXml({
    this.responseCode,
    this.responseMessage,
    this.templateName,
    this.templateXml,
  });

  factory UpdateTemplateXml.fromMap(Map<String, dynamic> m) => UpdateTemplateXml(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        templateXml: m['templateXml'] is String ? m['templateXml'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != templateXml) {
      m['templateXml'] = templateXml;
    }
    return m;
  }
}

class UpdateTemplateXmlCreateData {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING (required at the API)
  String? templateName;
  /// STRING (required at the API)
  String? templateXml;

  UpdateTemplateXmlCreateData({
    this.responseCode,
    this.responseMessage,
    this.templateName,
    this.templateXml,
  });

  factory UpdateTemplateXmlCreateData.fromMap(Map<String, dynamic> m) => UpdateTemplateXmlCreateData(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        templateName: m['templateName'] is String ? m['templateName'] : null,
        templateXml: m['templateXml'] is String ? m['templateXml'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != templateName) {
      m['templateName'] = templateName;
    }
    if (null != templateXml) {
      m['templateXml'] = templateXml;
    }
    return m;
  }
}

class Version {
  /// STRING
  String? appName;
  /// STRING
  String? buildDate;
  /// STRING
  String? version;

  Version({
    this.appName,
    this.buildDate,
    this.version,
  });

  factory Version.fromMap(Map<String, dynamic> m) => Version(
        appName: m['appName'] is String ? m['appName'] : null,
        buildDate: m['buildDate'] is String ? m['buildDate'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != appName) {
      m['appName'] = appName;
    }
    if (null != buildDate) {
      m['buildDate'] = buildDate;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}

class VersionLoadMatch {
  /// STRING
  String? appName;
  /// STRING
  String? buildDate;
  /// STRING
  String? version;

  VersionLoadMatch({
    this.appName,
    this.buildDate,
    this.version,
  });

  factory VersionLoadMatch.fromMap(Map<String, dynamic> m) => VersionLoadMatch(
        appName: m['appName'] is String ? m['appName'] : null,
        buildDate: m['buildDate'] is String ? m['buildDate'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != appName) {
      m['appName'] = appName;
    }
    if (null != buildDate) {
      m['buildDate'] = buildDate;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}

