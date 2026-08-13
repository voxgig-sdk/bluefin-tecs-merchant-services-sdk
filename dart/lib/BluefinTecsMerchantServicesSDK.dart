// BluefinTecsMerchantServices Dart SDK

import 'entity/CancelTransactionEntity.dart';
import 'entity/CheckCardBlackListedEntity.dart';
import 'entity/CreateProductEntity.dart';
import 'entity/DeactivateTerminalEntity.dart';
import 'entity/DigitalServicesApiEntity.dart';
import 'entity/EcDataEcomEntity.dart';
import 'entity/EcomParameterEntity.dart';
import 'entity/EcrDataEntity.dart';
import 'entity/EmvDataEntity.dart';
import 'entity/EnableAcquiringEntity.dart';
import 'entity/GetMerchantContractNumberEntity.dart';
import 'entity/GetTemplateXmlEntity.dart';
import 'entity/IntroduceMandatorEntity.dart';
import 'entity/IntroducePackageEntity.dart';
import 'entity/KeepAliveEntity.dart';
import 'entity/ListTerminalEntity.dart';
import 'entity/MandatorClearingExportEntity.dart';
import 'entity/MandatorClearingExportDownloadEntity.dart';
import 'entity/MandatorClearingExportSummaryEntity.dart';
import 'entity/MerchantPortalServicesApiEntity.dart';
import 'entity/MoveTidEntity.dart';
import 'entity/PaymentManualEntity.dart';
import 'entity/PaymentSredEntity.dart';
import 'entity/PreAuthTransactionCompletionEntity.dart';
import 'entity/ReactivateTerminalEntity.dart';
import 'entity/RefundTransactionEntity.dart';
import 'entity/RegisterTecsCompanyEntity.dart';
import 'entity/RegisterTerminalEntity.dart';
import 'entity/ReportDataEntity.dart';
import 'entity/StatusTransactionEntity.dart';
import 'entity/StoreTerminalParameterEntity.dart';
import 'entity/TerminalIdEntity.dart';
import 'entity/TransactionHistoryEntity.dart';
import 'entity/TransactionsCountEntity.dart';
import 'entity/TransactionsCountCardBrandEntity.dart';
import 'entity/TransactionsTurnoverEntity.dart';
import 'entity/UpdateMerchantEntity.dart';
import 'entity/UpdateTemplateXmlEntity.dart';
import 'entity/VersionEntity.dart';


export 'BluefinTecsMerchantServicesTypes.dart';
export 'entity/CancelTransactionEntity.dart';
export 'entity/CheckCardBlackListedEntity.dart';
export 'entity/CreateProductEntity.dart';
export 'entity/DeactivateTerminalEntity.dart';
export 'entity/DigitalServicesApiEntity.dart';
export 'entity/EcDataEcomEntity.dart';
export 'entity/EcomParameterEntity.dart';
export 'entity/EcrDataEntity.dart';
export 'entity/EmvDataEntity.dart';
export 'entity/EnableAcquiringEntity.dart';
export 'entity/GetMerchantContractNumberEntity.dart';
export 'entity/GetTemplateXmlEntity.dart';
export 'entity/IntroduceMandatorEntity.dart';
export 'entity/IntroducePackageEntity.dart';
export 'entity/KeepAliveEntity.dart';
export 'entity/ListTerminalEntity.dart';
export 'entity/MandatorClearingExportEntity.dart';
export 'entity/MandatorClearingExportDownloadEntity.dart';
export 'entity/MandatorClearingExportSummaryEntity.dart';
export 'entity/MerchantPortalServicesApiEntity.dart';
export 'entity/MoveTidEntity.dart';
export 'entity/PaymentManualEntity.dart';
export 'entity/PaymentSredEntity.dart';
export 'entity/PreAuthTransactionCompletionEntity.dart';
export 'entity/ReactivateTerminalEntity.dart';
export 'entity/RefundTransactionEntity.dart';
export 'entity/RegisterTecsCompanyEntity.dart';
export 'entity/RegisterTerminalEntity.dart';
export 'entity/ReportDataEntity.dart';
export 'entity/StatusTransactionEntity.dart';
export 'entity/StoreTerminalParameterEntity.dart';
export 'entity/TerminalIdEntity.dart';
export 'entity/TransactionHistoryEntity.dart';
export 'entity/TransactionsCountEntity.dart';
export 'entity/TransactionsCountCardBrandEntity.dart';
export 'entity/TransactionsTurnoverEntity.dart';
export 'entity/UpdateMerchantEntity.dart';
export 'entity/UpdateTemplateXmlEntity.dart';
export 'entity/VersionEntity.dart';


// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'Config.dart';
import 'Spec.dart';
// BluefinTecsMerchantServicesEntityBase / BluefinTecsMerchantServicesError / BaseFeature are re-exported below;
// a Dart `export` needs no matching `import`, so importing them here too is an
// unused_import. Keep only the imports actually referenced in this file.
import 'utility/ErrUtility.dart';
import 'utility/Utility.dart';

export 'Config.dart' show Config, config;
export 'BluefinTecsMerchantServicesEntityBase.dart' show BluefinTecsMerchantServicesEntityBase;
export 'BluefinTecsMerchantServicesError.dart' show BluefinTecsMerchantServicesError;
export 'feature/base/BaseFeature.dart' show BaseFeature;
export 'utility/Utility.dart' show Utility;

final Utility stdutil = Utility();

class BluefinTecsMerchantServicesSDK {
  String mode = 'live';
  dynamic _options;
  final Utility _utility = Utility();
  List<dynamic> features = [];
  dynamic rootctx;

  // Feature activity tracking store (retry attempts, cache hits, spans, ...).
  final Map<String, dynamic> track = {};

  BluefinTecsMerchantServicesSDK([dynamic options]) {
    rootctx = _utility.makeContext({
      'client': this,
      'utility': _utility,
      'config': config.toMap(),
      'options': options,
      'shared': {},
    });

    _options = _utility.makeOptions(rootctx);

    final struct = _utility.struct;

    if (true == struct.getpath(_options, 'feature.test.active')) {
      mode = 'test';
    }

    rootctx.options = _options;

    features = [];

    final featureAdd = _utility.featureAdd;
    final featureInit = _utility.featureInit;

    // Add features in the resolved order (makeOptions puts an explicit List
    // order first, else defaults to test-first). Ordering matters: the
    // `test` feature installs the base mock transport and the transport
    // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is current,
    // so `test` must be added before them to sit at the base of the chain.
    final featureorder =
        struct.getpath(_options, '__derived__.featureorder') ?? [];
    for (final fname in featureorder) {
      final fopts = _options['feature'][fname];
      if (fopts is Map && true == fopts['active']) {
        featureAdd(rootctx, config.makeFeature(fname.toString()));
      }
    }

    if (null != _options['extend']) {
      for (final f in _options['extend']) {
        featureAdd(rootctx, f);
      }
    }

    for (final f in features) {
      featureInit(rootctx, f);
    }

    final featureHook = _utility.featureHook;
    featureHook(rootctx, 'PostConstruct');
  }

  dynamic options() {
    return _utility.struct.clone(_options);
  }

  Utility utility() {
    return _utility;
  }

  Future<dynamic> prepare([dynamic fetchargs]) async {
    final utility = _utility;

    final makeContext = utility.makeContext;
    final makeFetchDef = utility.makeFetchDef;
    final prepareHeaders = utility.prepareHeaders;
    final prepareAuth = utility.prepareAuth;

    fetchargs = fetchargs ?? {};

    final ctx = makeContext({
      'opname': 'prepare',
      'ctrl': fetchargs['ctrl'] ?? {},
    }, rootctx);

    final options = _options;

    // Build spec directly from SDK options + user-provided fetch args.
    final spec = Spec({
      'base': options['base'],
      'prefix': options['prefix'],
      'suffix': options['suffix'],
      'path': fetchargs['path'] ?? '',
      'method': fetchargs['method'] ?? 'GET',
      'params': fetchargs['params'] ?? {},
      'query': fetchargs['query'] ?? {},
      'body': fetchargs['body'],
      'step': 'start',
    });

    ctx.spec = spec;

    spec.headers = prepareHeaders(ctx);

    // Merge user-provided headers over SDK defaults.
    if (fetchargs['headers'] is Map) {
      (fetchargs['headers'] as Map).forEach((key, val) {
        spec.headers[key] = val;
      });
    }

    // Apply SDK auth (apikey, auth prefix, etc.)
    final authResult = prepareAuth(ctx);
    if (iserr(authResult)) {
      return authResult;
    }

    return makeFetchDef(ctx);
  }

