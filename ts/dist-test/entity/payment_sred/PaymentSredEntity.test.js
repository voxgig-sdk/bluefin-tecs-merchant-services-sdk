"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const node_path_1 = __importDefault(require("node:path"));
const Fs = __importStar(require("node:fs"));
const node_test_1 = require("node:test");
const node_assert_1 = __importDefault(require("node:assert"));
const live_runner_1 = require("../../live-runner");
const live_entity_1 = require("../../live-entity");
const __1 = require("../../..");
const utility_1 = require("../../utility");
// AFTER the imports on purpose: TypeScript hoists `import` above any
// statement in the emitted CommonJS, so a loader placed above them would
// run only after every imported module had already been evaluated - and
// anything reading process.env at module scope would miss these values.
(0, utility_1.loadEnvLocal)(__dirname + '/../../../.env.local');
(0, node_test_1.describe)('PaymentSredEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsMerchantServicesSDK.test();
        const ent = testsdk.PaymentSred();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'payment_sred.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": [{ "active": true, "format": "int32", "name": "amount", "req": true, "short": "Transaction amount in minor units (cents)", "type": "`$INTEGER`", "index$": 0 }, { "active": true, "name": "currency", "req": true, "short": "Currency code - 3 uppercase letters (ISO 4217)", "type": "`$STRING`", "index$": 1 }, { "active": true, "name": "device", "req": false, "short": "Device type that provided the SRED payload", "type": "`$STRING`", "index$": 2 }, { "active": true, "name": "devicePayload", "req": true, "short": "SRED encrypted device payload from the device (minimum 32 characters)", "type": "`$STRING`", "index$": 3 }, { "active": true, "name": "expDate", "req": false, "short": "Card expiry date in MMYY format", "type": "`$STRING`", "index$": 4 }, { "active": true, "name": "mode", "req": false, "short": "Decryption mode", "type": "`$STRING`", "index$": 5 }, { "active": true, "name": "panMasked", "req": false, "short": "Masked PAN (first 6 and last 4 digits)", "type": "`$STRING`", "index$": 6 }, { "active": true, "name": "password", "req": false, "short": "Terminal password sent as Kennwort in TECS XML (optional)", "type": "`$STRING`", "index$": 7 }, { "active": true, "name": "serial", "req": false, "short": "Device serial number", "type": "`$STRING`", "index$": 8 }, { "active": true, "name": "serviceCode", "req": false, "short": "Service code from the card", "type": "`$STRING`", "index$": 9 }, { "active": true, "name": "terminalId", "req": true, "short": "Terminal ID - 8 digits", "type": "`$STRING`", "index$": 10 }, { "active": true, "name": "txtype", "req": true, "short": "Transaction type", "type": "`$STRING`", "index$": 11 }], "name": "payment_sred", "op": { "create": { "input": "data", "name": "create", "points": [{ "active": true, "args": {}, "contract": { "id": "POST /public/paymentSred", "json": "{\"operationId\":\"paymentSred\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Payment SRED request for processing card-present SRED payload via DecryptX and TECS XML gateway\",\"properties\":{\"amount\":{\"description\":\"Transaction amount in minor units (cents)\",\"example\":1234,\"format\":\"int32\",\"minimum\":1,\"type\":\"integer\"},\"currency\":{\"description\":\"Currency code - 3 uppercase letters (ISO 4217)\",\"example\":\"EUR\",\"minLength\":1,\"pattern\":\"^[A-Z]{3}$\",\"type\":\"string\"},\"devicePayload\":{\"description\":\"SRED encrypted device payload from the device (minimum 32 characters)\",\"example\":\"<SRED_PAYLOAD_FROM_DEVICE>\",\"maxLength\":2147483647,\"minLength\":32,\"type\":\"string\"},\"password\":{\"description\":\"Terminal password sent as Kennwort in TECS XML (optional)\",\"example\":\"testPWD\",\"type\":\"string\"},\"terminalId\":{\"description\":\"Terminal ID - 8 digits\",\"example\":\"88092010\",\"minLength\":1,\"pattern\":\"^\\\\d{8}$\",\"type\":\"string\"},\"txtype\":{\"description\":\"Transaction type\",\"enum\":[\"SALE\",\"PRE-AUTH\"],\"example\":\"SALE\",\"minLength\":1,\"pattern\":\"^(SALE|PRE-AUTH)$\",\"type\":\"string\"}},\"required\":[\"amount\",\"currency\",\"devicePayload\",\"terminalId\",\"txtype\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Payment SRED response from TECS XML gateway with DecryptX data\",\"properties\":{\"acquirerName\":{\"description\":\"Acquirer name parsed from KKG field\",\"example\":\"TECS Offline\",\"type\":\"string\"},\"authorizationNumber\":{\"description\":\"Authorization number from the gateway\",\"example\":68529,\"type\":\"string\"},\"cardType\":{\"description\":\"Card type parsed from KKG field\",\"example\":\"MASTERCARD\",\"type\":\"string\"},\"dateTimeTx\":{\"description\":\"Date and time of the transaction\",\"example\":\"20251008160321\",\"type\":\"string\"},\"merchantId\":{\"description\":\"Merchant ID (VU-NUMMER)\",\"example\":\"123456789012345\",\"type\":\"string\"},\"originalTransactionId\":{\"description\":\"Original transaction ID from gateway\",\"example\":20251008160321,\"type\":\"string\"},\"responseCode\":{\"description\":\"Response code - 00 for success, otherwise error code\",\"example\":\"00\",\"type\":\"string\"},\"responseMessage\":{\"description\":\"Response message - 'Approved' for success, error description otherwise\",\"example\":\"Approved\",\"type\":\"string\"},\"sred\":{\"description\":\"SRED-specific data from DecryptX\",\"properties\":{\"device\":{\"description\":\"Device type that provided the SRED payload\",\"example\":\"IDTECH\",\"type\":\"string\"},\"expDate\":{\"description\":\"Card expiry date in MMYY format\",\"example\":\"1027\",\"type\":\"string\"},\"mode\":{\"description\":\"Decryption mode\",\"example\":\"SRED\",\"type\":\"string\"},\"panMasked\":{\"description\":\"Masked PAN (first 6 and last 4 digits)\",\"example\":\"541333******3537\",\"type\":\"string\"},\"serial\":{\"description\":\"Device serial number\",\"example\":\"1234567890\",\"type\":\"string\"},\"serviceCode\":{\"description\":\"Service code from the card\",\"example\":\"201\",\"type\":\"string\"}},\"type\":\"object\"},\"terminalId\":{\"description\":\"Terminal ID used for the transaction\",\"example\":\"88092010\",\"type\":\"string\"},\"transactionId\":{\"description\":\"Transaction ID generated by the backend\",\"example\":\"20251008160321\",\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Invalid JSON\\n* Invalid terminalId - must be 8 digits\\n* Invalid currency - must be 3 uppercase letters\\n* Invalid amount - must be greater than 0\\n* Invalid txtype - must be SALE or PRE-AUTH\\n* Invalid devicePayload - must be at least 32 characters\\n* Decrypt error - DecryptX API returned non-2xx or success=false\\n* Decrypt error - PAN not found in response\\n* Decrypt error - Invalid PAN length (must be 12-19 digits)\\n* Decrypt error - Invalid PAN - Luhn check failed\\n* Decrypt error - Invalid expiry date\\n* Gateway error - TECS XML gateway error\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Unauthorized - Authentication failed\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: BO_VIRTUAL_TERMINAL or VIRTUAL_TERMINAL\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Internal server error\\n* DecryptX configuration is missing\\n\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}", "source": "openapi3", "version": 1 }, "kind": "http", "method": "POST", "orig": "/public/paymentSred", "segments": [{ "lit": "public" }, { "lit": "paymentSred" }], "select": {}, "transform": { "req": "`reqdata`", "res": "`body.sred`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "payment_sred", "name__orig": "payment_sred", "Name": "PaymentSred", "name_": "payment_sred", "name-": "payment-sred", "NAME": "PAYMENT_SRED", "index$": 22 }, { "active": true, "entity": "payment_sred", "key$": "BasicPaymentSredFlow", "kind": "basic", "name": "BasicPaymentSredFlow", "param": {}, "step": [{ "active": true, "data": {}, "input": { "ref": "payment_sred_ref01" }, "match": {}, "op": "create", "spec": [], "valid": [], "index$": 0 }] }, 'PaymentSred');
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const payment_sred_ref01_ent = client.PaymentSred();
        let payment_sred_ref01_data = setup.data.new.payment_sred['payment_sred_ref01'];
        payment_sred_ref01_data = (await payment_sred_ref01_ent.create(payment_sred_ref01_data)).data();
        (0, node_assert_1.default)(null != payment_sred_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/payment_sred/PaymentSredTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsMerchantServicesSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['payment_sred01', 'payment_sred02', 'payment_sred03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID': idmap,
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID'];
        idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {};
        if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
            throw new Error('Live ENTID must be a JSON object');
        }
        client = new __1.BluefinTecsMerchantServicesSDK(merge([
            // FIRST, so the generated fields below win: sdk-test-control.json's
            // test.client.options adds to the live client, it does not redirect it.
            (0, utility_1.liveClientOptions)(),
            {
                apikey: env.BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY,
            },
            // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
            // last entry is undefined, and basicSetup is normally called with no
            // argument at all - so a bare 'extra' silently discarded the apikey
            // and server values above and handed the SDK undefined. Harmless
            // while there was nothing in that object; not harmless now.
            extra || {},
            { system: { fetch: transport.fetch } }
        ]));
    }
    const setup = {
        idmap,
        env,
        options,
        client,
        struct,
        data: entityData,
        explain: 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN,
        live,
        transport,
        now: Date.now(),
    };
    return setup;
}
//# sourceMappingURL=PaymentSredEntity.test.js.map