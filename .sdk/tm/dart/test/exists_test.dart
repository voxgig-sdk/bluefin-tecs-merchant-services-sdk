import 'harness.dart';

import '../lib/BluefinTecsMerchantServicesSDK.dart';

void tests() {
  describe('exists', () {
    test('test-mode', (t) async {
      final testsdk = BluefinTecsMerchantServicesSDK.test();
      equal(true, null != testsdk);
    });
  });
}