  // Raw endpoint access is operator-controllable, like every entity op.
  // Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
  // either one reaches the same endpoint.
  Future<dynamic> direct([dynamic fetchargs]) async {
    if (!_opAllowed('direct')) {
      return _opDenied('direct');
    }

    return _rawRequest(fetchargs);
  }

  // Is this raw-access op permitted by the SDK's allow.op option?
  bool _opAllowed(String op) {
    final allow = _utility.struct.getpath(_options, 'allow.op');
    return allow is String && allow.contains(op);
  }

  dynamic _opDenied(String op) {
    final allow = _utility.struct.getpath(_options, 'allow.op');
    return {
      'ok': false,
      'err': Exception('BluefinTecsMerchantServicesSDK: $op: operation not allowed by'
          ' SDK option allow.op value: "${allow ?? ''}"'),
    };
  }

  // Ungated request path shared by direct and graphql, each of which checks
  // its own allow.op token first. Private, rather than a flag on fetchargs:
  // a caller-supplied marker would let anyone opt straight back out of the
  // gate by passing it.
  Future<dynamic> _rawRequest([dynamic fetchargs]) async {
    final utility = _utility;
    final fetcher = utility.fetcher;
    final makeContext = utility.makeContext;

    final fetchdef = await prepare(fetchargs);
    if (iserr(fetchdef)) {
      return fetchdef;
    }

    final ctx = makeContext({
      'opname': 'direct',
      'ctrl': (fetchargs ?? {})['ctrl'] ?? {},
    }, rootctx);

    try {
      final dynamic fetched =
          await Future.value(fetcher(ctx, fetchdef['url'], fetchdef));

      if (null == fetched) {
        return {
          'ok': false,
          'err': ctx.error('direct_no_response', 'response: undefined')
        };
      } else if (iserr(fetched)) {
        return {'ok': false, 'err': fetched};
      }

      final status = fetched['status'];

      // No body responses (204 No Content, 304 Not Modified) and explicit
      // zero content-length must skip JSON parsing.
      final headers = fetched['headers'];
      final contentLength =
          headers is Map ? headers['content-length'] : null;
      final noBody = 204 == status ||
          304 == status ||
          '0' == (null == contentLength ? null : contentLength.toString());

      dynamic json;
      if (!noBody) {
        try {
          final jsonFn = fetched['json'];
          json = jsonFn is Function
              ? await Future.value(jsonFn())
              : fetched['json'];
        } catch (_parseErr) {
          // Body wasn't valid JSON — surface the raw response rather than
          // throwing. data stays null; callers can inspect status/headers.
          json = null;
        }
      }

      return {
        'ok': status is num && status >= 200 && status < 300,
        'status': status,
        'headers': fetched['headers'],
        'data': json,
      };
    } catch (err) {
      return {'ok': false, 'err': err};
    }
  }

