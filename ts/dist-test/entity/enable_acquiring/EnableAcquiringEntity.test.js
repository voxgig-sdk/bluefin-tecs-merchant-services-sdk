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
(0, node_test_1.describe)('EnableAcquiringEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsMerchantServicesSDK.test();
        const ent = testsdk.EnableAcquiring();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'enable_acquiring.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "accountNo": { "a": true, "fo": "int32", "h": "Account No", "n": "accountNo", "r": false, "t": "`$INTEGER`", "key$": "accountNo", "index$": 0 }, "additionalData": { "a": true, "h": "Additional Data", "n": "additionalData", "r": false, "t": "`$OBJECT`", "key$": "additionalData", "index$": 1 }, "corporateUuid": { "a": true, "h": "Corporate Uuid", "n": "corporateUuid", "r": true, "t": "`$STRING`", "key$": "corporateUuid", "index$": 2 }, "currency": { "a": true, "h": "Currency", "n": "currency", "r": true, "t": "`$STRING`", "key$": "currency", "index$": 3 }, "merchantCategoryCode": { "a": true, "fo": "int32", "h": "Merchant Category Code", "n": "merchantCategoryCode", "r": true, "t": "`$INTEGER`", "key$": "merchantCategoryCode", "index$": 4 }, "packageOrderUuid": { "a": true, "h": "Package Order Uuid", "n": "packageOrderUuid", "r": true, "t": "`$STRING`", "key$": "packageOrderUuid", "index$": 5 }, "productOrderUuid": { "a": true, "h": "Product Order Uuid", "n": "productOrderUuid", "r": true, "t": "`$STRING`", "key$": "productOrderUuid", "index$": 6 }, "responseCode": { "a": true, "fo": "int32", "h": "Response Code", "n": "responseCode", "r": false, "t": "`$INTEGER`", "key$": "responseCode", "index$": 7 }, "responseMessage": { "a": true, "h": "Response Message", "n": "responseMessage", "r": false, "t": "`$STRING`", "key$": "responseMessage", "index$": 8 }, "sortingCode": { "a": true, "fo": "int32", "h": "Sorting Code", "n": "sortingCode", "r": false, "t": "`$INTEGER`", "key$": "sortingCode", "index$": 9 }, "templateName": { "a": true, "h": "Template Name", "n": "templateName", "r": true, "t": "`$STRING`", "key$": "templateName", "index$": 10 }, "terminalIdAcq": { "a": true, "h": "Terminal Id Acq", "n": "terminalIdAcq", "r": false, "t": "`$STRING`", "key$": "terminalIdAcq", "index$": 11 }, "terminalIds": { "a": true, "h": "Terminal Ids", "n": "terminalIds", "r": false, "t": "`$ARRAY`", "key$": "terminalIds", "index$": 12 }, "vuNummer": { "a": true, "h": "Vu Nummer", "n": "vuNummer", "r": false, "t": "`$STRING`", "key$": "vuNummer", "index$": 13 } }, "name": "enable_acquiring", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "co": { "id": "POST /enableAcquiring", "source": "openapi3", "version": 2 }, "g": {}, "k": "http", "m": "POST", "o": "/enableAcquiring", "q": {}, "r": {}, "s": [{ "lit": "enableAcquiring" }], "t": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "enable_acquiring", "name__orig": "enable_acquiring", "Name": "EnableAcquiring", "name_": "enable_acquiring", "name-": "enable-acquiring", "NAME": "ENABLE_ACQUIRING", "index$": 11 }, { "active": true, "entity": "enable_acquiring", "key$": "BasicEnableAcquiringFlow", "kind": "basic", "name": "BasicEnableAcquiringFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "enable_acquiring_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'EnableAcquiring', { "POST /enableAcquiring": { "protocol": "http", "requestBody": { "content": { "application/json": { "schema": { "type": "object", "properties": { "packageOrderUuid": { "type": "string", "minLength": 1, "key$": "packageOrderUuid" }, "corporateUuid": { "type": "string", "minLength": 1, "key$": "corporateUuid" }, "productOrderUuid": { "type": "string", "minLength": 1, "key$": "productOrderUuid" }, "templateName": { "type": "string", "minLength": 1, "key$": "templateName" }, "vuNummer": { "type": "string", "maxLength": 15, "minLength": 1, "key$": "vuNummer" }, "currency": { "type": "string", "maxLength": 3, "minLength": 3, "key$": "currency" }, "merchantCategoryCode": { "type": "integer", "format": "int32", "minimum": 0, "key$": "merchantCategoryCode" }, "sortingCode": { "type": "integer", "format": "int32", "key$": "sortingCode" }, "accountNo": { "type": "integer", "format": "int32", "key$": "accountNo" }, "terminalIdAcq": { "type": "string", "key$": "terminalIdAcq" }, "additionalData": { "type": "object", "additionalProperties": { "type": "string" }, "key$": "additionalData" }, "terminalIds": { "type": "array", "items": { "type": "integer", "format": "int32" }, "key$": "terminalIds" } }, "required": ["corporateUuid", "currency", "merchantCategoryCode", "packageOrderUuid", "productOrderUuid", "templateName"], "x-ref": "#/components/schemas/EnableAcquiringRequest", "index$": 1 } } }, "required": true }, "parameters": [] } });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const enable_acquiring_ref01_ent = client.EnableAcquiring();
        let enable_acquiring_ref01_data = setup.data.new.enable_acquiring['enable_acquiring_ref01'];
        enable_acquiring_ref01_data = (await enable_acquiring_ref01_ent.create(enable_acquiring_ref01_data)).data();
        (0, node_assert_1.default)(null != enable_acquiring_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/enable_acquiring/EnableAcquiringTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsMerchantServicesSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['enable_acquiring01', 'enable_acquiring02', 'enable_acquiring03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ENABLE_ACQUIRING_ENTID': idmap,
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ENABLE_ACQUIRING_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ENABLE_ACQUIRING_ENTID'];
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
//# sourceMappingURL=EnableAcquiringEntity.test.js.map