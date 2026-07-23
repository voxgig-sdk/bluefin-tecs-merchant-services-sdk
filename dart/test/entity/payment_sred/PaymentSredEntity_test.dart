// ignore_for_file: unused_import, unused_local_variable, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import '../../harness.dart';
import '../../utility.dart';

import '../../../lib/BluefinTecsMerchantServicesSDK.dart';
import '../../../lib/utility/voxgig_struct.dart' as vs;

void tests() {
  describe('PaymentSredEntity', () {
    test('instance', (t) async {
      final testsdk = BluefinTecsMerchantServicesSDK.test();
      final ent = testsdk.PaymentSred();
      ok(null != ent);
    });



    test('basic', (t) async {

      final live = 'TRUE' == Platform.environment['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'];
      for (final op in ['create']) {
        if (maybeSkipControl(t, 'entityOp', 'payment_sred.' + op, live)) {
          return;
        }
      }

      final setup = basicSetup();
      // The basic flow consumes synthetic IDs and field values from the
      // fixture (entity TestData.json). Those don't exist on the live API.
      // Skip live runs unless the user provided a real ENTID env override.
      if (true == setup['syntheticOnly']) {
        t.skip('live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID JSON to run live');
        return;
      }
      final client = setup['client'];
      final struct = setup['struct'];

      final isempty = struct.isempty;
      final select = struct.select;


      // CREATE
      final payment_sred_ref01_ent = client.PaymentSred();
      dynamic payment_sred_ref01_data = setup['data']['new']['payment_sred']['payment_sred_ref01'];

      payment_sred_ref01_data = await payment_sred_ref01_ent.create(payment_sred_ref01_data);
      ok(null != payment_sred_ref01_data);


    });
  });
}


Map<String, dynamic> basicSetup([dynamic extra]) {
  final options = <String, dynamic>{};

  final entityDataFile = resolveTestPath(
      '../.sdk/test/entity/payment_sred/PaymentSredTestData.json');

  final entityDataSource = File(entityDataFile).readAsStringSync();

  final entityData = jsonDecode(entityDataSource);

  options['entity'] = entityData['existing'];

  var client = BluefinTecsMerchantServicesSDK.test(options, extra);
  final struct = client.utility().struct;
  final merge = struct.merge;
  final transform = struct.transform;

  dynamic idmap = transform(
      <dynamic>['payment_sred01', 'payment_sred02', 'payment_sred03'],
      <String, dynamic>{
        '`\$PACK`': <dynamic>[
          '',
          <String, dynamic>{
            '`\$KEY`': '`\$COPY`',
            '`\$VAL`': <dynamic>['`\$FORMAT`', 'upper', '`\$COPY`'],
          }
        ]
      });

  // Detect whether the user provided a real ENTID JSON via env var. The
  // basic flow consumes synthetic IDs from the fixture file; without an
  // override those synthetic IDs reach the live API and 4xx. Surface this
  // to the test so it can skip rather than fail.
  final idmapEnvVal =
      Platform.environment['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID'];
  final idmapOverridden =
      null != idmapEnvVal && idmapEnvVal.trim().startsWith('{');

  final env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': 'NONE',
  });

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID'];

  final live = 'TRUE' == env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'];

  if (live) {
    client = BluefinTecsMerchantServicesSDK(merge([
      <String, dynamic>{
        'apikey': env['BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY'],
      },
      extra
    ]));
  }

  final setup = <String, dynamic>{
    'idmap': idmap,
    'env': env,
    'options': options,
    'client': client,
    'struct': struct,
    'data': entityData,
    'explain': 'TRUE' == env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN'],
    'live': live,
    'syntheticOnly': live && !idmapOverridden,
    'now': DateTime.now().millisecondsSinceEpoch,
  };

  return setup;
}