  // Raw GraphQL access: the pressure valve that makes the generated
  // surface's deliberate omissions (per-call selection sets, typed filter
  // builders, batching, subscriptions) livable — the whole schema stays
  // reachable.
  //
  // Thin wrapper over the same prepare/fetch path direct uses, with the one
  // thing raw direct cannot do for GraphQL: a GraphQL failure rides HTTP 200
  // as a top-level `errors` array, so status alone would report a failed
  // query as ok.
  //
  // NOTE: like direct, this bypasses the feature pipeline — no retry,
  // ratelimit or paging features apply.
  Future<dynamic> graphql(String query,
      [dynamic variables, dynamic ctrl]) async {
    if (!_opAllowed('graphql')) {
      return _opDenied('graphql');
    }

    final dynamic res = await _rawRequest({
      'method': 'POST',
      'headers': {'content-type': 'application/json'},
      'body': {'query': query, 'variables': variables ?? {}},
      'ctrl': ctrl ?? {},
    });

    if (res is! Map) {
      return res;
    }

    // Errors are read BEFORE any status check: a GraphQL parse or validation
    // failure comes back as HTTP 400 carrying the standard { errors: [...] }
    // body, and the raw path represents a non-2xx as ok:false with no err —
    // so returning early on status would discard the server's own
    // diagnostics, which are the only useful part of that response.
    final errors = _utility.struct.getpath(res, 'data.errors');

    if (errors is List && 0 < errors.length) {
      final first = errors[0];
      final msg = (first is Map ? first['message'] : null);
      res['ok'] = false;
      res['err'] = Exception('BluefinTecsMerchantServicesSDK: graphql: '
          '${msg is String && msg.isNotEmpty ? msg : 'graphql error'}');
      res['graphql'] = errors;
    }

    return res;
  }


  // Entity access: `client.CancelTransaction().list()` / `client.CancelTransaction().load({'id': ...})`.
  CancelTransactionEntity CancelTransaction([dynamic entopts]) {
    return CancelTransactionEntity(this, entopts);
  }


  // Entity access: `client.CheckCardBlackListed().list()` / `client.CheckCardBlackListed().load({'id': ...})`.
  CheckCardBlackListedEntity CheckCardBlackListed([dynamic entopts]) {
    return CheckCardBlackListedEntity(this, entopts);
  }


  // Entity access: `client.CreateProduct().list()` / `client.CreateProduct().load({'id': ...})`.
  CreateProductEntity CreateProduct([dynamic entopts]) {
    return CreateProductEntity(this, entopts);
  }


  // Entity access: `client.DeactivateTerminal().list()` / `client.DeactivateTerminal().load({'id': ...})`.
  DeactivateTerminalEntity DeactivateTerminal([dynamic entopts]) {
    return DeactivateTerminalEntity(this, entopts);
  }


  // Entity access: `client.DigitalServicesApi().list()` / `client.DigitalServicesApi().load({'id': ...})`.
  DigitalServicesApiEntity DigitalServicesApi([dynamic entopts]) {
    return DigitalServicesApiEntity(this, entopts);
  }


  // Entity access: `client.EcDataEcom().list()` / `client.EcDataEcom().load({'id': ...})`.
  EcDataEcomEntity EcDataEcom([dynamic entopts]) {
    return EcDataEcomEntity(this, entopts);
  }


  // Entity access: `client.EcomParameter().list()` / `client.EcomParameter().load({'id': ...})`.
  EcomParameterEntity EcomParameter([dynamic entopts]) {
    return EcomParameterEntity(this, entopts);
  }


  // Entity access: `client.EcrData().list()` / `client.EcrData().load({'id': ...})`.
  EcrDataEntity EcrData([dynamic entopts]) {
    return EcrDataEntity(this, entopts);
  }


  // Entity access: `client.EmvData().list()` / `client.EmvData().load({'id': ...})`.
  EmvDataEntity EmvData([dynamic entopts]) {
    return EmvDataEntity(this, entopts);
  }


  // Entity access: `client.EnableAcquiring().list()` / `client.EnableAcquiring().load({'id': ...})`.
  EnableAcquiringEntity EnableAcquiring([dynamic entopts]) {
    return EnableAcquiringEntity(this, entopts);
  }


  // Entity access: `client.GetMerchantContractNumber().list()` / `client.GetMerchantContractNumber().load({'id': ...})`.
  GetMerchantContractNumberEntity GetMerchantContractNumber([dynamic entopts]) {
    return GetMerchantContractNumberEntity(this, entopts);
  }


  // Entity access: `client.GetTemplateXml().list()` / `client.GetTemplateXml().load({'id': ...})`.
  GetTemplateXmlEntity GetTemplateXml([dynamic entopts]) {
    return GetTemplateXmlEntity(this, entopts);
  }


