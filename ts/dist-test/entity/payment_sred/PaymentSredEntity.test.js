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
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "amount": { "a": true, "fo": "int32", "h": "Amount", "n": "amount", "r": true, "sh": "Transaction amount in minor units (cents)", "t": "`$INTEGER`", "key$": "amount", "index$": 0 }, "currency": { "a": true, "h": "Currency", "n": "currency", "r": true, "sh": "Currency code - 3 uppercase letters (ISO 4217)", "t": "`$STRING`", "key$": "currency", "index$": 1 }, "device": { "a": true, "h": "Device", "n": "device", "r": false, "sh": "Device type that provided the SRED payload", "t": "`$STRING`", "key$": "device", "index$": 2 }, "devicePayload": { "a": true, "h": "Device Payload", "n": "devicePayload", "r": true, "sh": "SRED encrypted device payload from the device (minimum 32 characters)", "t": "`$STRING`", "key$": "devicePayload", "index$": 3 }, "expDate": { "a": true, "h": "Exp Date", "n": "expDate", "r": false, "sh": "Card expiry date in MMYY format", "t": "`$STRING`", "key$": "expDate", "index$": 4 }, "mode": { "a": true, "h": "Mode", "n": "mode", "r": false, "sh": "Decryption mode", "t": "`$STRING`", "key$": "mode", "index$": 5 }, "panMasked": { "a": true, "h": "Pan Masked", "n": "panMasked", "r": false, "sh": "Masked PAN (first 6 and last 4 digits)", "t": "`$STRING`", "key$": "panMasked", "index$": 6 }, "password": { "a": true, "h": "Password", "n": "password", "r": false, "sh": "Terminal password sent as Kennwort in TECS XML (optional)", "t": "`$STRING`", "key$": "password", "index$": 7 }, "serial": { "a": true, "h": "Serial", "n": "serial", "r": false, "sh": "Device serial number", "t": "`$STRING`", "key$": "serial", "index$": 8 }, "serviceCode": { "a": true, "h": "Service Code", "n": "serviceCode", "r": false, "sh": "Service code from the card", "t": "`$STRING`", "key$": "serviceCode", "index$": 9 }, "terminalId": { "a": true, "h": "Terminal Id", "n": "terminalId", "r": true, "sh": "Terminal ID - 8 digits", "t": "`$STRING`", "key$": "terminalId", "index$": 10 }, "txtype": { "a": true, "h": "Txtype", "n": "txtype", "r": true, "sh": "Transaction type", "t": "`$STRING`", "key$": "txtype", "index$": 11 } }, "name": "payment_sred", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "co": { "id": "POST /public/paymentSred", "source": "openapi3", "version": 2 }, "g": {}, "k": "http", "m": "POST", "o": "/public/paymentSred", "q": {}, "r": {}, "s": [{ "lit": "public" }, { "lit": "paymentSred" }], "t": { "req": "`reqdata`", "res": "`body.sred`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "payment_sred", "name__orig": "payment_sred", "Name": "PaymentSred", "name_": "payment_sred", "name-": "payment-sred", "NAME": "PAYMENT_SRED", "index$": 24 }, { "active": true, "entity": "payment_sred", "key$": "BasicPaymentSredFlow", "kind": "basic", "name": "BasicPaymentSredFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "payment_sred_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'PaymentSred', { "POST /public/paymentSred": { "protocol": "http", "requestBody": { "content": { "application/json": { "schema": { "type": "object", "description": "Payment SRED request for processing card-present SRED payload via DecryptX and TECS XML gateway", "properties": { "terminalId": { "type": "string", "description": "Terminal ID - 8 digits", "example": "88092010", "minLength": 1, "pattern": "^\\d{8}$", "key$": "terminalId" }, "currency": { "type": "string", "description": "Currency code - 3 uppercase letters (ISO 4217)", "example": "EUR", "minLength": 1, "pattern": "^[A-Z]{3}$", "key$": "currency" }, "amount": { "type": "integer", "format": "int32", "description": "Transaction amount in minor units (cents)", "example": 1234, "minimum": 1, "key$": "amount" }, "txtype": { "type": "string", "description": "Transaction type", "enum": ["SALE", "PRE-AUTH"], "example": "SALE", "minLength": 1, "pattern": "^(SALE|PRE-AUTH)$", "key$": "txtype" }, "devicePayload": { "type": "string", "description": "SRED encrypted device payload from the device (minimum 32 characters)", "example": "<SRED_PAYLOAD_FROM_DEVICE>", "maxLength": 2147483647, "minLength": 32, "key$": "devicePayload" }, "password": { "type": "string", "description": "Terminal password sent as Kennwort in TECS XML (optional)", "example": "testPWD", "key$": "password" } }, "required": ["amount", "currency", "devicePayload", "terminalId", "txtype"], "x-ref": "#/components/schemas/PaymentSredRequest", "index$": 1 } } }, "required": true }, "parameters": [] } });
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