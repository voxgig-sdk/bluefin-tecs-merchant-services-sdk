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
  String? acquirer_id;
  /// STRING
  String? acquirer_name;
  /// STRING
  String? actual_bonus_point;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorization_code;
  /// STRING
  String? balance_amount;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_number;
  /// INTEGER (required at the API)
  int? client_id;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ec_data;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_data;
  /// INTEGER
  int? exchange_fee;
  /// STRING
  String? exchange_rate;
  /// STRING
  String? language_code;
  /// STRING
  String? merchant_address;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? message_type;
  /// INTEGER
  int? original_trace_number;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_footer;
  /// STRING
  String? receipt_header;
  /// INTEGER
  int? receipt_layout;
  /// STRING (required at the API)
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? serial_number;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// STRING
  String? tx_type;
  /// STRING
  String? user_data;

  CancelTransaction({
    this.acquirer_id,
    this.acquirer_name,
    this.actual_bonus_point,
    this.amount,
    this.authorization_code,
    this.balance_amount,
    this.card_brand,
    this.card_number,
    this.client_id,
    this.currency,
    this.cvc,
    this.ec_data,
    this.ecr_data,
    this.emv_data,
    this.exchange_fee,
    this.exchange_rate,
    this.language_code,
    this.merchant_address,
    this.merchant_name,
    this.merchant_number,
    this.message_type,
    this.original_trace_number,
    this.original_transaction_id,
    this.password,
    this.payment_reason,
    this.receipt_footer,
    this.receipt_header,
    this.receipt_layout,
    this.receipt_number,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.svc,
    this.terminal_id,
    this.terminal_location,
    this.trace_number,
    this.transaction_date,
    this.transaction_id,
    this.tx_type,
    this.user_data,
  });

  factory CancelTransaction.fromMap(Map<String, dynamic> m) => CancelTransaction(
        acquirer_id: m['acquirer_id'] is String ? m['acquirer_id'] : null,
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        actual_bonus_point: m['actual_bonus_point'] is String ? m['actual_bonus_point'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        balance_amount: m['balance_amount'] is String ? m['balance_amount'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ec_data: m['ec_data'] is String ? m['ec_data'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        exchange_fee: m['exchange_fee'] is int ? m['exchange_fee'] : null,
        exchange_rate: m['exchange_rate'] is String ? m['exchange_rate'] : null,
        language_code: m['language_code'] is String ? m['language_code'] : null,
        merchant_address: m['merchant_address'] is String ? m['merchant_address'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        message_type: m['message_type'] is String ? m['message_type'] : null,
        original_trace_number: m['original_trace_number'] is int ? m['original_trace_number'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_footer: m['receipt_footer'] is String ? m['receipt_footer'] : null,
        receipt_header: m['receipt_header'] is String ? m['receipt_header'] : null,
        receipt_layout: m['receipt_layout'] is int ? m['receipt_layout'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        tx_type: m['tx_type'] is String ? m['tx_type'] : null,
        user_data: m['user_data'] is String ? m['user_data'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != actual_bonus_point) {
      m['actual_bonus_point'] = actual_bonus_point;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != balance_amount) {
      m['balance_amount'] = balance_amount;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ec_data) {
      m['ec_data'] = ec_data;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != exchange_fee) {
      m['exchange_fee'] = exchange_fee;
    }
    if (null != exchange_rate) {
      m['exchange_rate'] = exchange_rate;
    }
    if (null != language_code) {
      m['language_code'] = language_code;
    }
    if (null != merchant_address) {
      m['merchant_address'] = merchant_address;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != message_type) {
      m['message_type'] = message_type;
    }
    if (null != original_trace_number) {
      m['original_trace_number'] = original_trace_number;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_footer) {
      m['receipt_footer'] = receipt_footer;
    }
    if (null != receipt_header) {
      m['receipt_header'] = receipt_header;
    }
    if (null != receipt_layout) {
      m['receipt_layout'] = receipt_layout;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != tx_type) {
      m['tx_type'] = tx_type;
    }
    if (null != user_data) {
      m['user_data'] = user_data;
    }
    return m;
  }
}

class CancelTransactionCreateData {
  /// STRING
  String? acquirer_id;
  /// STRING
  String? acquirer_name;
  /// STRING
  String? actual_bonus_point;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorization_code;
  /// STRING
  String? balance_amount;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_number;
  /// INTEGER (required at the API)
  int? client_id;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ec_data;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_data;
  /// INTEGER
  int? exchange_fee;
  /// STRING
  String? exchange_rate;
  /// STRING
  String? language_code;
  /// STRING
  String? merchant_address;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? message_type;
  /// INTEGER
  int? original_trace_number;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_footer;
  /// STRING
  String? receipt_header;
  /// INTEGER
  int? receipt_layout;
  /// STRING (required at the API)
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? serial_number;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// STRING
  String? tx_type;
  /// STRING
  String? user_data;

  CancelTransactionCreateData({
    this.acquirer_id,
    this.acquirer_name,
    this.actual_bonus_point,
    this.amount,
    this.authorization_code,
    this.balance_amount,
    this.card_brand,
    this.card_number,
    this.client_id,
    this.currency,
    this.cvc,
    this.ec_data,
    this.ecr_data,
    this.emv_data,
    this.exchange_fee,
    this.exchange_rate,
    this.language_code,
    this.merchant_address,
    this.merchant_name,
    this.merchant_number,
    this.message_type,
    this.original_trace_number,
    this.original_transaction_id,
    this.password,
    this.payment_reason,
    this.receipt_footer,
    this.receipt_header,
    this.receipt_layout,
    this.receipt_number,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.svc,
    this.terminal_id,
    this.terminal_location,
    this.trace_number,
    this.transaction_date,
    this.transaction_id,
    this.tx_type,
    this.user_data,
  });

  factory CancelTransactionCreateData.fromMap(Map<String, dynamic> m) => CancelTransactionCreateData(
        acquirer_id: m['acquirer_id'] is String ? m['acquirer_id'] : null,
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        actual_bonus_point: m['actual_bonus_point'] is String ? m['actual_bonus_point'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        balance_amount: m['balance_amount'] is String ? m['balance_amount'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ec_data: m['ec_data'] is String ? m['ec_data'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        exchange_fee: m['exchange_fee'] is int ? m['exchange_fee'] : null,
        exchange_rate: m['exchange_rate'] is String ? m['exchange_rate'] : null,
        language_code: m['language_code'] is String ? m['language_code'] : null,
        merchant_address: m['merchant_address'] is String ? m['merchant_address'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        message_type: m['message_type'] is String ? m['message_type'] : null,
        original_trace_number: m['original_trace_number'] is int ? m['original_trace_number'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_footer: m['receipt_footer'] is String ? m['receipt_footer'] : null,
        receipt_header: m['receipt_header'] is String ? m['receipt_header'] : null,
        receipt_layout: m['receipt_layout'] is int ? m['receipt_layout'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        tx_type: m['tx_type'] is String ? m['tx_type'] : null,
        user_data: m['user_data'] is String ? m['user_data'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != actual_bonus_point) {
      m['actual_bonus_point'] = actual_bonus_point;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != balance_amount) {
      m['balance_amount'] = balance_amount;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ec_data) {
      m['ec_data'] = ec_data;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != exchange_fee) {
      m['exchange_fee'] = exchange_fee;
    }
    if (null != exchange_rate) {
      m['exchange_rate'] = exchange_rate;
    }
    if (null != language_code) {
      m['language_code'] = language_code;
    }
    if (null != merchant_address) {
      m['merchant_address'] = merchant_address;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != message_type) {
      m['message_type'] = message_type;
    }
    if (null != original_trace_number) {
      m['original_trace_number'] = original_trace_number;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_footer) {
      m['receipt_footer'] = receipt_footer;
    }
    if (null != receipt_header) {
      m['receipt_header'] = receipt_header;
    }
    if (null != receipt_layout) {
      m['receipt_layout'] = receipt_layout;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != tx_type) {
      m['tx_type'] = tx_type;
    }
    if (null != user_data) {
      m['user_data'] = user_data;
    }
    return m;
  }
}

class CheckCardBlackListed {
  /// STRING
  String? card_no;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  CheckCardBlackListed({
    this.card_no,
    this.response_code,
    this.response_message,
  });

  factory CheckCardBlackListed.fromMap(Map<String, dynamic> m) => CheckCardBlackListed(
        card_no: m['card_no'] is String ? m['card_no'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != card_no) {
      m['card_no'] = card_no;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class CheckCardBlackListedCreateData {
  /// STRING
  String? card_no;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  CheckCardBlackListedCreateData({
    this.card_no,
    this.response_code,
    this.response_message,
  });

  factory CheckCardBlackListedCreateData.fromMap(Map<String, dynamic> m) => CheckCardBlackListedCreateData(
        card_no: m['card_no'] is String ? m['card_no'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != card_no) {
      m['card_no'] = card_no;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class CreateProduct {
  /// INTEGER
  int? acquirer_id;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;
  /// STRING (required at the API)
  String? template_type;
  /// STRING (required at the API)
  String? template_xml;
  /// STRING (required at the API)
  String? terminal_type;

  CreateProduct({
    this.acquirer_id,
    this.response_code,
    this.response_message,
    this.template_name,
    this.template_type,
    this.template_xml,
    this.terminal_type,
  });

  factory CreateProduct.fromMap(Map<String, dynamic> m) => CreateProduct(
        acquirer_id: m['acquirer_id'] is int ? m['acquirer_id'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        template_type: m['template_type'] is String ? m['template_type'] : null,
        template_xml: m['template_xml'] is String ? m['template_xml'] : null,
        terminal_type: m['terminal_type'] is String ? m['terminal_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != template_type) {
      m['template_type'] = template_type;
    }
    if (null != template_xml) {
      m['template_xml'] = template_xml;
    }
    if (null != terminal_type) {
      m['terminal_type'] = terminal_type;
    }
    return m;
  }
}

class CreateProductCreateData {
  /// INTEGER
  int? acquirer_id;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;
  /// STRING (required at the API)
  String? template_type;
  /// STRING (required at the API)
  String? template_xml;
  /// STRING (required at the API)
  String? terminal_type;

  CreateProductCreateData({
    this.acquirer_id,
    this.response_code,
    this.response_message,
    this.template_name,
    this.template_type,
    this.template_xml,
    this.terminal_type,
  });

  factory CreateProductCreateData.fromMap(Map<String, dynamic> m) => CreateProductCreateData(
        acquirer_id: m['acquirer_id'] is int ? m['acquirer_id'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        template_type: m['template_type'] is String ? m['template_type'] : null,
        template_xml: m['template_xml'] is String ? m['template_xml'] : null,
        terminal_type: m['terminal_type'] is String ? m['terminal_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != template_type) {
      m['template_type'] = template_type;
    }
    if (null != template_xml) {
      m['template_xml'] = template_xml;
    }
    if (null != terminal_type) {
      m['terminal_type'] = terminal_type;
    }
    return m;
  }
}

class DeactivateTerminal {
  /// STRING
  String? corporate_uuid;
  /// STRING (required at the API)
  String? deactivation_reason;
  /// STRING
  String? package_order_uuid;
  /// STRING
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;

  DeactivateTerminal({
    this.corporate_uuid,
    this.deactivation_reason,
    this.package_order_uuid,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.terminal_id,
  });

  factory DeactivateTerminal.fromMap(Map<String, dynamic> m) => DeactivateTerminal(
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        deactivation_reason: m['deactivation_reason'] is String ? m['deactivation_reason'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != deactivation_reason) {
      m['deactivation_reason'] = deactivation_reason;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class DeactivateTerminalCreateData {
  /// STRING
  String? corporate_uuid;
  /// STRING (required at the API)
  String? deactivation_reason;
  /// STRING
  String? package_order_uuid;
  /// STRING
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;

  DeactivateTerminalCreateData({
    this.corporate_uuid,
    this.deactivation_reason,
    this.package_order_uuid,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.terminal_id,
  });

  factory DeactivateTerminalCreateData.fromMap(Map<String, dynamic> m) => DeactivateTerminalCreateData(
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        deactivation_reason: m['deactivation_reason'] is String ? m['deactivation_reason'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != deactivation_reason) {
      m['deactivation_reason'] = deactivation_reason;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class DigitalServicesApi {
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER
  int? tx_count;
  /// STRING
  String? tx_id_end;
  /// STRING
  String? tx_id_start;
  /// INTEGER
  int? tx_seq_no_end;
  /// INTEGER
  int? tx_seq_no_start;
  /// INTEGER
  int? tx_total;

  DigitalServicesApi({
    this.clearing_date_from,
    this.clearing_date_to,
    this.response_code,
    this.response_message,
    this.tx_count,
    this.tx_id_end,
    this.tx_id_start,
    this.tx_seq_no_end,
    this.tx_seq_no_start,
    this.tx_total,
  });

  factory DigitalServicesApi.fromMap(Map<String, dynamic> m) => DigitalServicesApi(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        tx_count: m['tx_count'] is int ? m['tx_count'] : null,
        tx_id_end: m['tx_id_end'] is String ? m['tx_id_end'] : null,
        tx_id_start: m['tx_id_start'] is String ? m['tx_id_start'] : null,
        tx_seq_no_end: m['tx_seq_no_end'] is int ? m['tx_seq_no_end'] : null,
        tx_seq_no_start: m['tx_seq_no_start'] is int ? m['tx_seq_no_start'] : null,
        tx_total: m['tx_total'] is int ? m['tx_total'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != tx_count) {
      m['tx_count'] = tx_count;
    }
    if (null != tx_id_end) {
      m['tx_id_end'] = tx_id_end;
    }
    if (null != tx_id_start) {
      m['tx_id_start'] = tx_id_start;
    }
    if (null != tx_seq_no_end) {
      m['tx_seq_no_end'] = tx_seq_no_end;
    }
    if (null != tx_seq_no_start) {
      m['tx_seq_no_start'] = tx_seq_no_start;
    }
    if (null != tx_total) {
      m['tx_total'] = tx_total;
    }
    return m;
  }
}

class DigitalServicesApiLoadMatch {
  /// STRING
  String? clearing_date_from;
  /// STRING
  String? clearing_date_to;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER
  int? tx_count;
  /// STRING
  String? tx_id_end;
  /// STRING
  String? tx_id_start;
  /// INTEGER
  int? tx_seq_no_end;
  /// INTEGER
  int? tx_seq_no_start;
  /// INTEGER
  int? tx_total;

  DigitalServicesApiLoadMatch({
    this.clearing_date_from,
    this.clearing_date_to,
    this.response_code,
    this.response_message,
    this.tx_count,
    this.tx_id_end,
    this.tx_id_start,
    this.tx_seq_no_end,
    this.tx_seq_no_start,
    this.tx_total,
  });

  factory DigitalServicesApiLoadMatch.fromMap(Map<String, dynamic> m) => DigitalServicesApiLoadMatch(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        tx_count: m['tx_count'] is int ? m['tx_count'] : null,
        tx_id_end: m['tx_id_end'] is String ? m['tx_id_end'] : null,
        tx_id_start: m['tx_id_start'] is String ? m['tx_id_start'] : null,
        tx_seq_no_end: m['tx_seq_no_end'] is int ? m['tx_seq_no_end'] : null,
        tx_seq_no_start: m['tx_seq_no_start'] is int ? m['tx_seq_no_start'] : null,
        tx_total: m['tx_total'] is int ? m['tx_total'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != tx_count) {
      m['tx_count'] = tx_count;
    }
    if (null != tx_id_end) {
      m['tx_id_end'] = tx_id_end;
    }
    if (null != tx_id_start) {
      m['tx_id_start'] = tx_id_start;
    }
    if (null != tx_seq_no_end) {
      m['tx_seq_no_end'] = tx_seq_no_end;
    }
    if (null != tx_seq_no_start) {
      m['tx_seq_no_start'] = tx_seq_no_start;
    }
    if (null != tx_total) {
      m['tx_total'] = tx_total;
    }
    return m;
  }
}

class DigitalServicesApiCreateData {
  /// STRING
  String? file_id;

  DigitalServicesApiCreateData({
    this.file_id,
  });

  factory DigitalServicesApiCreateData.fromMap(Map<String, dynamic> m) => DigitalServicesApiCreateData(
        file_id: m['file_id'] is String ? m['file_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != file_id) {
      m['file_id'] = file_id;
    }
    return m;
  }
}

class EcDataEcom {
  /// STRING
  String? ecom_data;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING (required at the API)
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;

  EcDataEcom({
    this.ecom_data,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.transaction_type,
  });

  factory EcDataEcom.fromMap(Map<String, dynamic> m) => EcDataEcom(
        ecom_data: m['ecom_data'] is String ? m['ecom_data'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecom_data) {
      m['ecom_data'] = ecom_data;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class EcDataEcomCreateData {
  /// STRING
  String? ecom_data;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING (required at the API)
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;

  EcDataEcomCreateData({
    this.ecom_data,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.transaction_type,
  });

  factory EcDataEcomCreateData.fromMap(Map<String, dynamic> m) => EcDataEcomCreateData(
        ecom_data: m['ecom_data'] is String ? m['ecom_data'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecom_data) {
      m['ecom_data'] = ecom_data;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class EcomParameter {
  /// STRING
  String? ecom_pass;
  /// STRING
  String? ecom_skey;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;

  EcomParameter({
    this.ecom_pass,
    this.ecom_skey,
    this.response_code,
    this.response_message,
    this.terminal_id,
  });

  factory EcomParameter.fromMap(Map<String, dynamic> m) => EcomParameter(
        ecom_pass: m['ecom_pass'] is String ? m['ecom_pass'] : null,
        ecom_skey: m['ecom_skey'] is String ? m['ecom_skey'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecom_pass) {
      m['ecom_pass'] = ecom_pass;
    }
    if (null != ecom_skey) {
      m['ecom_skey'] = ecom_skey;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class EcomParameterCreateData {
  /// STRING
  String? ecom_pass;
  /// STRING
  String? ecom_skey;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;

  EcomParameterCreateData({
    this.ecom_pass,
    this.ecom_skey,
    this.response_code,
    this.response_message,
    this.terminal_id,
  });

  factory EcomParameterCreateData.fromMap(Map<String, dynamic> m) => EcomParameterCreateData(
        ecom_pass: m['ecom_pass'] is String ? m['ecom_pass'] : null,
        ecom_skey: m['ecom_skey'] is String ? m['ecom_skey'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecom_pass) {
      m['ecom_pass'] = ecom_pass;
    }
    if (null != ecom_skey) {
      m['ecom_skey'] = ecom_skey;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class EcrData {
  /// STRING
  String? ecr_data;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING (required at the API)
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;

  EcrData({
    this.ecr_data,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.transaction_type,
  });

  factory EcrData.fromMap(Map<String, dynamic> m) => EcrData(
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class EcrDataCreateData {
  /// STRING
  String? ecr_data;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING (required at the API)
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;

  EcrDataCreateData({
    this.ecr_data,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.transaction_type,
  });

  factory EcrDataCreateData.fromMap(Map<String, dynamic> m) => EcrDataCreateData(
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class EmvData {
  /// STRING
  String? emv_data;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING (required at the API)
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;

  EmvData({
    this.emv_data,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.transaction_type,
  });

  factory EmvData.fromMap(Map<String, dynamic> m) => EmvData(
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class EmvDataCreateData {
  /// STRING
  String? emv_data;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING (required at the API)
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;

  EmvDataCreateData({
    this.emv_data,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.transaction_type,
  });

  factory EmvDataCreateData.fromMap(Map<String, dynamic> m) => EmvDataCreateData(
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class EnableAcquiring {
  /// INTEGER
  int? account_no;
  /// OBJECT
  Map<String, dynamic>? additional_data;
  /// STRING (required at the API)
  String? corporate_uuid;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER (required at the API)
  int? merchant_category_code;
  /// STRING (required at the API)
  String? package_order_uuid;
  /// STRING (required at the API)
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER
  int? sorting_code;
  /// STRING (required at the API)
  String? template_name;
  /// ARRAY
  List<dynamic>? terminal_id;
  /// STRING
  String? terminal_id_acq;
  /// STRING
  String? vu_nummer;

  EnableAcquiring({
    this.account_no,
    this.additional_data,
    this.corporate_uuid,
    this.currency,
    this.merchant_category_code,
    this.package_order_uuid,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.sorting_code,
    this.template_name,
    this.terminal_id,
    this.terminal_id_acq,
    this.vu_nummer,
  });

  factory EnableAcquiring.fromMap(Map<String, dynamic> m) => EnableAcquiring(
        account_no: m['account_no'] is int ? m['account_no'] : null,
        additional_data: m['additional_data'] is Map<String, dynamic> ? m['additional_data'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        merchant_category_code: m['merchant_category_code'] is int ? m['merchant_category_code'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sorting_code: m['sorting_code'] is int ? m['sorting_code'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        terminal_id: m['terminal_id'] is List<dynamic> ? m['terminal_id'] : null,
        terminal_id_acq: m['terminal_id_acq'] is String ? m['terminal_id_acq'] : null,
        vu_nummer: m['vu_nummer'] is String ? m['vu_nummer'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != account_no) {
      m['account_no'] = account_no;
    }
    if (null != additional_data) {
      m['additional_data'] = additional_data;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != merchant_category_code) {
      m['merchant_category_code'] = merchant_category_code;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != sorting_code) {
      m['sorting_code'] = sorting_code;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_id_acq) {
      m['terminal_id_acq'] = terminal_id_acq;
    }
    if (null != vu_nummer) {
      m['vu_nummer'] = vu_nummer;
    }
    return m;
  }
}

class EnableAcquiringCreateData {
  /// INTEGER
  int? account_no;
  /// OBJECT
  Map<String, dynamic>? additional_data;
  /// STRING (required at the API)
  String? corporate_uuid;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER (required at the API)
  int? merchant_category_code;
  /// STRING (required at the API)
  String? package_order_uuid;
  /// STRING (required at the API)
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER
  int? sorting_code;
  /// STRING (required at the API)
  String? template_name;
  /// ARRAY
  List<dynamic>? terminal_id;
  /// STRING
  String? terminal_id_acq;
  /// STRING
  String? vu_nummer;

  EnableAcquiringCreateData({
    this.account_no,
    this.additional_data,
    this.corporate_uuid,
    this.currency,
    this.merchant_category_code,
    this.package_order_uuid,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.sorting_code,
    this.template_name,
    this.terminal_id,
    this.terminal_id_acq,
    this.vu_nummer,
  });

  factory EnableAcquiringCreateData.fromMap(Map<String, dynamic> m) => EnableAcquiringCreateData(
        account_no: m['account_no'] is int ? m['account_no'] : null,
        additional_data: m['additional_data'] is Map<String, dynamic> ? m['additional_data'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        merchant_category_code: m['merchant_category_code'] is int ? m['merchant_category_code'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sorting_code: m['sorting_code'] is int ? m['sorting_code'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        terminal_id: m['terminal_id'] is List<dynamic> ? m['terminal_id'] : null,
        terminal_id_acq: m['terminal_id_acq'] is String ? m['terminal_id_acq'] : null,
        vu_nummer: m['vu_nummer'] is String ? m['vu_nummer'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != account_no) {
      m['account_no'] = account_no;
    }
    if (null != additional_data) {
      m['additional_data'] = additional_data;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != merchant_category_code) {
      m['merchant_category_code'] = merchant_category_code;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != sorting_code) {
      m['sorting_code'] = sorting_code;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_id_acq) {
      m['terminal_id_acq'] = terminal_id_acq;
    }
    if (null != vu_nummer) {
      m['vu_nummer'] = vu_nummer;
    }
    return m;
  }
}

class GetMerchantContractNumber {
  /// STRING (required at the API)
  String? merchant_contract_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  GetMerchantContractNumber({
    this.merchant_contract_number,
    this.response_code,
    this.response_message,
  });

  factory GetMerchantContractNumber.fromMap(Map<String, dynamic> m) => GetMerchantContractNumber(
        merchant_contract_number: m['merchant_contract_number'] is String ? m['merchant_contract_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != merchant_contract_number) {
      m['merchant_contract_number'] = merchant_contract_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class GetMerchantContractNumberCreateData {
  /// STRING (required at the API)
  String? merchant_contract_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  GetMerchantContractNumberCreateData({
    this.merchant_contract_number,
    this.response_code,
    this.response_message,
  });

  factory GetMerchantContractNumberCreateData.fromMap(Map<String, dynamic> m) => GetMerchantContractNumberCreateData(
        merchant_contract_number: m['merchant_contract_number'] is String ? m['merchant_contract_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != merchant_contract_number) {
      m['merchant_contract_number'] = merchant_contract_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class GetTemplateXml {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;

  GetTemplateXml({
    this.response_code,
    this.response_message,
    this.template_name,
  });

  factory GetTemplateXml.fromMap(Map<String, dynamic> m) => GetTemplateXml(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    return m;
  }
}

class GetTemplateXmlCreateData {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;

  GetTemplateXmlCreateData({
    this.response_code,
    this.response_message,
    this.template_name,
  });

  factory GetTemplateXmlCreateData.fromMap(Map<String, dynamic> m) => GetTemplateXmlCreateData(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    return m;
  }
}

class IntroduceMandator {
  /// STRING (required at the API)
  String? mandator_name;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  IntroduceMandator({
    this.mandator_name,
    this.response_code,
    this.response_message,
  });

  factory IntroduceMandator.fromMap(Map<String, dynamic> m) => IntroduceMandator(
        mandator_name: m['mandator_name'] is String ? m['mandator_name'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandator_name) {
      m['mandator_name'] = mandator_name;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class IntroduceMandatorCreateData {
  /// STRING (required at the API)
  String? mandator_name;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  IntroduceMandatorCreateData({
    this.mandator_name,
    this.response_code,
    this.response_message,
  });

  factory IntroduceMandatorCreateData.fromMap(Map<String, dynamic> m) => IntroduceMandatorCreateData(
        mandator_name: m['mandator_name'] is String ? m['mandator_name'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandator_name) {
      m['mandator_name'] = mandator_name;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class IntroducePackage {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? terminal_template_description;

  IntroducePackage({
    this.response_code,
    this.response_message,
    this.terminal_template_description,
  });

  factory IntroducePackage.fromMap(Map<String, dynamic> m) => IntroducePackage(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_template_description: m['terminal_template_description'] is String ? m['terminal_template_description'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_template_description) {
      m['terminal_template_description'] = terminal_template_description;
    }
    return m;
  }
}

class IntroducePackageCreateData {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? terminal_template_description;

  IntroducePackageCreateData({
    this.response_code,
    this.response_message,
    this.terminal_template_description,
  });

  factory IntroducePackageCreateData.fromMap(Map<String, dynamic> m) => IntroducePackageCreateData(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_template_description: m['terminal_template_description'] is String ? m['terminal_template_description'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_template_description) {
      m['terminal_template_description'] = terminal_template_description;
    }
    return m;
  }
}

class KeepAlive {
  /// STRING
  String? hwserialno;
  /// STRING
  String? ka_date_time_from;
  /// STRING
  String? ka_date_time_to;
  /// ARRAY
  List<dynamic>? keep_alive_data;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? terminal_date_time_from;
  /// STRING
  String? terminal_date_time_to;
  /// INTEGER
  int? terminal_id;

  KeepAlive({
    this.hwserialno,
    this.ka_date_time_from,
    this.ka_date_time_to,
    this.keep_alive_data,
    this.pagination,
    this.response_code,
    this.response_message,
    this.terminal_date_time_from,
    this.terminal_date_time_to,
    this.terminal_id,
  });

  factory KeepAlive.fromMap(Map<String, dynamic> m) => KeepAlive(
        hwserialno: m['hwserialno'] is String ? m['hwserialno'] : null,
        ka_date_time_from: m['ka_date_time_from'] is String ? m['ka_date_time_from'] : null,
        ka_date_time_to: m['ka_date_time_to'] is String ? m['ka_date_time_to'] : null,
        keep_alive_data: m['keep_alive_data'] is List<dynamic> ? m['keep_alive_data'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_date_time_from: m['terminal_date_time_from'] is String ? m['terminal_date_time_from'] : null,
        terminal_date_time_to: m['terminal_date_time_to'] is String ? m['terminal_date_time_to'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != hwserialno) {
      m['hwserialno'] = hwserialno;
    }
    if (null != ka_date_time_from) {
      m['ka_date_time_from'] = ka_date_time_from;
    }
    if (null != ka_date_time_to) {
      m['ka_date_time_to'] = ka_date_time_to;
    }
    if (null != keep_alive_data) {
      m['keep_alive_data'] = keep_alive_data;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_date_time_from) {
      m['terminal_date_time_from'] = terminal_date_time_from;
    }
    if (null != terminal_date_time_to) {
      m['terminal_date_time_to'] = terminal_date_time_to;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class KeepAliveCreateData {
  /// STRING
  String? hwserialno;
  /// STRING
  String? ka_date_time_from;
  /// STRING
  String? ka_date_time_to;
  /// ARRAY
  List<dynamic>? keep_alive_data;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? terminal_date_time_from;
  /// STRING
  String? terminal_date_time_to;
  /// INTEGER
  int? terminal_id;

  KeepAliveCreateData({
    this.hwserialno,
    this.ka_date_time_from,
    this.ka_date_time_to,
    this.keep_alive_data,
    this.pagination,
    this.response_code,
    this.response_message,
    this.terminal_date_time_from,
    this.terminal_date_time_to,
    this.terminal_id,
  });

  factory KeepAliveCreateData.fromMap(Map<String, dynamic> m) => KeepAliveCreateData(
        hwserialno: m['hwserialno'] is String ? m['hwserialno'] : null,
        ka_date_time_from: m['ka_date_time_from'] is String ? m['ka_date_time_from'] : null,
        ka_date_time_to: m['ka_date_time_to'] is String ? m['ka_date_time_to'] : null,
        keep_alive_data: m['keep_alive_data'] is List<dynamic> ? m['keep_alive_data'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_date_time_from: m['terminal_date_time_from'] is String ? m['terminal_date_time_from'] : null,
        terminal_date_time_to: m['terminal_date_time_to'] is String ? m['terminal_date_time_to'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != hwserialno) {
      m['hwserialno'] = hwserialno;
    }
    if (null != ka_date_time_from) {
      m['ka_date_time_from'] = ka_date_time_from;
    }
    if (null != ka_date_time_to) {
      m['ka_date_time_to'] = ka_date_time_to;
    }
    if (null != keep_alive_data) {
      m['keep_alive_data'] = keep_alive_data;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_date_time_from) {
      m['terminal_date_time_from'] = terminal_date_time_from;
    }
    if (null != terminal_date_time_to) {
      m['terminal_date_time_to'] = terminal_date_time_to;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class ListTerminal {
  /// ARRAY
  List<dynamic>? corporate_uuid;
  /// OBJECT
  Map<String, dynamic>? filter;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY
  List<dynamic>? terminal;

  ListTerminal({
    this.corporate_uuid,
    this.filter,
    this.pagination,
    this.response_code,
    this.response_message,
    this.terminal,
  });

  factory ListTerminal.fromMap(Map<String, dynamic> m) => ListTerminal(
        corporate_uuid: m['corporate_uuid'] is List<dynamic> ? m['corporate_uuid'] : null,
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal: m['terminal'] is List<dynamic> ? m['terminal'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal) {
      m['terminal'] = terminal;
    }
    return m;
  }
}

class ListTerminalCreateData {
  /// ARRAY
  List<dynamic>? corporate_uuid;
  /// OBJECT
  Map<String, dynamic>? filter;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY
  List<dynamic>? terminal;

  ListTerminalCreateData({
    this.corporate_uuid,
    this.filter,
    this.pagination,
    this.response_code,
    this.response_message,
    this.terminal,
  });

  factory ListTerminalCreateData.fromMap(Map<String, dynamic> m) => ListTerminalCreateData(
        corporate_uuid: m['corporate_uuid'] is List<dynamic> ? m['corporate_uuid'] : null,
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal: m['terminal'] is List<dynamic> ? m['terminal'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal) {
      m['terminal'] = terminal;
    }
    return m;
  }
}

class MandatorClearingExport {
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// ARRAY
  List<dynamic>? record;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  MandatorClearingExport({
    this.clearing_date_from,
    this.clearing_date_to,
    this.pagination,
    this.record,
    this.response_code,
    this.response_message,
  });

  factory MandatorClearingExport.fromMap(Map<String, dynamic> m) => MandatorClearingExport(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        record: m['record'] is List<dynamic> ? m['record'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != record) {
      m['record'] = record;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class MandatorClearingExportCreateData {
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// ARRAY
  List<dynamic>? record;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  MandatorClearingExportCreateData({
    this.clearing_date_from,
    this.clearing_date_to,
    this.pagination,
    this.record,
    this.response_code,
    this.response_message,
  });

  factory MandatorClearingExportCreateData.fromMap(Map<String, dynamic> m) => MandatorClearingExportCreateData(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        record: m['record'] is List<dynamic> ? m['record'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != record) {
      m['record'] = record;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class MandatorClearingExportDownload {
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// STRING
  String? file_id;
  /// STRING
  String? filename_template;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? status;

  MandatorClearingExportDownload({
    this.clearing_date_from,
    this.clearing_date_to,
    this.file_id,
    this.filename_template,
    this.response_code,
    this.response_message,
    this.status,
  });

  factory MandatorClearingExportDownload.fromMap(Map<String, dynamic> m) => MandatorClearingExportDownload(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        file_id: m['file_id'] is String ? m['file_id'] : null,
        filename_template: m['filename_template'] is String ? m['filename_template'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        status: m['status'] is String ? m['status'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != file_id) {
      m['file_id'] = file_id;
    }
    if (null != filename_template) {
      m['filename_template'] = filename_template;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// STRING
  String? file_id;
  /// STRING
  String? filename_template;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? status;

  MandatorClearingExportDownloadCreateData({
    this.clearing_date_from,
    this.clearing_date_to,
    this.file_id,
    this.filename_template,
    this.response_code,
    this.response_message,
    this.status,
  });

  factory MandatorClearingExportDownloadCreateData.fromMap(Map<String, dynamic> m) => MandatorClearingExportDownloadCreateData(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        file_id: m['file_id'] is String ? m['file_id'] : null,
        filename_template: m['filename_template'] is String ? m['filename_template'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        status: m['status'] is String ? m['status'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != file_id) {
      m['file_id'] = file_id;
    }
    if (null != filename_template) {
      m['filename_template'] = filename_template;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != status) {
      m['status'] = status;
    }
    return m;
  }
}

class MandatorClearingExportSummary {
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// ARRAY
  List<dynamic>? record;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  MandatorClearingExportSummary({
    this.clearing_date_from,
    this.clearing_date_to,
    this.record,
    this.response_code,
    this.response_message,
  });

  factory MandatorClearingExportSummary.fromMap(Map<String, dynamic> m) => MandatorClearingExportSummary(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        record: m['record'] is List<dynamic> ? m['record'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != record) {
      m['record'] = record;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class MandatorClearingExportSummaryCreateData {
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// ARRAY
  List<dynamic>? record;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  MandatorClearingExportSummaryCreateData({
    this.clearing_date_from,
    this.clearing_date_to,
    this.record,
    this.response_code,
    this.response_message,
  });

  factory MandatorClearingExportSummaryCreateData.fromMap(Map<String, dynamic> m) => MandatorClearingExportSummaryCreateData(
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        record: m['record'] is List<dynamic> ? m['record'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != record) {
      m['record'] = record;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class MerchantPortalServicesApi {
  /// STRING
  String? authorization_code;
  /// STRING
  String? card_brand;
  /// STRING
  String? clearing_amount_from;
  /// STRING
  String? clearing_amount_to;
  /// STRING
  String? clearing_currency;
  /// STRING
  String? clearing_status;
  /// STRING
  String? corporate_uuid;
  /// STRING
  String? order_by_transaction_date;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? receipt_number;
  /// STRING
  String? referenced_transaction_id;
  /// STRING
  String? retrieval_reference_number;
  /// INTEGER
  int? source_id;
  /// STRING
  String? tecsengine_response_code_from;
  /// STRING
  String? tecsengine_response_code_to;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? trace_number;
  /// STRING
  String? transaction_amount_from;
  /// STRING
  String? transaction_amount_to;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// STRING
  String? transaction_id;
  /// STRING
  String? transaction_type;
  /// STRING
  String? wallet;

  MerchantPortalServicesApi({
    this.authorization_code,
    this.card_brand,
    this.clearing_amount_from,
    this.clearing_amount_to,
    this.clearing_currency,
    this.clearing_status,
    this.corporate_uuid,
    this.order_by_transaction_date,
    this.pagination,
    this.receipt_number,
    this.referenced_transaction_id,
    this.retrieval_reference_number,
    this.source_id,
    this.tecsengine_response_code_from,
    this.tecsengine_response_code_to,
    this.terminal_id,
    this.trace_number,
    this.transaction_amount_from,
    this.transaction_amount_to,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transaction_id,
    this.transaction_type,
    this.wallet,
  });

  factory MerchantPortalServicesApi.fromMap(Map<String, dynamic> m) => MerchantPortalServicesApi(
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        clearing_amount_from: m['clearing_amount_from'] is String ? m['clearing_amount_from'] : null,
        clearing_amount_to: m['clearing_amount_to'] is String ? m['clearing_amount_to'] : null,
        clearing_currency: m['clearing_currency'] is String ? m['clearing_currency'] : null,
        clearing_status: m['clearing_status'] is String ? m['clearing_status'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        order_by_transaction_date: m['order_by_transaction_date'] is String ? m['order_by_transaction_date'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        referenced_transaction_id: m['referenced_transaction_id'] is String ? m['referenced_transaction_id'] : null,
        retrieval_reference_number: m['retrieval_reference_number'] is String ? m['retrieval_reference_number'] : null,
        source_id: m['source_id'] is int ? m['source_id'] : null,
        tecsengine_response_code_from: m['tecsengine_response_code_from'] is String ? m['tecsengine_response_code_from'] : null,
        tecsengine_response_code_to: m['tecsengine_response_code_to'] is String ? m['tecsengine_response_code_to'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        trace_number: m['trace_number'] is String ? m['trace_number'] : null,
        transaction_amount_from: m['transaction_amount_from'] is String ? m['transaction_amount_from'] : null,
        transaction_amount_to: m['transaction_amount_to'] is String ? m['transaction_amount_to'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != clearing_amount_from) {
      m['clearing_amount_from'] = clearing_amount_from;
    }
    if (null != clearing_amount_to) {
      m['clearing_amount_to'] = clearing_amount_to;
    }
    if (null != clearing_currency) {
      m['clearing_currency'] = clearing_currency;
    }
    if (null != clearing_status) {
      m['clearing_status'] = clearing_status;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != order_by_transaction_date) {
      m['order_by_transaction_date'] = order_by_transaction_date;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != referenced_transaction_id) {
      m['referenced_transaction_id'] = referenced_transaction_id;
    }
    if (null != retrieval_reference_number) {
      m['retrieval_reference_number'] = retrieval_reference_number;
    }
    if (null != source_id) {
      m['source_id'] = source_id;
    }
    if (null != tecsengine_response_code_from) {
      m['tecsengine_response_code_from'] = tecsengine_response_code_from;
    }
    if (null != tecsengine_response_code_to) {
      m['tecsengine_response_code_to'] = tecsengine_response_code_to;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_amount_from) {
      m['transaction_amount_from'] = transaction_amount_from;
    }
    if (null != transaction_amount_to) {
      m['transaction_amount_to'] = transaction_amount_to;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    if (null != wallet) {
      m['wallet'] = wallet;
    }
    return m;
  }
}

class MerchantPortalServicesApiCreateData {
  /// STRING
  String? authorization_code;
  /// STRING
  String? card_brand;
  /// STRING
  String? clearing_amount_from;
  /// STRING
  String? clearing_amount_to;
  /// STRING
  String? clearing_currency;
  /// STRING
  String? clearing_status;
  /// STRING
  String? corporate_uuid;
  /// STRING
  String? order_by_transaction_date;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? receipt_number;
  /// STRING
  String? referenced_transaction_id;
  /// STRING
  String? retrieval_reference_number;
  /// INTEGER
  int? source_id;
  /// STRING
  String? tecsengine_response_code_from;
  /// STRING
  String? tecsengine_response_code_to;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? trace_number;
  /// STRING
  String? transaction_amount_from;
  /// STRING
  String? transaction_amount_to;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// STRING
  String? transaction_id;
  /// STRING
  String? transaction_type;
  /// STRING
  String? wallet;

  MerchantPortalServicesApiCreateData({
    this.authorization_code,
    this.card_brand,
    this.clearing_amount_from,
    this.clearing_amount_to,
    this.clearing_currency,
    this.clearing_status,
    this.corporate_uuid,
    this.order_by_transaction_date,
    this.pagination,
    this.receipt_number,
    this.referenced_transaction_id,
    this.retrieval_reference_number,
    this.source_id,
    this.tecsengine_response_code_from,
    this.tecsengine_response_code_to,
    this.terminal_id,
    this.trace_number,
    this.transaction_amount_from,
    this.transaction_amount_to,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transaction_id,
    this.transaction_type,
    this.wallet,
  });

  factory MerchantPortalServicesApiCreateData.fromMap(Map<String, dynamic> m) => MerchantPortalServicesApiCreateData(
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        clearing_amount_from: m['clearing_amount_from'] is String ? m['clearing_amount_from'] : null,
        clearing_amount_to: m['clearing_amount_to'] is String ? m['clearing_amount_to'] : null,
        clearing_currency: m['clearing_currency'] is String ? m['clearing_currency'] : null,
        clearing_status: m['clearing_status'] is String ? m['clearing_status'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        order_by_transaction_date: m['order_by_transaction_date'] is String ? m['order_by_transaction_date'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        referenced_transaction_id: m['referenced_transaction_id'] is String ? m['referenced_transaction_id'] : null,
        retrieval_reference_number: m['retrieval_reference_number'] is String ? m['retrieval_reference_number'] : null,
        source_id: m['source_id'] is int ? m['source_id'] : null,
        tecsengine_response_code_from: m['tecsengine_response_code_from'] is String ? m['tecsengine_response_code_from'] : null,
        tecsengine_response_code_to: m['tecsengine_response_code_to'] is String ? m['tecsengine_response_code_to'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        trace_number: m['trace_number'] is String ? m['trace_number'] : null,
        transaction_amount_from: m['transaction_amount_from'] is String ? m['transaction_amount_from'] : null,
        transaction_amount_to: m['transaction_amount_to'] is String ? m['transaction_amount_to'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != clearing_amount_from) {
      m['clearing_amount_from'] = clearing_amount_from;
    }
    if (null != clearing_amount_to) {
      m['clearing_amount_to'] = clearing_amount_to;
    }
    if (null != clearing_currency) {
      m['clearing_currency'] = clearing_currency;
    }
    if (null != clearing_status) {
      m['clearing_status'] = clearing_status;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != order_by_transaction_date) {
      m['order_by_transaction_date'] = order_by_transaction_date;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != referenced_transaction_id) {
      m['referenced_transaction_id'] = referenced_transaction_id;
    }
    if (null != retrieval_reference_number) {
      m['retrieval_reference_number'] = retrieval_reference_number;
    }
    if (null != source_id) {
      m['source_id'] = source_id;
    }
    if (null != tecsengine_response_code_from) {
      m['tecsengine_response_code_from'] = tecsengine_response_code_from;
    }
    if (null != tecsengine_response_code_to) {
      m['tecsengine_response_code_to'] = tecsengine_response_code_to;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_amount_from) {
      m['transaction_amount_from'] = transaction_amount_from;
    }
    if (null != transaction_amount_to) {
      m['transaction_amount_to'] = transaction_amount_to;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    if (null != wallet) {
      m['wallet'] = wallet;
    }
    return m;
  }
}

class MoveTid {
  /// ARRAY (required at the API)
  List<dynamic>? productorderuuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? target_packageorderuuid;
  /// STRING
  String? target_productorderuuid;

  MoveTid({
    this.productorderuuid,
    this.response_code,
    this.response_message,
    this.target_packageorderuuid,
    this.target_productorderuuid,
  });

  factory MoveTid.fromMap(Map<String, dynamic> m) => MoveTid(
        productorderuuid: m['productorderuuid'] is List<dynamic> ? m['productorderuuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        target_packageorderuuid: m['target_packageorderuuid'] is String ? m['target_packageorderuuid'] : null,
        target_productorderuuid: m['target_productorderuuid'] is String ? m['target_productorderuuid'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != productorderuuid) {
      m['productorderuuid'] = productorderuuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != target_packageorderuuid) {
      m['target_packageorderuuid'] = target_packageorderuuid;
    }
    if (null != target_productorderuuid) {
      m['target_productorderuuid'] = target_productorderuuid;
    }
    return m;
  }
}

class MoveTidCreateData {
  /// ARRAY (required at the API)
  List<dynamic>? productorderuuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? target_packageorderuuid;
  /// STRING
  String? target_productorderuuid;

  MoveTidCreateData({
    this.productorderuuid,
    this.response_code,
    this.response_message,
    this.target_packageorderuuid,
    this.target_productorderuuid,
  });

  factory MoveTidCreateData.fromMap(Map<String, dynamic> m) => MoveTidCreateData(
        productorderuuid: m['productorderuuid'] is List<dynamic> ? m['productorderuuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        target_packageorderuuid: m['target_packageorderuuid'] is String ? m['target_packageorderuuid'] : null,
        target_productorderuuid: m['target_productorderuuid'] is String ? m['target_productorderuuid'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != productorderuuid) {
      m['productorderuuid'] = productorderuuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != target_packageorderuuid) {
      m['target_packageorderuuid'] = target_packageorderuuid;
    }
    if (null != target_productorderuuid) {
      m['target_productorderuuid'] = target_productorderuuid;
    }
    return m;
  }
}

class PaymentManual {
  /// STRING
  String? acquirer_name;
  /// INTEGER (required at the API)
  int? amount;
  /// STRING
  String? authorization_number;
  /// STRING (required at the API)
  String? card_number;
  /// STRING
  String? card_type;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? date_time_tx;
  /// STRING (required at the API)
  String? exp_date;
  /// STRING
  String? merchant_id;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? terminal_id;
  /// STRING
  String? transaction_id;
  /// STRING (required at the API)
  String? txtype;

  PaymentManual({
    this.acquirer_name,
    this.amount,
    this.authorization_number,
    this.card_number,
    this.card_type,
    this.currency,
    this.cvc,
    this.date_time_tx,
    this.exp_date,
    this.merchant_id,
    this.original_transaction_id,
    this.password,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.txtype,
  });

  factory PaymentManual.fromMap(Map<String, dynamic> m) => PaymentManual(
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_number: m['authorization_number'] is String ? m['authorization_number'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        card_type: m['card_type'] is String ? m['card_type'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        date_time_tx: m['date_time_tx'] is String ? m['date_time_tx'] : null,
        exp_date: m['exp_date'] is String ? m['exp_date'] : null,
        merchant_id: m['merchant_id'] is String ? m['merchant_id'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        response_code: m['response_code'] is String ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is String ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_number) {
      m['authorization_number'] = authorization_number;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != card_type) {
      m['card_type'] = card_type;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != date_time_tx) {
      m['date_time_tx'] = date_time_tx;
    }
    if (null != exp_date) {
      m['exp_date'] = exp_date;
    }
    if (null != merchant_id) {
      m['merchant_id'] = merchant_id;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PaymentManualCreateData {
  /// STRING
  String? acquirer_name;
  /// INTEGER (required at the API)
  int? amount;
  /// STRING
  String? authorization_number;
  /// STRING (required at the API)
  String? card_number;
  /// STRING
  String? card_type;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? date_time_tx;
  /// STRING (required at the API)
  String? exp_date;
  /// STRING
  String? merchant_id;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? terminal_id;
  /// STRING
  String? transaction_id;
  /// STRING (required at the API)
  String? txtype;

  PaymentManualCreateData({
    this.acquirer_name,
    this.amount,
    this.authorization_number,
    this.card_number,
    this.card_type,
    this.currency,
    this.cvc,
    this.date_time_tx,
    this.exp_date,
    this.merchant_id,
    this.original_transaction_id,
    this.password,
    this.response_code,
    this.response_message,
    this.terminal_id,
    this.transaction_id,
    this.txtype,
  });

  factory PaymentManualCreateData.fromMap(Map<String, dynamic> m) => PaymentManualCreateData(
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_number: m['authorization_number'] is String ? m['authorization_number'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        card_type: m['card_type'] is String ? m['card_type'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        date_time_tx: m['date_time_tx'] is String ? m['date_time_tx'] : null,
        exp_date: m['exp_date'] is String ? m['exp_date'] : null,
        merchant_id: m['merchant_id'] is String ? m['merchant_id'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        response_code: m['response_code'] is String ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is String ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_number) {
      m['authorization_number'] = authorization_number;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != card_type) {
      m['card_type'] = card_type;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != date_time_tx) {
      m['date_time_tx'] = date_time_tx;
    }
    if (null != exp_date) {
      m['exp_date'] = exp_date;
    }
    if (null != merchant_id) {
      m['merchant_id'] = merchant_id;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PaymentSred {
  /// STRING
  String? acquirer_name;
  /// INTEGER (required at the API)
  int? amount;
  /// STRING
  String? authorization_number;
  /// STRING
  String? card_type;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? date_time_tx;
  /// STRING (required at the API)
  String? device_payload;
  /// STRING
  String? merchant_id;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sred;
  /// STRING
  String? terminal_id;
  /// STRING
  String? transaction_id;
  /// STRING (required at the API)
  String? txtype;

  PaymentSred({
    this.acquirer_name,
    this.amount,
    this.authorization_number,
    this.card_type,
    this.currency,
    this.date_time_tx,
    this.device_payload,
    this.merchant_id,
    this.original_transaction_id,
    this.password,
    this.response_code,
    this.response_message,
    this.sred,
    this.terminal_id,
    this.transaction_id,
    this.txtype,
  });

  factory PaymentSred.fromMap(Map<String, dynamic> m) => PaymentSred(
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_number: m['authorization_number'] is String ? m['authorization_number'] : null,
        card_type: m['card_type'] is String ? m['card_type'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        date_time_tx: m['date_time_tx'] is String ? m['date_time_tx'] : null,
        device_payload: m['device_payload'] is String ? m['device_payload'] : null,
        merchant_id: m['merchant_id'] is String ? m['merchant_id'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        response_code: m['response_code'] is String ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sred: m['sred'] is Map<String, dynamic> ? m['sred'] : null,
        terminal_id: m['terminal_id'] is String ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_number) {
      m['authorization_number'] = authorization_number;
    }
    if (null != card_type) {
      m['card_type'] = card_type;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != date_time_tx) {
      m['date_time_tx'] = date_time_tx;
    }
    if (null != device_payload) {
      m['device_payload'] = device_payload;
    }
    if (null != merchant_id) {
      m['merchant_id'] = merchant_id;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != sred) {
      m['sred'] = sred;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PaymentSredCreateData {
  /// STRING
  String? acquirer_name;
  /// INTEGER (required at the API)
  int? amount;
  /// STRING
  String? authorization_number;
  /// STRING
  String? card_type;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? date_time_tx;
  /// STRING (required at the API)
  String? device_payload;
  /// STRING
  String? merchant_id;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sred;
  /// STRING
  String? terminal_id;
  /// STRING
  String? transaction_id;
  /// STRING (required at the API)
  String? txtype;

  PaymentSredCreateData({
    this.acquirer_name,
    this.amount,
    this.authorization_number,
    this.card_type,
    this.currency,
    this.date_time_tx,
    this.device_payload,
    this.merchant_id,
    this.original_transaction_id,
    this.password,
    this.response_code,
    this.response_message,
    this.sred,
    this.terminal_id,
    this.transaction_id,
    this.txtype,
  });

  factory PaymentSredCreateData.fromMap(Map<String, dynamic> m) => PaymentSredCreateData(
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_number: m['authorization_number'] is String ? m['authorization_number'] : null,
        card_type: m['card_type'] is String ? m['card_type'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        date_time_tx: m['date_time_tx'] is String ? m['date_time_tx'] : null,
        device_payload: m['device_payload'] is String ? m['device_payload'] : null,
        merchant_id: m['merchant_id'] is String ? m['merchant_id'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        response_code: m['response_code'] is String ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sred: m['sred'] is Map<String, dynamic> ? m['sred'] : null,
        terminal_id: m['terminal_id'] is String ? m['terminal_id'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        txtype: m['txtype'] is String ? m['txtype'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_number) {
      m['authorization_number'] = authorization_number;
    }
    if (null != card_type) {
      m['card_type'] = card_type;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != date_time_tx) {
      m['date_time_tx'] = date_time_tx;
    }
    if (null != device_payload) {
      m['device_payload'] = device_payload;
    }
    if (null != merchant_id) {
      m['merchant_id'] = merchant_id;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != sred) {
      m['sred'] = sred;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != txtype) {
      m['txtype'] = txtype;
    }
    return m;
  }
}

class PreAuthTransactionCompletion {
  /// STRING
  String? acquirer_id;
  /// STRING
  String? acquirer_name;
  /// STRING
  String? actual_bonus_point;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorization_code;
  /// STRING
  String? balance_amount;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_number;
  /// STRING (required at the API)
  String? card_number_reference;
  /// INTEGER (required at the API)
  int? client_id;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ec_data;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_data;
  /// INTEGER
  int? exchange_fee;
  /// STRING
  String? exchange_rate;
  /// STRING
  String? language_code;
  /// STRING
  String? merchant_address;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? message_type;
  /// INTEGER
  int? original_trace_number;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_footer;
  /// STRING
  String? receipt_header;
  /// INTEGER
  int? receipt_layout;
  /// STRING (required at the API)
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? serial_number;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;
  /// STRING
  String? tx_type;
  /// STRING
  String? user_data;

  PreAuthTransactionCompletion({
    this.acquirer_id,
    this.acquirer_name,
    this.actual_bonus_point,
    this.amount,
    this.authorization_code,
    this.balance_amount,
    this.card_brand,
    this.card_number,
    this.card_number_reference,
    this.client_id,
    this.currency,
    this.cvc,
    this.ec_data,
    this.ecr_data,
    this.emv_data,
    this.exchange_fee,
    this.exchange_rate,
    this.language_code,
    this.merchant_address,
    this.merchant_name,
    this.merchant_number,
    this.message_type,
    this.original_trace_number,
    this.original_transaction_id,
    this.password,
    this.payment_reason,
    this.receipt_footer,
    this.receipt_header,
    this.receipt_layout,
    this.receipt_number,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.svc,
    this.terminal_id,
    this.terminal_location,
    this.trace_number,
    this.transaction_date,
    this.transaction_id,
    this.transaction_type,
    this.tx_type,
    this.user_data,
  });

  factory PreAuthTransactionCompletion.fromMap(Map<String, dynamic> m) => PreAuthTransactionCompletion(
        acquirer_id: m['acquirer_id'] is String ? m['acquirer_id'] : null,
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        actual_bonus_point: m['actual_bonus_point'] is String ? m['actual_bonus_point'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        balance_amount: m['balance_amount'] is String ? m['balance_amount'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        card_number_reference: m['card_number_reference'] is String ? m['card_number_reference'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ec_data: m['ec_data'] is String ? m['ec_data'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        exchange_fee: m['exchange_fee'] is int ? m['exchange_fee'] : null,
        exchange_rate: m['exchange_rate'] is String ? m['exchange_rate'] : null,
        language_code: m['language_code'] is String ? m['language_code'] : null,
        merchant_address: m['merchant_address'] is String ? m['merchant_address'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        message_type: m['message_type'] is String ? m['message_type'] : null,
        original_trace_number: m['original_trace_number'] is int ? m['original_trace_number'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_footer: m['receipt_footer'] is String ? m['receipt_footer'] : null,
        receipt_header: m['receipt_header'] is String ? m['receipt_header'] : null,
        receipt_layout: m['receipt_layout'] is int ? m['receipt_layout'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
        tx_type: m['tx_type'] is String ? m['tx_type'] : null,
        user_data: m['user_data'] is String ? m['user_data'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != actual_bonus_point) {
      m['actual_bonus_point'] = actual_bonus_point;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != balance_amount) {
      m['balance_amount'] = balance_amount;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != card_number_reference) {
      m['card_number_reference'] = card_number_reference;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ec_data) {
      m['ec_data'] = ec_data;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != exchange_fee) {
      m['exchange_fee'] = exchange_fee;
    }
    if (null != exchange_rate) {
      m['exchange_rate'] = exchange_rate;
    }
    if (null != language_code) {
      m['language_code'] = language_code;
    }
    if (null != merchant_address) {
      m['merchant_address'] = merchant_address;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != message_type) {
      m['message_type'] = message_type;
    }
    if (null != original_trace_number) {
      m['original_trace_number'] = original_trace_number;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_footer) {
      m['receipt_footer'] = receipt_footer;
    }
    if (null != receipt_header) {
      m['receipt_header'] = receipt_header;
    }
    if (null != receipt_layout) {
      m['receipt_layout'] = receipt_layout;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    if (null != tx_type) {
      m['tx_type'] = tx_type;
    }
    if (null != user_data) {
      m['user_data'] = user_data;
    }
    return m;
  }
}

class PreAuthTransactionCompletionCreateData {
  /// STRING
  String? acquirer_id;
  /// STRING
  String? acquirer_name;
  /// STRING
  String? actual_bonus_point;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorization_code;
  /// STRING
  String? balance_amount;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_number;
  /// STRING (required at the API)
  String? card_number_reference;
  /// INTEGER (required at the API)
  int? client_id;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ec_data;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_data;
  /// INTEGER
  int? exchange_fee;
  /// STRING
  String? exchange_rate;
  /// STRING
  String? language_code;
  /// STRING
  String? merchant_address;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? message_type;
  /// INTEGER
  int? original_trace_number;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_footer;
  /// STRING
  String? receipt_header;
  /// INTEGER
  int? receipt_layout;
  /// STRING (required at the API)
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? serial_number;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// STRING (required at the API)
  String? transaction_type;
  /// STRING
  String? tx_type;
  /// STRING
  String? user_data;

  PreAuthTransactionCompletionCreateData({
    this.acquirer_id,
    this.acquirer_name,
    this.actual_bonus_point,
    this.amount,
    this.authorization_code,
    this.balance_amount,
    this.card_brand,
    this.card_number,
    this.card_number_reference,
    this.client_id,
    this.currency,
    this.cvc,
    this.ec_data,
    this.ecr_data,
    this.emv_data,
    this.exchange_fee,
    this.exchange_rate,
    this.language_code,
    this.merchant_address,
    this.merchant_name,
    this.merchant_number,
    this.message_type,
    this.original_trace_number,
    this.original_transaction_id,
    this.password,
    this.payment_reason,
    this.receipt_footer,
    this.receipt_header,
    this.receipt_layout,
    this.receipt_number,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.svc,
    this.terminal_id,
    this.terminal_location,
    this.trace_number,
    this.transaction_date,
    this.transaction_id,
    this.transaction_type,
    this.tx_type,
    this.user_data,
  });

  factory PreAuthTransactionCompletionCreateData.fromMap(Map<String, dynamic> m) => PreAuthTransactionCompletionCreateData(
        acquirer_id: m['acquirer_id'] is String ? m['acquirer_id'] : null,
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        actual_bonus_point: m['actual_bonus_point'] is String ? m['actual_bonus_point'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        balance_amount: m['balance_amount'] is String ? m['balance_amount'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        card_number_reference: m['card_number_reference'] is String ? m['card_number_reference'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ec_data: m['ec_data'] is String ? m['ec_data'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        exchange_fee: m['exchange_fee'] is int ? m['exchange_fee'] : null,
        exchange_rate: m['exchange_rate'] is String ? m['exchange_rate'] : null,
        language_code: m['language_code'] is String ? m['language_code'] : null,
        merchant_address: m['merchant_address'] is String ? m['merchant_address'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        message_type: m['message_type'] is String ? m['message_type'] : null,
        original_trace_number: m['original_trace_number'] is int ? m['original_trace_number'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_footer: m['receipt_footer'] is String ? m['receipt_footer'] : null,
        receipt_header: m['receipt_header'] is String ? m['receipt_header'] : null,
        receipt_layout: m['receipt_layout'] is int ? m['receipt_layout'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
        tx_type: m['tx_type'] is String ? m['tx_type'] : null,
        user_data: m['user_data'] is String ? m['user_data'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != actual_bonus_point) {
      m['actual_bonus_point'] = actual_bonus_point;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != balance_amount) {
      m['balance_amount'] = balance_amount;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != card_number_reference) {
      m['card_number_reference'] = card_number_reference;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ec_data) {
      m['ec_data'] = ec_data;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != exchange_fee) {
      m['exchange_fee'] = exchange_fee;
    }
    if (null != exchange_rate) {
      m['exchange_rate'] = exchange_rate;
    }
    if (null != language_code) {
      m['language_code'] = language_code;
    }
    if (null != merchant_address) {
      m['merchant_address'] = merchant_address;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != message_type) {
      m['message_type'] = message_type;
    }
    if (null != original_trace_number) {
      m['original_trace_number'] = original_trace_number;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_footer) {
      m['receipt_footer'] = receipt_footer;
    }
    if (null != receipt_header) {
      m['receipt_header'] = receipt_header;
    }
    if (null != receipt_layout) {
      m['receipt_layout'] = receipt_layout;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    if (null != tx_type) {
      m['tx_type'] = tx_type;
    }
    if (null != user_data) {
      m['user_data'] = user_data;
    }
    return m;
  }
}

class ReactivateTerminal {
  /// STRING
  String? corporate_uuid;
  /// STRING
  String? package_order_uuid;
  /// STRING
  String? product_order_uuid;
  /// STRING (required at the API)
  String? reactivation_reason;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;

  ReactivateTerminal({
    this.corporate_uuid,
    this.package_order_uuid,
    this.product_order_uuid,
    this.reactivation_reason,
    this.response_code,
    this.response_message,
    this.terminal_id,
  });

  factory ReactivateTerminal.fromMap(Map<String, dynamic> m) => ReactivateTerminal(
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        reactivation_reason: m['reactivation_reason'] is String ? m['reactivation_reason'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != reactivation_reason) {
      m['reactivation_reason'] = reactivation_reason;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class ReactivateTerminalCreateData {
  /// STRING
  String? corporate_uuid;
  /// STRING
  String? package_order_uuid;
  /// STRING
  String? product_order_uuid;
  /// STRING (required at the API)
  String? reactivation_reason;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// INTEGER (required at the API)
  int? terminal_id;

  ReactivateTerminalCreateData({
    this.corporate_uuid,
    this.package_order_uuid,
    this.product_order_uuid,
    this.reactivation_reason,
    this.response_code,
    this.response_message,
    this.terminal_id,
  });

  factory ReactivateTerminalCreateData.fromMap(Map<String, dynamic> m) => ReactivateTerminalCreateData(
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        reactivation_reason: m['reactivation_reason'] is String ? m['reactivation_reason'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != reactivation_reason) {
      m['reactivation_reason'] = reactivation_reason;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class RefundTransaction {
  /// STRING
  String? acquirer_id;
  /// STRING
  String? acquirer_name;
  /// STRING
  String? actual_bonus_point;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorization_code;
  /// STRING
  String? balance_amount;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_number;
  /// INTEGER (required at the API)
  int? client_id;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ec_data;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_data;
  /// INTEGER
  int? exchange_fee;
  /// STRING
  String? exchange_rate;
  /// STRING
  String? language_code;
  /// STRING
  String? merchant_address;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? message_type;
  /// INTEGER
  int? original_trace_number;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_footer;
  /// STRING
  String? receipt_header;
  /// INTEGER
  int? receipt_layout;
  /// STRING (required at the API)
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? serial_number;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// STRING
  String? tx_type;
  /// STRING
  String? user_data;

  RefundTransaction({
    this.acquirer_id,
    this.acquirer_name,
    this.actual_bonus_point,
    this.amount,
    this.authorization_code,
    this.balance_amount,
    this.card_brand,
    this.card_number,
    this.client_id,
    this.currency,
    this.cvc,
    this.ec_data,
    this.ecr_data,
    this.emv_data,
    this.exchange_fee,
    this.exchange_rate,
    this.language_code,
    this.merchant_address,
    this.merchant_name,
    this.merchant_number,
    this.message_type,
    this.original_trace_number,
    this.original_transaction_id,
    this.password,
    this.payment_reason,
    this.receipt_footer,
    this.receipt_header,
    this.receipt_layout,
    this.receipt_number,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.svc,
    this.terminal_id,
    this.terminal_location,
    this.trace_number,
    this.transaction_date,
    this.transaction_id,
    this.tx_type,
    this.user_data,
  });

  factory RefundTransaction.fromMap(Map<String, dynamic> m) => RefundTransaction(
        acquirer_id: m['acquirer_id'] is String ? m['acquirer_id'] : null,
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        actual_bonus_point: m['actual_bonus_point'] is String ? m['actual_bonus_point'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        balance_amount: m['balance_amount'] is String ? m['balance_amount'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ec_data: m['ec_data'] is String ? m['ec_data'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        exchange_fee: m['exchange_fee'] is int ? m['exchange_fee'] : null,
        exchange_rate: m['exchange_rate'] is String ? m['exchange_rate'] : null,
        language_code: m['language_code'] is String ? m['language_code'] : null,
        merchant_address: m['merchant_address'] is String ? m['merchant_address'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        message_type: m['message_type'] is String ? m['message_type'] : null,
        original_trace_number: m['original_trace_number'] is int ? m['original_trace_number'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_footer: m['receipt_footer'] is String ? m['receipt_footer'] : null,
        receipt_header: m['receipt_header'] is String ? m['receipt_header'] : null,
        receipt_layout: m['receipt_layout'] is int ? m['receipt_layout'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        tx_type: m['tx_type'] is String ? m['tx_type'] : null,
        user_data: m['user_data'] is String ? m['user_data'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != actual_bonus_point) {
      m['actual_bonus_point'] = actual_bonus_point;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != balance_amount) {
      m['balance_amount'] = balance_amount;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ec_data) {
      m['ec_data'] = ec_data;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != exchange_fee) {
      m['exchange_fee'] = exchange_fee;
    }
    if (null != exchange_rate) {
      m['exchange_rate'] = exchange_rate;
    }
    if (null != language_code) {
      m['language_code'] = language_code;
    }
    if (null != merchant_address) {
      m['merchant_address'] = merchant_address;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != message_type) {
      m['message_type'] = message_type;
    }
    if (null != original_trace_number) {
      m['original_trace_number'] = original_trace_number;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_footer) {
      m['receipt_footer'] = receipt_footer;
    }
    if (null != receipt_header) {
      m['receipt_header'] = receipt_header;
    }
    if (null != receipt_layout) {
      m['receipt_layout'] = receipt_layout;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != tx_type) {
      m['tx_type'] = tx_type;
    }
    if (null != user_data) {
      m['user_data'] = user_data;
    }
    return m;
  }
}

class RefundTransactionCreateData {
  /// STRING
  String? acquirer_id;
  /// STRING
  String? acquirer_name;
  /// STRING
  String? actual_bonus_point;
  /// INTEGER
  int? amount;
  /// STRING
  String? authorization_code;
  /// STRING
  String? balance_amount;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_number;
  /// INTEGER (required at the API)
  int? client_id;
  /// STRING (required at the API)
  String? currency;
  /// STRING
  String? cvc;
  /// STRING
  String? ec_data;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_data;
  /// INTEGER
  int? exchange_fee;
  /// STRING
  String? exchange_rate;
  /// STRING
  String? language_code;
  /// STRING
  String? merchant_address;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? message_type;
  /// INTEGER
  int? original_trace_number;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? password;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_footer;
  /// STRING
  String? receipt_header;
  /// INTEGER
  int? receipt_layout;
  /// STRING (required at the API)
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? serial_number;
  /// STRING
  String? svc;
  /// INTEGER (required at the API)
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// STRING
  String? tx_type;
  /// STRING
  String? user_data;

  RefundTransactionCreateData({
    this.acquirer_id,
    this.acquirer_name,
    this.actual_bonus_point,
    this.amount,
    this.authorization_code,
    this.balance_amount,
    this.card_brand,
    this.card_number,
    this.client_id,
    this.currency,
    this.cvc,
    this.ec_data,
    this.ecr_data,
    this.emv_data,
    this.exchange_fee,
    this.exchange_rate,
    this.language_code,
    this.merchant_address,
    this.merchant_name,
    this.merchant_number,
    this.message_type,
    this.original_trace_number,
    this.original_transaction_id,
    this.password,
    this.payment_reason,
    this.receipt_footer,
    this.receipt_header,
    this.receipt_layout,
    this.receipt_number,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.svc,
    this.terminal_id,
    this.terminal_location,
    this.trace_number,
    this.transaction_date,
    this.transaction_id,
    this.tx_type,
    this.user_data,
  });

  factory RefundTransactionCreateData.fromMap(Map<String, dynamic> m) => RefundTransactionCreateData(
        acquirer_id: m['acquirer_id'] is String ? m['acquirer_id'] : null,
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        actual_bonus_point: m['actual_bonus_point'] is String ? m['actual_bonus_point'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        balance_amount: m['balance_amount'] is String ? m['balance_amount'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvc: m['cvc'] is String ? m['cvc'] : null,
        ec_data: m['ec_data'] is String ? m['ec_data'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_data: m['emv_data'] is String ? m['emv_data'] : null,
        exchange_fee: m['exchange_fee'] is int ? m['exchange_fee'] : null,
        exchange_rate: m['exchange_rate'] is String ? m['exchange_rate'] : null,
        language_code: m['language_code'] is String ? m['language_code'] : null,
        merchant_address: m['merchant_address'] is String ? m['merchant_address'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        message_type: m['message_type'] is String ? m['message_type'] : null,
        original_trace_number: m['original_trace_number'] is int ? m['original_trace_number'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        password: m['password'] is String ? m['password'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_footer: m['receipt_footer'] is String ? m['receipt_footer'] : null,
        receipt_header: m['receipt_header'] is String ? m['receipt_header'] : null,
        receipt_layout: m['receipt_layout'] is int ? m['receipt_layout'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        svc: m['svc'] is String ? m['svc'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        tx_type: m['tx_type'] is String ? m['tx_type'] : null,
        user_data: m['user_data'] is String ? m['user_data'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_id) {
      m['acquirer_id'] = acquirer_id;
    }
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != actual_bonus_point) {
      m['actual_bonus_point'] = actual_bonus_point;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != balance_amount) {
      m['balance_amount'] = balance_amount;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvc) {
      m['cvc'] = cvc;
    }
    if (null != ec_data) {
      m['ec_data'] = ec_data;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_data) {
      m['emv_data'] = emv_data;
    }
    if (null != exchange_fee) {
      m['exchange_fee'] = exchange_fee;
    }
    if (null != exchange_rate) {
      m['exchange_rate'] = exchange_rate;
    }
    if (null != language_code) {
      m['language_code'] = language_code;
    }
    if (null != merchant_address) {
      m['merchant_address'] = merchant_address;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != message_type) {
      m['message_type'] = message_type;
    }
    if (null != original_trace_number) {
      m['original_trace_number'] = original_trace_number;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_footer) {
      m['receipt_footer'] = receipt_footer;
    }
    if (null != receipt_header) {
      m['receipt_header'] = receipt_header;
    }
    if (null != receipt_layout) {
      m['receipt_layout'] = receipt_layout;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != svc) {
      m['svc'] = svc;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != tx_type) {
      m['tx_type'] = tx_type;
    }
    if (null != user_data) {
      m['user_data'] = user_data;
    }
    return m;
  }
}

class RegisterTecsCompany {
  /// STRING (required at the API)
  String? corporate_uuid;
  /// STRING (required at the API)
  String? package_order_uuid;
  /// INTEGER
  int? partner_id;
  /// STRING
  String? partner_name;
  /// STRING (required at the API)
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;

  RegisterTecsCompany({
    this.corporate_uuid,
    this.package_order_uuid,
    this.partner_id,
    this.partner_name,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.template_name,
  });

  factory RegisterTecsCompany.fromMap(Map<String, dynamic> m) => RegisterTecsCompany(
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        partner_id: m['partner_id'] is int ? m['partner_id'] : null,
        partner_name: m['partner_name'] is String ? m['partner_name'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != partner_id) {
      m['partner_id'] = partner_id;
    }
    if (null != partner_name) {
      m['partner_name'] = partner_name;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    return m;
  }
}

class RegisterTecsCompanyCreateData {
  /// STRING (required at the API)
  String? corporate_uuid;
  /// STRING (required at the API)
  String? package_order_uuid;
  /// INTEGER
  int? partner_id;
  /// STRING
  String? partner_name;
  /// STRING (required at the API)
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;

  RegisterTecsCompanyCreateData({
    this.corporate_uuid,
    this.package_order_uuid,
    this.partner_id,
    this.partner_name,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.template_name,
  });

  factory RegisterTecsCompanyCreateData.fromMap(Map<String, dynamic> m) => RegisterTecsCompanyCreateData(
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        partner_id: m['partner_id'] is int ? m['partner_id'] : null,
        partner_name: m['partner_name'] is String ? m['partner_name'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != partner_id) {
      m['partner_id'] = partner_id;
    }
    if (null != partner_name) {
      m['partner_name'] = partner_name;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    return m;
  }
}

class RegisterTerminal {
  /// OBJECT
  Map<String, dynamic>? additional_data;
  /// STRING (required at the API)
  String? corporate_uuid;
  /// STRING (required at the API)
  String? package_order_uuid;
  /// STRING (required at the API)
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? tecs_web_secret_key;
  /// STRING (required at the API)
  String? template_name;
  /// STRING (required at the API)
  String? terminal_country_code;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? terminal_id_acq;
  /// STRING (required at the API)
  String? terminal_language_code;
  /// STRING (required at the API)
  String? terminal_location;
  /// STRING
  String? terminal_serial_number;
  /// STRING
  String? token_io_alia;
  /// STRING
  String? token_io_iban;
  /// STRING
  String? token_io_member_id;
  /// STRING
  String? web_shop_url;

  RegisterTerminal({
    this.additional_data,
    this.corporate_uuid,
    this.package_order_uuid,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.tecs_web_secret_key,
    this.template_name,
    this.terminal_country_code,
    this.terminal_id,
    this.terminal_id_acq,
    this.terminal_language_code,
    this.terminal_location,
    this.terminal_serial_number,
    this.token_io_alia,
    this.token_io_iban,
    this.token_io_member_id,
    this.web_shop_url,
  });

  factory RegisterTerminal.fromMap(Map<String, dynamic> m) => RegisterTerminal(
        additional_data: m['additional_data'] is Map<String, dynamic> ? m['additional_data'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        tecs_web_secret_key: m['tecs_web_secret_key'] is String ? m['tecs_web_secret_key'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        terminal_country_code: m['terminal_country_code'] is String ? m['terminal_country_code'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_id_acq: m['terminal_id_acq'] is String ? m['terminal_id_acq'] : null,
        terminal_language_code: m['terminal_language_code'] is String ? m['terminal_language_code'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        terminal_serial_number: m['terminal_serial_number'] is String ? m['terminal_serial_number'] : null,
        token_io_alia: m['token_io_alia'] is String ? m['token_io_alia'] : null,
        token_io_iban: m['token_io_iban'] is String ? m['token_io_iban'] : null,
        token_io_member_id: m['token_io_member_id'] is String ? m['token_io_member_id'] : null,
        web_shop_url: m['web_shop_url'] is String ? m['web_shop_url'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != additional_data) {
      m['additional_data'] = additional_data;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != tecs_web_secret_key) {
      m['tecs_web_secret_key'] = tecs_web_secret_key;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != terminal_country_code) {
      m['terminal_country_code'] = terminal_country_code;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_id_acq) {
      m['terminal_id_acq'] = terminal_id_acq;
    }
    if (null != terminal_language_code) {
      m['terminal_language_code'] = terminal_language_code;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != terminal_serial_number) {
      m['terminal_serial_number'] = terminal_serial_number;
    }
    if (null != token_io_alia) {
      m['token_io_alia'] = token_io_alia;
    }
    if (null != token_io_iban) {
      m['token_io_iban'] = token_io_iban;
    }
    if (null != token_io_member_id) {
      m['token_io_member_id'] = token_io_member_id;
    }
    if (null != web_shop_url) {
      m['web_shop_url'] = web_shop_url;
    }
    return m;
  }
}

class RegisterTerminalCreateData {
  /// OBJECT
  Map<String, dynamic>? additional_data;
  /// STRING (required at the API)
  String? corporate_uuid;
  /// STRING (required at the API)
  String? package_order_uuid;
  /// STRING (required at the API)
  String? product_order_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? tecs_web_secret_key;
  /// STRING (required at the API)
  String? template_name;
  /// STRING (required at the API)
  String? terminal_country_code;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? terminal_id_acq;
  /// STRING (required at the API)
  String? terminal_language_code;
  /// STRING (required at the API)
  String? terminal_location;
  /// STRING
  String? terminal_serial_number;
  /// STRING
  String? token_io_alia;
  /// STRING
  String? token_io_iban;
  /// STRING
  String? token_io_member_id;
  /// STRING
  String? web_shop_url;

  RegisterTerminalCreateData({
    this.additional_data,
    this.corporate_uuid,
    this.package_order_uuid,
    this.product_order_uuid,
    this.response_code,
    this.response_message,
    this.tecs_web_secret_key,
    this.template_name,
    this.terminal_country_code,
    this.terminal_id,
    this.terminal_id_acq,
    this.terminal_language_code,
    this.terminal_location,
    this.terminal_serial_number,
    this.token_io_alia,
    this.token_io_iban,
    this.token_io_member_id,
    this.web_shop_url,
  });

  factory RegisterTerminalCreateData.fromMap(Map<String, dynamic> m) => RegisterTerminalCreateData(
        additional_data: m['additional_data'] is Map<String, dynamic> ? m['additional_data'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        package_order_uuid: m['package_order_uuid'] is String ? m['package_order_uuid'] : null,
        product_order_uuid: m['product_order_uuid'] is String ? m['product_order_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        tecs_web_secret_key: m['tecs_web_secret_key'] is String ? m['tecs_web_secret_key'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        terminal_country_code: m['terminal_country_code'] is String ? m['terminal_country_code'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_id_acq: m['terminal_id_acq'] is String ? m['terminal_id_acq'] : null,
        terminal_language_code: m['terminal_language_code'] is String ? m['terminal_language_code'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        terminal_serial_number: m['terminal_serial_number'] is String ? m['terminal_serial_number'] : null,
        token_io_alia: m['token_io_alia'] is String ? m['token_io_alia'] : null,
        token_io_iban: m['token_io_iban'] is String ? m['token_io_iban'] : null,
        token_io_member_id: m['token_io_member_id'] is String ? m['token_io_member_id'] : null,
        web_shop_url: m['web_shop_url'] is String ? m['web_shop_url'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != additional_data) {
      m['additional_data'] = additional_data;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != package_order_uuid) {
      m['package_order_uuid'] = package_order_uuid;
    }
    if (null != product_order_uuid) {
      m['product_order_uuid'] = product_order_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != tecs_web_secret_key) {
      m['tecs_web_secret_key'] = tecs_web_secret_key;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != terminal_country_code) {
      m['terminal_country_code'] = terminal_country_code;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_id_acq) {
      m['terminal_id_acq'] = terminal_id_acq;
    }
    if (null != terminal_language_code) {
      m['terminal_language_code'] = terminal_language_code;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != terminal_serial_number) {
      m['terminal_serial_number'] = terminal_serial_number;
    }
    if (null != token_io_alia) {
      m['token_io_alia'] = token_io_alia;
    }
    if (null != token_io_iban) {
      m['token_io_iban'] = token_io_iban;
    }
    if (null != token_io_member_id) {
      m['token_io_member_id'] = token_io_member_id;
    }
    if (null != web_shop_url) {
      m['web_shop_url'] = web_shop_url;
    }
    return m;
  }
}

class ReportData {
  /// ARRAY
  List<dynamic>? card_brand_report_data;
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// STRING (required at the API)
  String? corporate_id;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sum_over_credit_tx;
  /// OBJECT
  Map<String, dynamic>? sum_over_debit_tx;
  /// INTEGER
  int? terminal_id;

  ReportData({
    this.card_brand_report_data,
    this.clearing_date_from,
    this.clearing_date_to,
    this.corporate_id,
    this.currency,
    this.response_code,
    this.response_message,
    this.sum_over_credit_tx,
    this.sum_over_debit_tx,
    this.terminal_id,
  });

  factory ReportData.fromMap(Map<String, dynamic> m) => ReportData(
        card_brand_report_data: m['card_brand_report_data'] is List<dynamic> ? m['card_brand_report_data'] : null,
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        corporate_id: m['corporate_id'] is String ? m['corporate_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sum_over_credit_tx: m['sum_over_credit_tx'] is Map<String, dynamic> ? m['sum_over_credit_tx'] : null,
        sum_over_debit_tx: m['sum_over_debit_tx'] is Map<String, dynamic> ? m['sum_over_debit_tx'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != card_brand_report_data) {
      m['card_brand_report_data'] = card_brand_report_data;
    }
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != corporate_id) {
      m['corporate_id'] = corporate_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != sum_over_credit_tx) {
      m['sum_over_credit_tx'] = sum_over_credit_tx;
    }
    if (null != sum_over_debit_tx) {
      m['sum_over_debit_tx'] = sum_over_debit_tx;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class ReportDataCreateData {
  /// ARRAY
  List<dynamic>? card_brand_report_data;
  /// STRING (required at the API)
  String? clearing_date_from;
  /// STRING (required at the API)
  String? clearing_date_to;
  /// STRING (required at the API)
  String? corporate_id;
  /// STRING (required at the API)
  String? currency;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sum_over_credit_tx;
  /// OBJECT
  Map<String, dynamic>? sum_over_debit_tx;
  /// INTEGER
  int? terminal_id;

  ReportDataCreateData({
    this.card_brand_report_data,
    this.clearing_date_from,
    this.clearing_date_to,
    this.corporate_id,
    this.currency,
    this.response_code,
    this.response_message,
    this.sum_over_credit_tx,
    this.sum_over_debit_tx,
    this.terminal_id,
  });

  factory ReportDataCreateData.fromMap(Map<String, dynamic> m) => ReportDataCreateData(
        card_brand_report_data: m['card_brand_report_data'] is List<dynamic> ? m['card_brand_report_data'] : null,
        clearing_date_from: m['clearing_date_from'] is String ? m['clearing_date_from'] : null,
        clearing_date_to: m['clearing_date_to'] is String ? m['clearing_date_to'] : null,
        corporate_id: m['corporate_id'] is String ? m['corporate_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sum_over_credit_tx: m['sum_over_credit_tx'] is Map<String, dynamic> ? m['sum_over_credit_tx'] : null,
        sum_over_debit_tx: m['sum_over_debit_tx'] is Map<String, dynamic> ? m['sum_over_debit_tx'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != card_brand_report_data) {
      m['card_brand_report_data'] = card_brand_report_data;
    }
    if (null != clearing_date_from) {
      m['clearing_date_from'] = clearing_date_from;
    }
    if (null != clearing_date_to) {
      m['clearing_date_to'] = clearing_date_to;
    }
    if (null != corporate_id) {
      m['corporate_id'] = corporate_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != sum_over_credit_tx) {
      m['sum_over_credit_tx'] = sum_over_credit_tx;
    }
    if (null != sum_over_debit_tx) {
      m['sum_over_debit_tx'] = sum_over_debit_tx;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    return m;
  }
}

class StatusTransaction {
  /// STRING
  String? acquirer_name;
  /// STRING
  String? acquirer_terminal_id;
  /// INTEGER
  int? amount;
  /// STRING
  String? application_cryptogram;
  /// ONE,STRING,NULL
  dynamic authorization_code;
  /// STRING
  String? authorization_date;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_entry;
  /// STRING
  String? card_expiration;
  /// STRING
  String? card_number;
  /// INTEGER
  int? clearing_amount;
  /// STRING
  String? clearing_batch_id;
  /// STRING
  String? clearing_currency;
  /// STRING
  String? clearing_date;
  /// STRING
  String? clearing_processed_date;
  /// STRING
  String? clearing_status;
  /// INTEGER
  int? client_id;
  /// STRING
  String? currency;
  /// STRING
  String? cvm;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_application_id;
  /// STRING
  String? emv_application_label;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? original_client_id;
  /// INTEGER
  int? original_terminal_id;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_code_from_a;
  /// STRING
  String? response_message;
  /// STRING
  String? retrieval_reference_number;
  /// STRING
  String? service_code;
  /// STRING
  String? settlement_status;
  /// INTEGER
  int? source_id;
  /// INTEGER
  int? tecsengine_response_code;
  /// STRING
  String? tecsengine_response_text;
  /// STRING
  String? terminal_end_of_day_date;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? tip_amount;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_clearing_date;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// INTEGER
  int? transaction_seq_number;
  /// STRING
  String? transaction_server_date;
  /// STRING
  String? transaction_source;
  /// STRING
  String? transaction_type;

  StatusTransaction({
    this.acquirer_name,
    this.acquirer_terminal_id,
    this.amount,
    this.application_cryptogram,
    this.authorization_code,
    this.authorization_date,
    this.card_brand,
    this.card_entry,
    this.card_expiration,
    this.card_number,
    this.clearing_amount,
    this.clearing_batch_id,
    this.clearing_currency,
    this.clearing_date,
    this.clearing_processed_date,
    this.clearing_status,
    this.client_id,
    this.currency,
    this.cvm,
    this.ecr_data,
    this.emv_application_id,
    this.emv_application_label,
    this.merchant_name,
    this.merchant_number,
    this.original_client_id,
    this.original_terminal_id,
    this.original_transaction_id,
    this.payment_reason,
    this.receipt_number,
    this.response_code,
    this.response_code_from_a,
    this.response_message,
    this.retrieval_reference_number,
    this.service_code,
    this.settlement_status,
    this.source_id,
    this.tecsengine_response_code,
    this.tecsengine_response_text,
    this.terminal_end_of_day_date,
    this.terminal_id,
    this.terminal_location,
    this.tip_amount,
    this.trace_number,
    this.transaction_clearing_date,
    this.transaction_date,
    this.transaction_id,
    this.transaction_seq_number,
    this.transaction_server_date,
    this.transaction_source,
    this.transaction_type,
  });

  factory StatusTransaction.fromMap(Map<String, dynamic> m) => StatusTransaction(
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        acquirer_terminal_id: m['acquirer_terminal_id'] is String ? m['acquirer_terminal_id'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        application_cryptogram: m['application_cryptogram'] is String ? m['application_cryptogram'] : null,
        authorization_code: m['authorization_code'],
        authorization_date: m['authorization_date'] is String ? m['authorization_date'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_entry: m['card_entry'] is String ? m['card_entry'] : null,
        card_expiration: m['card_expiration'] is String ? m['card_expiration'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        clearing_amount: m['clearing_amount'] is int ? m['clearing_amount'] : null,
        clearing_batch_id: m['clearing_batch_id'] is String ? m['clearing_batch_id'] : null,
        clearing_currency: m['clearing_currency'] is String ? m['clearing_currency'] : null,
        clearing_date: m['clearing_date'] is String ? m['clearing_date'] : null,
        clearing_processed_date: m['clearing_processed_date'] is String ? m['clearing_processed_date'] : null,
        clearing_status: m['clearing_status'] is String ? m['clearing_status'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvm: m['cvm'] is String ? m['cvm'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_application_id: m['emv_application_id'] is String ? m['emv_application_id'] : null,
        emv_application_label: m['emv_application_label'] is String ? m['emv_application_label'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        original_client_id: m['original_client_id'] is String ? m['original_client_id'] : null,
        original_terminal_id: m['original_terminal_id'] is int ? m['original_terminal_id'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_code_from_a: m['response_code_from_a'] is String ? m['response_code_from_a'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        retrieval_reference_number: m['retrieval_reference_number'] is String ? m['retrieval_reference_number'] : null,
        service_code: m['service_code'] is String ? m['service_code'] : null,
        settlement_status: m['settlement_status'] is String ? m['settlement_status'] : null,
        source_id: m['source_id'] is int ? m['source_id'] : null,
        tecsengine_response_code: m['tecsengine_response_code'] is int ? m['tecsengine_response_code'] : null,
        tecsengine_response_text: m['tecsengine_response_text'] is String ? m['tecsengine_response_text'] : null,
        terminal_end_of_day_date: m['terminal_end_of_day_date'] is String ? m['terminal_end_of_day_date'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        tip_amount: m['tip_amount'] is int ? m['tip_amount'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_clearing_date: m['transaction_clearing_date'] is String ? m['transaction_clearing_date'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_seq_number: m['transaction_seq_number'] is int ? m['transaction_seq_number'] : null,
        transaction_server_date: m['transaction_server_date'] is String ? m['transaction_server_date'] : null,
        transaction_source: m['transaction_source'] is String ? m['transaction_source'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != acquirer_terminal_id) {
      m['acquirer_terminal_id'] = acquirer_terminal_id;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != application_cryptogram) {
      m['application_cryptogram'] = application_cryptogram;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != authorization_date) {
      m['authorization_date'] = authorization_date;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_entry) {
      m['card_entry'] = card_entry;
    }
    if (null != card_expiration) {
      m['card_expiration'] = card_expiration;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != clearing_amount) {
      m['clearing_amount'] = clearing_amount;
    }
    if (null != clearing_batch_id) {
      m['clearing_batch_id'] = clearing_batch_id;
    }
    if (null != clearing_currency) {
      m['clearing_currency'] = clearing_currency;
    }
    if (null != clearing_date) {
      m['clearing_date'] = clearing_date;
    }
    if (null != clearing_processed_date) {
      m['clearing_processed_date'] = clearing_processed_date;
    }
    if (null != clearing_status) {
      m['clearing_status'] = clearing_status;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvm) {
      m['cvm'] = cvm;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_application_id) {
      m['emv_application_id'] = emv_application_id;
    }
    if (null != emv_application_label) {
      m['emv_application_label'] = emv_application_label;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != original_client_id) {
      m['original_client_id'] = original_client_id;
    }
    if (null != original_terminal_id) {
      m['original_terminal_id'] = original_terminal_id;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_code_from_a) {
      m['response_code_from_a'] = response_code_from_a;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != retrieval_reference_number) {
      m['retrieval_reference_number'] = retrieval_reference_number;
    }
    if (null != service_code) {
      m['service_code'] = service_code;
    }
    if (null != settlement_status) {
      m['settlement_status'] = settlement_status;
    }
    if (null != source_id) {
      m['source_id'] = source_id;
    }
    if (null != tecsengine_response_code) {
      m['tecsengine_response_code'] = tecsengine_response_code;
    }
    if (null != tecsengine_response_text) {
      m['tecsengine_response_text'] = tecsengine_response_text;
    }
    if (null != terminal_end_of_day_date) {
      m['terminal_end_of_day_date'] = terminal_end_of_day_date;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != tip_amount) {
      m['tip_amount'] = tip_amount;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_clearing_date) {
      m['transaction_clearing_date'] = transaction_clearing_date;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_seq_number) {
      m['transaction_seq_number'] = transaction_seq_number;
    }
    if (null != transaction_server_date) {
      m['transaction_server_date'] = transaction_server_date;
    }
    if (null != transaction_source) {
      m['transaction_source'] = transaction_source;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class StatusTransactionCreateData {
  /// STRING
  String? acquirer_name;
  /// STRING
  String? acquirer_terminal_id;
  /// INTEGER
  int? amount;
  /// STRING
  String? application_cryptogram;
  /// ONE,STRING,NULL
  dynamic authorization_code;
  /// STRING
  String? authorization_date;
  /// STRING
  String? card_brand;
  /// STRING
  String? card_entry;
  /// STRING
  String? card_expiration;
  /// STRING
  String? card_number;
  /// INTEGER
  int? clearing_amount;
  /// STRING
  String? clearing_batch_id;
  /// STRING
  String? clearing_currency;
  /// STRING
  String? clearing_date;
  /// STRING
  String? clearing_processed_date;
  /// STRING
  String? clearing_status;
  /// INTEGER
  int? client_id;
  /// STRING
  String? currency;
  /// STRING
  String? cvm;
  /// STRING
  String? ecr_data;
  /// STRING
  String? emv_application_id;
  /// STRING
  String? emv_application_label;
  /// STRING
  String? merchant_name;
  /// STRING
  String? merchant_number;
  /// STRING
  String? original_client_id;
  /// INTEGER
  int? original_terminal_id;
  /// STRING
  String? original_transaction_id;
  /// STRING
  String? payment_reason;
  /// STRING
  String? receipt_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_code_from_a;
  /// STRING
  String? response_message;
  /// STRING
  String? retrieval_reference_number;
  /// STRING
  String? service_code;
  /// STRING
  String? settlement_status;
  /// INTEGER
  int? source_id;
  /// INTEGER
  int? tecsengine_response_code;
  /// STRING
  String? tecsengine_response_text;
  /// STRING
  String? terminal_end_of_day_date;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? terminal_location;
  /// INTEGER
  int? tip_amount;
  /// INTEGER
  int? trace_number;
  /// STRING
  String? transaction_clearing_date;
  /// STRING
  String? transaction_date;
  /// STRING
  String? transaction_id;
  /// INTEGER
  int? transaction_seq_number;
  /// STRING
  String? transaction_server_date;
  /// STRING
  String? transaction_source;
  /// STRING
  String? transaction_type;

  StatusTransactionCreateData({
    this.acquirer_name,
    this.acquirer_terminal_id,
    this.amount,
    this.application_cryptogram,
    this.authorization_code,
    this.authorization_date,
    this.card_brand,
    this.card_entry,
    this.card_expiration,
    this.card_number,
    this.clearing_amount,
    this.clearing_batch_id,
    this.clearing_currency,
    this.clearing_date,
    this.clearing_processed_date,
    this.clearing_status,
    this.client_id,
    this.currency,
    this.cvm,
    this.ecr_data,
    this.emv_application_id,
    this.emv_application_label,
    this.merchant_name,
    this.merchant_number,
    this.original_client_id,
    this.original_terminal_id,
    this.original_transaction_id,
    this.payment_reason,
    this.receipt_number,
    this.response_code,
    this.response_code_from_a,
    this.response_message,
    this.retrieval_reference_number,
    this.service_code,
    this.settlement_status,
    this.source_id,
    this.tecsengine_response_code,
    this.tecsengine_response_text,
    this.terminal_end_of_day_date,
    this.terminal_id,
    this.terminal_location,
    this.tip_amount,
    this.trace_number,
    this.transaction_clearing_date,
    this.transaction_date,
    this.transaction_id,
    this.transaction_seq_number,
    this.transaction_server_date,
    this.transaction_source,
    this.transaction_type,
  });

  factory StatusTransactionCreateData.fromMap(Map<String, dynamic> m) => StatusTransactionCreateData(
        acquirer_name: m['acquirer_name'] is String ? m['acquirer_name'] : null,
        acquirer_terminal_id: m['acquirer_terminal_id'] is String ? m['acquirer_terminal_id'] : null,
        amount: m['amount'] is int ? m['amount'] : null,
        application_cryptogram: m['application_cryptogram'] is String ? m['application_cryptogram'] : null,
        authorization_code: m['authorization_code'],
        authorization_date: m['authorization_date'] is String ? m['authorization_date'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        card_entry: m['card_entry'] is String ? m['card_entry'] : null,
        card_expiration: m['card_expiration'] is String ? m['card_expiration'] : null,
        card_number: m['card_number'] is String ? m['card_number'] : null,
        clearing_amount: m['clearing_amount'] is int ? m['clearing_amount'] : null,
        clearing_batch_id: m['clearing_batch_id'] is String ? m['clearing_batch_id'] : null,
        clearing_currency: m['clearing_currency'] is String ? m['clearing_currency'] : null,
        clearing_date: m['clearing_date'] is String ? m['clearing_date'] : null,
        clearing_processed_date: m['clearing_processed_date'] is String ? m['clearing_processed_date'] : null,
        clearing_status: m['clearing_status'] is String ? m['clearing_status'] : null,
        client_id: m['client_id'] is int ? m['client_id'] : null,
        currency: m['currency'] is String ? m['currency'] : null,
        cvm: m['cvm'] is String ? m['cvm'] : null,
        ecr_data: m['ecr_data'] is String ? m['ecr_data'] : null,
        emv_application_id: m['emv_application_id'] is String ? m['emv_application_id'] : null,
        emv_application_label: m['emv_application_label'] is String ? m['emv_application_label'] : null,
        merchant_name: m['merchant_name'] is String ? m['merchant_name'] : null,
        merchant_number: m['merchant_number'] is String ? m['merchant_number'] : null,
        original_client_id: m['original_client_id'] is String ? m['original_client_id'] : null,
        original_terminal_id: m['original_terminal_id'] is int ? m['original_terminal_id'] : null,
        original_transaction_id: m['original_transaction_id'] is String ? m['original_transaction_id'] : null,
        payment_reason: m['payment_reason'] is String ? m['payment_reason'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_code_from_a: m['response_code_from_a'] is String ? m['response_code_from_a'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        retrieval_reference_number: m['retrieval_reference_number'] is String ? m['retrieval_reference_number'] : null,
        service_code: m['service_code'] is String ? m['service_code'] : null,
        settlement_status: m['settlement_status'] is String ? m['settlement_status'] : null,
        source_id: m['source_id'] is int ? m['source_id'] : null,
        tecsengine_response_code: m['tecsengine_response_code'] is int ? m['tecsengine_response_code'] : null,
        tecsengine_response_text: m['tecsengine_response_text'] is String ? m['tecsengine_response_text'] : null,
        terminal_end_of_day_date: m['terminal_end_of_day_date'] is String ? m['terminal_end_of_day_date'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        terminal_location: m['terminal_location'] is String ? m['terminal_location'] : null,
        tip_amount: m['tip_amount'] is int ? m['tip_amount'] : null,
        trace_number: m['trace_number'] is int ? m['trace_number'] : null,
        transaction_clearing_date: m['transaction_clearing_date'] is String ? m['transaction_clearing_date'] : null,
        transaction_date: m['transaction_date'] is String ? m['transaction_date'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_seq_number: m['transaction_seq_number'] is int ? m['transaction_seq_number'] : null,
        transaction_server_date: m['transaction_server_date'] is String ? m['transaction_server_date'] : null,
        transaction_source: m['transaction_source'] is String ? m['transaction_source'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acquirer_name) {
      m['acquirer_name'] = acquirer_name;
    }
    if (null != acquirer_terminal_id) {
      m['acquirer_terminal_id'] = acquirer_terminal_id;
    }
    if (null != amount) {
      m['amount'] = amount;
    }
    if (null != application_cryptogram) {
      m['application_cryptogram'] = application_cryptogram;
    }
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != authorization_date) {
      m['authorization_date'] = authorization_date;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != card_entry) {
      m['card_entry'] = card_entry;
    }
    if (null != card_expiration) {
      m['card_expiration'] = card_expiration;
    }
    if (null != card_number) {
      m['card_number'] = card_number;
    }
    if (null != clearing_amount) {
      m['clearing_amount'] = clearing_amount;
    }
    if (null != clearing_batch_id) {
      m['clearing_batch_id'] = clearing_batch_id;
    }
    if (null != clearing_currency) {
      m['clearing_currency'] = clearing_currency;
    }
    if (null != clearing_date) {
      m['clearing_date'] = clearing_date;
    }
    if (null != clearing_processed_date) {
      m['clearing_processed_date'] = clearing_processed_date;
    }
    if (null != clearing_status) {
      m['clearing_status'] = clearing_status;
    }
    if (null != client_id) {
      m['client_id'] = client_id;
    }
    if (null != currency) {
      m['currency'] = currency;
    }
    if (null != cvm) {
      m['cvm'] = cvm;
    }
    if (null != ecr_data) {
      m['ecr_data'] = ecr_data;
    }
    if (null != emv_application_id) {
      m['emv_application_id'] = emv_application_id;
    }
    if (null != emv_application_label) {
      m['emv_application_label'] = emv_application_label;
    }
    if (null != merchant_name) {
      m['merchant_name'] = merchant_name;
    }
    if (null != merchant_number) {
      m['merchant_number'] = merchant_number;
    }
    if (null != original_client_id) {
      m['original_client_id'] = original_client_id;
    }
    if (null != original_terminal_id) {
      m['original_terminal_id'] = original_terminal_id;
    }
    if (null != original_transaction_id) {
      m['original_transaction_id'] = original_transaction_id;
    }
    if (null != payment_reason) {
      m['payment_reason'] = payment_reason;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_code_from_a) {
      m['response_code_from_a'] = response_code_from_a;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != retrieval_reference_number) {
      m['retrieval_reference_number'] = retrieval_reference_number;
    }
    if (null != service_code) {
      m['service_code'] = service_code;
    }
    if (null != settlement_status) {
      m['settlement_status'] = settlement_status;
    }
    if (null != source_id) {
      m['source_id'] = source_id;
    }
    if (null != tecsengine_response_code) {
      m['tecsengine_response_code'] = tecsengine_response_code;
    }
    if (null != tecsengine_response_text) {
      m['tecsengine_response_text'] = tecsengine_response_text;
    }
    if (null != terminal_end_of_day_date) {
      m['terminal_end_of_day_date'] = terminal_end_of_day_date;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != terminal_location) {
      m['terminal_location'] = terminal_location;
    }
    if (null != tip_amount) {
      m['tip_amount'] = tip_amount;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_clearing_date) {
      m['transaction_clearing_date'] = transaction_clearing_date;
    }
    if (null != transaction_date) {
      m['transaction_date'] = transaction_date;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_seq_number) {
      m['transaction_seq_number'] = transaction_seq_number;
    }
    if (null != transaction_server_date) {
      m['transaction_server_date'] = transaction_server_date;
    }
    if (null != transaction_source) {
      m['transaction_source'] = transaction_source;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    return m;
  }
}

class StoreTerminalParameter {
  /// OBJECT
  Map<String, dynamic>? acq_tab_nexo;
  /// STRING
  String? config_version;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? serial_number;
  /// STRING
  String? tid_sent;

  StoreTerminalParameter({
    this.acq_tab_nexo,
    this.config_version,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.tid_sent,
  });

  factory StoreTerminalParameter.fromMap(Map<String, dynamic> m) => StoreTerminalParameter(
        acq_tab_nexo: m['acq_tab_nexo'] is Map<String, dynamic> ? m['acq_tab_nexo'] : null,
        config_version: m['config_version'] is String ? m['config_version'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        tid_sent: m['tid_sent'] is String ? m['tid_sent'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acq_tab_nexo) {
      m['acq_tab_nexo'] = acq_tab_nexo;
    }
    if (null != config_version) {
      m['config_version'] = config_version;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != tid_sent) {
      m['tid_sent'] = tid_sent;
    }
    return m;
  }
}

class StoreTerminalParameterCreateData {
  /// OBJECT
  Map<String, dynamic>? acq_tab_nexo;
  /// STRING
  String? config_version;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? serial_number;
  /// STRING
  String? tid_sent;

  StoreTerminalParameterCreateData({
    this.acq_tab_nexo,
    this.config_version,
    this.response_code,
    this.response_message,
    this.serial_number,
    this.tid_sent,
  });

  factory StoreTerminalParameterCreateData.fromMap(Map<String, dynamic> m) => StoreTerminalParameterCreateData(
        acq_tab_nexo: m['acq_tab_nexo'] is Map<String, dynamic> ? m['acq_tab_nexo'] : null,
        config_version: m['config_version'] is String ? m['config_version'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        serial_number: m['serial_number'] is String ? m['serial_number'] : null,
        tid_sent: m['tid_sent'] is String ? m['tid_sent'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != acq_tab_nexo) {
      m['acq_tab_nexo'] = acq_tab_nexo;
    }
    if (null != config_version) {
      m['config_version'] = config_version;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != serial_number) {
      m['serial_number'] = serial_number;
    }
    if (null != tid_sent) {
      m['tid_sent'] = tid_sent;
    }
    return m;
  }
}

class TerminalId {
  /// ARRAY (required at the API)
  List<dynamic>? device_serial_number;
  /// ARRAY
  List<dynamic>? duplicate_terminal_id;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY
  List<dynamic>? terminal;

  TerminalId({
    this.device_serial_number,
    this.duplicate_terminal_id,
    this.response_code,
    this.response_message,
    this.terminal,
  });

  factory TerminalId.fromMap(Map<String, dynamic> m) => TerminalId(
        device_serial_number: m['device_serial_number'] is List<dynamic> ? m['device_serial_number'] : null,
        duplicate_terminal_id: m['duplicate_terminal_id'] is List<dynamic> ? m['duplicate_terminal_id'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal: m['terminal'] is List<dynamic> ? m['terminal'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != device_serial_number) {
      m['device_serial_number'] = device_serial_number;
    }
    if (null != duplicate_terminal_id) {
      m['duplicate_terminal_id'] = duplicate_terminal_id;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal) {
      m['terminal'] = terminal;
    }
    return m;
  }
}

class TerminalIdCreateData {
  /// ARRAY (required at the API)
  List<dynamic>? device_serial_number;
  /// ARRAY
  List<dynamic>? duplicate_terminal_id;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY
  List<dynamic>? terminal;

  TerminalIdCreateData({
    this.device_serial_number,
    this.duplicate_terminal_id,
    this.response_code,
    this.response_message,
    this.terminal,
  });

  factory TerminalIdCreateData.fromMap(Map<String, dynamic> m) => TerminalIdCreateData(
        device_serial_number: m['device_serial_number'] is List<dynamic> ? m['device_serial_number'] : null,
        duplicate_terminal_id: m['duplicate_terminal_id'] is List<dynamic> ? m['duplicate_terminal_id'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        terminal: m['terminal'] is List<dynamic> ? m['terminal'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != device_serial_number) {
      m['device_serial_number'] = device_serial_number;
    }
    if (null != duplicate_terminal_id) {
      m['duplicate_terminal_id'] = duplicate_terminal_id;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != terminal) {
      m['terminal'] = terminal;
    }
    return m;
  }
}

class TransactionHistory {
  /// STRING
  String? authorization_code;
  /// STRING
  String? card_brand;
  /// STRING
  String? clearing_amount_from;
  /// STRING
  String? clearing_amount_to;
  /// STRING
  String? clearing_currency;
  /// STRING
  String? clearing_status;
  /// STRING
  String? corporate_uuid;
  /// STRING
  String? order_by_transaction_date;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? payment_token_public_id;
  /// STRING
  String? receipt_number;
  /// STRING
  String? referenced_transaction_id;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? retrieval_reference_number;
  /// INTEGER
  int? source_id;
  /// STRING
  String? tecsengine_response_code_from;
  /// STRING
  String? tecsengine_response_code_to;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? trace_number;
  /// STRING
  String? transaction_amount_from;
  /// STRING
  String? transaction_amount_to;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? transaction_history;
  /// STRING
  String? transaction_id;
  /// STRING
  String? transaction_type;
  /// STRING
  String? wallet;

  TransactionHistory({
    this.authorization_code,
    this.card_brand,
    this.clearing_amount_from,
    this.clearing_amount_to,
    this.clearing_currency,
    this.clearing_status,
    this.corporate_uuid,
    this.order_by_transaction_date,
    this.pagination,
    this.payment_token_public_id,
    this.receipt_number,
    this.referenced_transaction_id,
    this.response_code,
    this.response_message,
    this.retrieval_reference_number,
    this.source_id,
    this.tecsengine_response_code_from,
    this.tecsengine_response_code_to,
    this.terminal_id,
    this.trace_number,
    this.transaction_amount_from,
    this.transaction_amount_to,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transaction_history,
    this.transaction_id,
    this.transaction_type,
    this.wallet,
  });

  factory TransactionHistory.fromMap(Map<String, dynamic> m) => TransactionHistory(
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        clearing_amount_from: m['clearing_amount_from'] is String ? m['clearing_amount_from'] : null,
        clearing_amount_to: m['clearing_amount_to'] is String ? m['clearing_amount_to'] : null,
        clearing_currency: m['clearing_currency'] is String ? m['clearing_currency'] : null,
        clearing_status: m['clearing_status'] is String ? m['clearing_status'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        order_by_transaction_date: m['order_by_transaction_date'] is String ? m['order_by_transaction_date'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        payment_token_public_id: m['payment_token_public_id'] is String ? m['payment_token_public_id'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        referenced_transaction_id: m['referenced_transaction_id'] is String ? m['referenced_transaction_id'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        retrieval_reference_number: m['retrieval_reference_number'] is String ? m['retrieval_reference_number'] : null,
        source_id: m['source_id'] is int ? m['source_id'] : null,
        tecsengine_response_code_from: m['tecsengine_response_code_from'] is String ? m['tecsengine_response_code_from'] : null,
        tecsengine_response_code_to: m['tecsengine_response_code_to'] is String ? m['tecsengine_response_code_to'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        trace_number: m['trace_number'] is String ? m['trace_number'] : null,
        transaction_amount_from: m['transaction_amount_from'] is String ? m['transaction_amount_from'] : null,
        transaction_amount_to: m['transaction_amount_to'] is String ? m['transaction_amount_to'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transaction_history: m['transaction_history'] is List<dynamic> ? m['transaction_history'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != clearing_amount_from) {
      m['clearing_amount_from'] = clearing_amount_from;
    }
    if (null != clearing_amount_to) {
      m['clearing_amount_to'] = clearing_amount_to;
    }
    if (null != clearing_currency) {
      m['clearing_currency'] = clearing_currency;
    }
    if (null != clearing_status) {
      m['clearing_status'] = clearing_status;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != order_by_transaction_date) {
      m['order_by_transaction_date'] = order_by_transaction_date;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != payment_token_public_id) {
      m['payment_token_public_id'] = payment_token_public_id;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != referenced_transaction_id) {
      m['referenced_transaction_id'] = referenced_transaction_id;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != retrieval_reference_number) {
      m['retrieval_reference_number'] = retrieval_reference_number;
    }
    if (null != source_id) {
      m['source_id'] = source_id;
    }
    if (null != tecsengine_response_code_from) {
      m['tecsengine_response_code_from'] = tecsengine_response_code_from;
    }
    if (null != tecsengine_response_code_to) {
      m['tecsengine_response_code_to'] = tecsengine_response_code_to;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_amount_from) {
      m['transaction_amount_from'] = transaction_amount_from;
    }
    if (null != transaction_amount_to) {
      m['transaction_amount_to'] = transaction_amount_to;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transaction_history) {
      m['transaction_history'] = transaction_history;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
    }
    if (null != wallet) {
      m['wallet'] = wallet;
    }
    return m;
  }
}

class TransactionHistoryCreateData {
  /// STRING
  String? authorization_code;
  /// STRING
  String? card_brand;
  /// STRING
  String? clearing_amount_from;
  /// STRING
  String? clearing_amount_to;
  /// STRING
  String? clearing_currency;
  /// STRING
  String? clearing_status;
  /// STRING
  String? corporate_uuid;
  /// STRING
  String? order_by_transaction_date;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// STRING
  String? payment_token_public_id;
  /// STRING
  String? receipt_number;
  /// STRING
  String? referenced_transaction_id;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? retrieval_reference_number;
  /// INTEGER
  int? source_id;
  /// STRING
  String? tecsengine_response_code_from;
  /// STRING
  String? tecsengine_response_code_to;
  /// INTEGER
  int? terminal_id;
  /// STRING
  String? trace_number;
  /// STRING
  String? transaction_amount_from;
  /// STRING
  String? transaction_amount_to;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? transaction_history;
  /// STRING
  String? transaction_id;
  /// STRING
  String? transaction_type;
  /// STRING
  String? wallet;

  TransactionHistoryCreateData({
    this.authorization_code,
    this.card_brand,
    this.clearing_amount_from,
    this.clearing_amount_to,
    this.clearing_currency,
    this.clearing_status,
    this.corporate_uuid,
    this.order_by_transaction_date,
    this.pagination,
    this.payment_token_public_id,
    this.receipt_number,
    this.referenced_transaction_id,
    this.response_code,
    this.response_message,
    this.retrieval_reference_number,
    this.source_id,
    this.tecsengine_response_code_from,
    this.tecsengine_response_code_to,
    this.terminal_id,
    this.trace_number,
    this.transaction_amount_from,
    this.transaction_amount_to,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transaction_history,
    this.transaction_id,
    this.transaction_type,
    this.wallet,
  });

  factory TransactionHistoryCreateData.fromMap(Map<String, dynamic> m) => TransactionHistoryCreateData(
        authorization_code: m['authorization_code'] is String ? m['authorization_code'] : null,
        card_brand: m['card_brand'] is String ? m['card_brand'] : null,
        clearing_amount_from: m['clearing_amount_from'] is String ? m['clearing_amount_from'] : null,
        clearing_amount_to: m['clearing_amount_to'] is String ? m['clearing_amount_to'] : null,
        clearing_currency: m['clearing_currency'] is String ? m['clearing_currency'] : null,
        clearing_status: m['clearing_status'] is String ? m['clearing_status'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        order_by_transaction_date: m['order_by_transaction_date'] is String ? m['order_by_transaction_date'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        payment_token_public_id: m['payment_token_public_id'] is String ? m['payment_token_public_id'] : null,
        receipt_number: m['receipt_number'] is String ? m['receipt_number'] : null,
        referenced_transaction_id: m['referenced_transaction_id'] is String ? m['referenced_transaction_id'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        retrieval_reference_number: m['retrieval_reference_number'] is String ? m['retrieval_reference_number'] : null,
        source_id: m['source_id'] is int ? m['source_id'] : null,
        tecsengine_response_code_from: m['tecsengine_response_code_from'] is String ? m['tecsengine_response_code_from'] : null,
        tecsengine_response_code_to: m['tecsengine_response_code_to'] is String ? m['tecsengine_response_code_to'] : null,
        terminal_id: m['terminal_id'] is int ? m['terminal_id'] : null,
        trace_number: m['trace_number'] is String ? m['trace_number'] : null,
        transaction_amount_from: m['transaction_amount_from'] is String ? m['transaction_amount_from'] : null,
        transaction_amount_to: m['transaction_amount_to'] is String ? m['transaction_amount_to'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transaction_history: m['transaction_history'] is List<dynamic> ? m['transaction_history'] : null,
        transaction_id: m['transaction_id'] is String ? m['transaction_id'] : null,
        transaction_type: m['transaction_type'] is String ? m['transaction_type'] : null,
        wallet: m['wallet'] is String ? m['wallet'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != authorization_code) {
      m['authorization_code'] = authorization_code;
    }
    if (null != card_brand) {
      m['card_brand'] = card_brand;
    }
    if (null != clearing_amount_from) {
      m['clearing_amount_from'] = clearing_amount_from;
    }
    if (null != clearing_amount_to) {
      m['clearing_amount_to'] = clearing_amount_to;
    }
    if (null != clearing_currency) {
      m['clearing_currency'] = clearing_currency;
    }
    if (null != clearing_status) {
      m['clearing_status'] = clearing_status;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != order_by_transaction_date) {
      m['order_by_transaction_date'] = order_by_transaction_date;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != payment_token_public_id) {
      m['payment_token_public_id'] = payment_token_public_id;
    }
    if (null != receipt_number) {
      m['receipt_number'] = receipt_number;
    }
    if (null != referenced_transaction_id) {
      m['referenced_transaction_id'] = referenced_transaction_id;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != retrieval_reference_number) {
      m['retrieval_reference_number'] = retrieval_reference_number;
    }
    if (null != source_id) {
      m['source_id'] = source_id;
    }
    if (null != tecsengine_response_code_from) {
      m['tecsengine_response_code_from'] = tecsengine_response_code_from;
    }
    if (null != tecsengine_response_code_to) {
      m['tecsengine_response_code_to'] = tecsengine_response_code_to;
    }
    if (null != terminal_id) {
      m['terminal_id'] = terminal_id;
    }
    if (null != trace_number) {
      m['trace_number'] = trace_number;
    }
    if (null != transaction_amount_from) {
      m['transaction_amount_from'] = transaction_amount_from;
    }
    if (null != transaction_amount_to) {
      m['transaction_amount_to'] = transaction_amount_to;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transaction_history) {
      m['transaction_history'] = transaction_history;
    }
    if (null != transaction_id) {
      m['transaction_id'] = transaction_id;
    }
    if (null != transaction_type) {
      m['transaction_type'] = transaction_type;
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
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? transactions_count;

  TransactionsCount({
    this.period,
    this.response_code,
    this.response_message,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transactions_count,
  });

  factory TransactionsCount.fromMap(Map<String, dynamic> m) => TransactionsCount(
        period: m['period'] is String ? m['period'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transactions_count: m['transactions_count'] is List<dynamic> ? m['transactions_count'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transactions_count) {
      m['transactions_count'] = transactions_count;
    }
    return m;
  }
}

class TransactionsCountCreateData {
  /// STRING
  String? period;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? transactions_count;

  TransactionsCountCreateData({
    this.period,
    this.response_code,
    this.response_message,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transactions_count,
  });

  factory TransactionsCountCreateData.fromMap(Map<String, dynamic> m) => TransactionsCountCreateData(
        period: m['period'] is String ? m['period'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transactions_count: m['transactions_count'] is List<dynamic> ? m['transactions_count'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transactions_count) {
      m['transactions_count'] = transactions_count;
    }
    return m;
  }
}

class TransactionsCountCardBrand {
  /// STRING
  String? period;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? transactions_count;

  TransactionsCountCardBrand({
    this.period,
    this.response_code,
    this.response_message,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transactions_count,
  });

  factory TransactionsCountCardBrand.fromMap(Map<String, dynamic> m) => TransactionsCountCardBrand(
        period: m['period'] is String ? m['period'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transactions_count: m['transactions_count'] is List<dynamic> ? m['transactions_count'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transactions_count) {
      m['transactions_count'] = transactions_count;
    }
    return m;
  }
}

class TransactionsCountCardBrandCreateData {
  /// STRING
  String? period;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? transactions_count;

  TransactionsCountCardBrandCreateData({
    this.period,
    this.response_code,
    this.response_message,
    this.transaction_date_from,
    this.transaction_date_to,
    this.transactions_count,
  });

  factory TransactionsCountCardBrandCreateData.fromMap(Map<String, dynamic> m) => TransactionsCountCardBrandCreateData(
        period: m['period'] is String ? m['period'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        transactions_count: m['transactions_count'] is List<dynamic> ? m['transactions_count'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != transactions_count) {
      m['transactions_count'] = transactions_count;
    }
    return m;
  }
}

class TransactionsTurnover {
  /// STRING
  String? period;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? turnover;

  TransactionsTurnover({
    this.period,
    this.response_code,
    this.response_message,
    this.transaction_date_from,
    this.transaction_date_to,
    this.turnover,
  });

  factory TransactionsTurnover.fromMap(Map<String, dynamic> m) => TransactionsTurnover(
        period: m['period'] is String ? m['period'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        turnover: m['turnover'] is List<dynamic> ? m['turnover'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != turnover) {
      m['turnover'] = turnover;
    }
    return m;
  }
}

class TransactionsTurnoverCreateData {
  /// STRING
  String? period;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? transaction_date_from;
  /// STRING
  String? transaction_date_to;
  /// ARRAY
  List<dynamic>? turnover;

  TransactionsTurnoverCreateData({
    this.period,
    this.response_code,
    this.response_message,
    this.transaction_date_from,
    this.transaction_date_to,
    this.turnover,
  });

  factory TransactionsTurnoverCreateData.fromMap(Map<String, dynamic> m) => TransactionsTurnoverCreateData(
        period: m['period'] is String ? m['period'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        transaction_date_from: m['transaction_date_from'] is String ? m['transaction_date_from'] : null,
        transaction_date_to: m['transaction_date_to'] is String ? m['transaction_date_to'] : null,
        turnover: m['turnover'] is List<dynamic> ? m['turnover'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != period) {
      m['period'] = period;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != transaction_date_from) {
      m['transaction_date_from'] = transaction_date_from;
    }
    if (null != transaction_date_to) {
      m['transaction_date_to'] = transaction_date_to;
    }
    if (null != turnover) {
      m['turnover'] = turnover;
    }
    return m;
  }
}

class UpdateMerchant {
  /// STRING
  String? city;
  /// STRING (required at the API)
  String? corporate_uuid;
  /// STRING
  String? country;
  /// STRING
  String? merchant_category_code;
  /// STRING
  String? name;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? state;
  /// STRING
  String? street;
  /// STRING
  String? vu_nummer;
  /// STRING
  String? zipcode;

  UpdateMerchant({
    this.city,
    this.corporate_uuid,
    this.country,
    this.merchant_category_code,
    this.name,
    this.response_code,
    this.response_message,
    this.state,
    this.street,
    this.vu_nummer,
    this.zipcode,
  });

  factory UpdateMerchant.fromMap(Map<String, dynamic> m) => UpdateMerchant(
        city: m['city'] is String ? m['city'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        country: m['country'] is String ? m['country'] : null,
        merchant_category_code: m['merchant_category_code'] is String ? m['merchant_category_code'] : null,
        name: m['name'] is String ? m['name'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        state: m['state'] is String ? m['state'] : null,
        street: m['street'] is String ? m['street'] : null,
        vu_nummer: m['vu_nummer'] is String ? m['vu_nummer'] : null,
        zipcode: m['zipcode'] is String ? m['zipcode'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != merchant_category_code) {
      m['merchant_category_code'] = merchant_category_code;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street) {
      m['street'] = street;
    }
    if (null != vu_nummer) {
      m['vu_nummer'] = vu_nummer;
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
  String? corporate_uuid;
  /// STRING
  String? country;
  /// STRING
  String? merchant_category_code;
  /// STRING
  String? name;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? state;
  /// STRING
  String? street;
  /// STRING
  String? vu_nummer;
  /// STRING
  String? zipcode;

  UpdateMerchantCreateData({
    this.city,
    this.corporate_uuid,
    this.country,
    this.merchant_category_code,
    this.name,
    this.response_code,
    this.response_message,
    this.state,
    this.street,
    this.vu_nummer,
    this.zipcode,
  });

  factory UpdateMerchantCreateData.fromMap(Map<String, dynamic> m) => UpdateMerchantCreateData(
        city: m['city'] is String ? m['city'] : null,
        corporate_uuid: m['corporate_uuid'] is String ? m['corporate_uuid'] : null,
        country: m['country'] is String ? m['country'] : null,
        merchant_category_code: m['merchant_category_code'] is String ? m['merchant_category_code'] : null,
        name: m['name'] is String ? m['name'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        state: m['state'] is String ? m['state'] : null,
        street: m['street'] is String ? m['street'] : null,
        vu_nummer: m['vu_nummer'] is String ? m['vu_nummer'] : null,
        zipcode: m['zipcode'] is String ? m['zipcode'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != corporate_uuid) {
      m['corporate_uuid'] = corporate_uuid;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != merchant_category_code) {
      m['merchant_category_code'] = merchant_category_code;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street) {
      m['street'] = street;
    }
    if (null != vu_nummer) {
      m['vu_nummer'] = vu_nummer;
    }
    if (null != zipcode) {
      m['zipcode'] = zipcode;
    }
    return m;
  }
}

class UpdateTemplateXml {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;
  /// STRING (required at the API)
  String? template_xml;

  UpdateTemplateXml({
    this.response_code,
    this.response_message,
    this.template_name,
    this.template_xml,
  });

  factory UpdateTemplateXml.fromMap(Map<String, dynamic> m) => UpdateTemplateXml(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        template_xml: m['template_xml'] is String ? m['template_xml'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != template_xml) {
      m['template_xml'] = template_xml;
    }
    return m;
  }
}

class UpdateTemplateXmlCreateData {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING (required at the API)
  String? template_name;
  /// STRING (required at the API)
  String? template_xml;

  UpdateTemplateXmlCreateData({
    this.response_code,
    this.response_message,
    this.template_name,
    this.template_xml,
  });

  factory UpdateTemplateXmlCreateData.fromMap(Map<String, dynamic> m) => UpdateTemplateXmlCreateData(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        template_name: m['template_name'] is String ? m['template_name'] : null,
        template_xml: m['template_xml'] is String ? m['template_xml'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != template_name) {
      m['template_name'] = template_name;
    }
    if (null != template_xml) {
      m['template_xml'] = template_xml;
    }
    return m;
  }
}

class Version {
  /// STRING
  String? app_name;
  /// STRING
  String? build_date;
  /// STRING
  String? version;

  Version({
    this.app_name,
    this.build_date,
    this.version,
  });

  factory Version.fromMap(Map<String, dynamic> m) => Version(
        app_name: m['app_name'] is String ? m['app_name'] : null,
        build_date: m['build_date'] is String ? m['build_date'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != app_name) {
      m['app_name'] = app_name;
    }
    if (null != build_date) {
      m['build_date'] = build_date;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}

class VersionLoadMatch {
  /// STRING
  String? app_name;
  /// STRING
  String? build_date;
  /// STRING
  String? version;

  VersionLoadMatch({
    this.app_name,
    this.build_date,
    this.version,
  });

  factory VersionLoadMatch.fromMap(Map<String, dynamic> m) => VersionLoadMatch(
        app_name: m['app_name'] is String ? m['app_name'] : null,
        build_date: m['build_date'] is String ? m['build_date'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != app_name) {
      m['app_name'] = app_name;
    }
    if (null != build_date) {
      m['build_date'] = build_date;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}