  // Entity access: `client.IntroduceMandator().list()` / `client.IntroduceMandator().load({'id': ...})`.
  IntroduceMandatorEntity IntroduceMandator([dynamic entopts]) {
    return IntroduceMandatorEntity(this, entopts);
  }


  // Entity access: `client.IntroducePackage().list()` / `client.IntroducePackage().load({'id': ...})`.
  IntroducePackageEntity IntroducePackage([dynamic entopts]) {
    return IntroducePackageEntity(this, entopts);
  }


  // Entity access: `client.KeepAlive().list()` / `client.KeepAlive().load({'id': ...})`.
  KeepAliveEntity KeepAlive([dynamic entopts]) {
    return KeepAliveEntity(this, entopts);
  }


  // Entity access: `client.ListTerminal().list()` / `client.ListTerminal().load({'id': ...})`.
  ListTerminalEntity ListTerminal([dynamic entopts]) {
    return ListTerminalEntity(this, entopts);
  }


  // Entity access: `client.MandatorClearingExport().list()` / `client.MandatorClearingExport().load({'id': ...})`.
  MandatorClearingExportEntity MandatorClearingExport([dynamic entopts]) {
    return MandatorClearingExportEntity(this, entopts);
  }


  // Entity access: `client.MandatorClearingExportDownload().list()` / `client.MandatorClearingExportDownload().load({'id': ...})`.
  MandatorClearingExportDownloadEntity MandatorClearingExportDownload([dynamic entopts]) {
    return MandatorClearingExportDownloadEntity(this, entopts);
  }


  // Entity access: `client.MandatorClearingExportSummary().list()` / `client.MandatorClearingExportSummary().load({'id': ...})`.
  MandatorClearingExportSummaryEntity MandatorClearingExportSummary([dynamic entopts]) {
    return MandatorClearingExportSummaryEntity(this, entopts);
  }


  // Entity access: `client.MerchantPortalServicesApi().list()` / `client.MerchantPortalServicesApi().load({'id': ...})`.
  MerchantPortalServicesApiEntity MerchantPortalServicesApi([dynamic entopts]) {
    return MerchantPortalServicesApiEntity(this, entopts);
  }


  // Entity access: `client.MoveTid().list()` / `client.MoveTid().load({'id': ...})`.
  MoveTidEntity MoveTid([dynamic entopts]) {
    return MoveTidEntity(this, entopts);
  }


  // Entity access: `client.PaymentManual().list()` / `client.PaymentManual().load({'id': ...})`.
  PaymentManualEntity PaymentManual([dynamic entopts]) {
    return PaymentManualEntity(this, entopts);
  }


  // Entity access: `client.PaymentSred().list()` / `client.PaymentSred().load({'id': ...})`.
  PaymentSredEntity PaymentSred([dynamic entopts]) {
    return PaymentSredEntity(this, entopts);
  }


  // Entity access: `client.PreAuthTransactionCompletion().list()` / `client.PreAuthTransactionCompletion().load({'id': ...})`.
  PreAuthTransactionCompletionEntity PreAuthTransactionCompletion([dynamic entopts]) {
    return PreAuthTransactionCompletionEntity(this, entopts);
  }


  // Entity access: `client.ReactivateTerminal().list()` / `client.ReactivateTerminal().load({'id': ...})`.
  ReactivateTerminalEntity ReactivateTerminal([dynamic entopts]) {
    return ReactivateTerminalEntity(this, entopts);
  }


  // Entity access: `client.RefundTransaction().list()` / `client.RefundTransaction().load({'id': ...})`.
  RefundTransactionEntity RefundTransaction([dynamic entopts]) {
    return RefundTransactionEntity(this, entopts);
  }


  // Entity access: `client.RegisterTecsCompany().list()` / `client.RegisterTecsCompany().load({'id': ...})`.
  RegisterTecsCompanyEntity RegisterTecsCompany([dynamic entopts]) {
    return RegisterTecsCompanyEntity(this, entopts);
  }


