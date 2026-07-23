// Generated existence test: the SDK constructs in test mode.

use bluefin_tecs_merchant_services_sdk::{test_sdk, Value};

#[test]
fn exists_test_mode() {
    let testsdk = test_sdk(Value::Noval, Value::Noval);
    assert_eq!(*testsdk.mode.borrow(), "test");
}