  // Entity access: `client.RegisterTerminal().list()` / `client.RegisterTerminal().load({'id': ...})`.
  RegisterTerminalEntity RegisterTerminal([dynamic entopts]) {
    return RegisterTerminalEntity(this, entopts);
  }


  // Entity access: `client.ReportData().list()` / `client.ReportData().load({'id': ...})`.
  ReportDataEntity ReportData([dynamic entopts]) {
    return ReportDataEntity(this, entopts);
  }


  // Entity access: `client.StatusTransaction().list()` / `client.StatusTransaction().load({'id': ...})`.
  StatusTransactionEntity StatusTransaction([dynamic entopts]) {
    return StatusTransactionEntity(this, entopts);
  }


  // Entity access: `client.StoreTerminalParameter().list()` / `client.StoreTerminalParameter().load({'id': ...})`.
  StoreTerminalParameterEntity StoreTerminalParameter([dynamic entopts]) {
    return StoreTerminalParameterEntity(this, entopts);
  }


  // Entity access: `client.TerminalId().list()` / `client.TerminalId().load({'id': ...})`.
  TerminalIdEntity TerminalId([dynamic entopts]) {
    return TerminalIdEntity(this, entopts);
  }


  // Entity access: `client.TransactionHistory().list()` / `client.TransactionHistory().load({'id': ...})`.
  TransactionHistoryEntity TransactionHistory([dynamic entopts]) {
    return TransactionHistoryEntity(this, entopts);
  }


  // Entity access: `client.TransactionsCount().list()` / `client.TransactionsCount().load({'id': ...})`.
  TransactionsCountEntity TransactionsCount([dynamic entopts]) {
    return TransactionsCountEntity(this, entopts);
  }


  // Entity access: `client.TransactionsCountCardBrand().list()` / `client.TransactionsCountCardBrand().load({'id': ...})`.
  TransactionsCountCardBrandEntity TransactionsCountCardBrand([dynamic entopts]) {
    return TransactionsCountCardBrandEntity(this, entopts);
  }


  // Entity access: `client.TransactionsTurnover().list()` / `client.TransactionsTurnover().load({'id': ...})`.
  TransactionsTurnoverEntity TransactionsTurnover([dynamic entopts]) {
    return TransactionsTurnoverEntity(this, entopts);
  }


  // Entity access: `client.UpdateMerchant().list()` / `client.UpdateMerchant().load({'id': ...})`.
  UpdateMerchantEntity UpdateMerchant([dynamic entopts]) {
    return UpdateMerchantEntity(this, entopts);
  }


  // Entity access: `client.UpdateTemplateXml().list()` / `client.UpdateTemplateXml().load({'id': ...})`.
  UpdateTemplateXmlEntity UpdateTemplateXml([dynamic entopts]) {
    return UpdateTemplateXmlEntity(this, entopts);
  }


  // Entity access: `client.Version().list()` / `client.Version().load({'id': ...})`.
  VersionEntity Version([dynamic entopts]) {
    return VersionEntity(this, entopts);
  }



  static BluefinTecsMerchantServicesSDK test([dynamic testoptsarg, dynamic sdkoptsarg]) {
    final struct = stdutil.struct;
    final setpath = struct.setpath;
    final getdef = struct.getdef;
    final clone = struct.clone;
    final setprop = struct.setprop;

    final sdkopts = getdef(clone(sdkoptsarg), {});
    final testopts = getdef(clone(testoptsarg), {});
    setprop(testopts, 'active', true);
    setpath(sdkopts, 'feature.test', testopts);

    final testsdk = BluefinTecsMerchantServicesSDK(sdkopts);
    testsdk.mode = 'test';

    return testsdk;
  }

  BluefinTecsMerchantServicesSDK tester([dynamic testopts, dynamic sdkopts]) {
    return BluefinTecsMerchantServicesSDK.test(testopts, sdkopts);
  }

  Map<String, dynamic> toJSON() {
    return {'name': 'BluefinTecsMerchantServices'};
  }

  @override
  String toString() {
    return 'BluefinTecsMerchantServices ' + _utility.struct.jsonify(toJSON());
  }
}

typedef SDK = BluefinTecsMerchantServicesSDK;
