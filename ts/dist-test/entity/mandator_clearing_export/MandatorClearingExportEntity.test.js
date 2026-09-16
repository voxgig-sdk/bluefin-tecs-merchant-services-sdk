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
(0, node_test_1.describe)('MandatorClearingExportEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsMerchantServicesSDK.test();
        const ent = testsdk.MandatorClearingExport();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'mandator_clearing_export.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": [{ "active": true, "name": "clearingDateFrom", "req": true, "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ", "type": "`$STRING`", "index$": 0 }, { "active": true, "name": "clearingDateTo", "req": true, "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ", "type": "`$STRING`", "index$": 1 }, { "active": true, "name": "pagination", "req": false, "type": "`$OBJECT`", "index$": 2 }, { "active": true, "name": "records", "req": false, "type": "`$ARRAY`", "index$": 3 }, { "active": true, "format": "int32", "name": "responseCode", "req": false, "type": "`$INTEGER`", "index$": 4 }, { "active": true, "name": "responseMessage", "req": false, "type": "`$STRING`", "index$": 5 }], "name": "mandator_clearing_export", "op": { "create": { "input": "data", "name": "create", "points": [{ "active": true, "args": {}, "contract": { "id": "POST /public/digitalservices/mandatorClearingExport", "json": "{\"operationId\":\"mandatorClearingExport\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"clearingDateFrom\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ\",\"example\":\"2024-04-11T11:41:31+02:00\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ssZ\",\"type\":\"string\"},\"clearingDateTo\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ\",\"example\":\"2024-04-11T11:41:31+02:00\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ssZ\",\"type\":\"string\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"}},\"required\":[\"clearingDateFrom\",\"clearingDateTo\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"records\":{\"items\":{\"properties\":{\"acquirerName\":{\"type\":\"string\"},\"acquirerTerminalId\":{\"type\":\"string\"},\"amount\":{\"format\":\"int32\",\"type\":\"integer\"},\"authorizationCode\":{\"type\":\"string\"},\"authorizationDate\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ss\",\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"cardBrand\":{\"type\":\"string\"},\"cardEntry\":{\"type\":\"string\"},\"cardExpiration\":{\"type\":\"string\"},\"cardNumber\":{\"type\":\"string\"},\"clearingAmount\":{\"format\":\"int32\",\"type\":\"integer\"},\"clearingBatchId\":{\"format\":\"int32\",\"type\":\"integer\"},\"clearingCurrency\":{\"type\":\"string\"},\"clearingDate\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ss\",\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"clearingProcessedDate\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ss\",\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"clearingStatus\":{\"format\":\"int32\",\"type\":\"integer\"},\"clientId\":{\"format\":\"int32\",\"type\":\"integer\"},\"currency\":{\"type\":\"string\"},\"merchantName\":{\"type\":\"string\"},\"merchantNumber\":{\"type\":\"string\"},\"partnerId\":{\"type\":\"string\"},\"partnerName\":{\"type\":\"string\"},\"paymentReason\":{\"type\":\"string\"},\"receiptNumber\":{\"type\":\"string\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseCodeFromAS\":{\"type\":\"string\"},\"responseMessage\":{\"type\":\"string\"},\"retrievalReferenceNumber\":{\"format\":\"int64\",\"type\":\"integer\"},\"serviceCode\":{\"type\":\"string\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"},\"terminalLocation\":{\"type\":\"string\"},\"tipamt\":{\"format\":\"int32\",\"type\":\"integer\"},\"traceNumber\":{\"format\":\"int32\",\"type\":\"integer\"},\"transactionDate\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ss\",\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"transactionId\":{\"type\":\"string\"},\"transactionSeqNumber\":{\"format\":\"int32\",\"type\":\"integer\"},\"transactionServerDate\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ss\",\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"transactionSource\":{\"type\":\"string\"},\"transactionType\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Invalid request data. Bad request\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\nUnauthorized - Authentication failed:<br>\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: DAILY_REPORTS_VIEW or DAILY_BO_REPORTS_VIEW or BO_DAILY_REPORTS_CUSTOM or DAILY_REPORTS_CUSTOM\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}", "source": "openapi3", "version": 1 }, "kind": "http", "method": "POST", "orig": "/public/digitalservices/mandatorClearingExport", "segments": [{ "lit": "public" }, { "lit": "digitalservices" }, { "lit": "mandatorClearingExport" }], "select": {}, "transform": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "mandator_clearing_export", "name__orig": "mandator_clearing_export", "Name": "MandatorClearingExport", "name_": "mandator_clearing_export", "name-": "mandator-clearing-export", "NAME": "MANDATOR_CLEARING_EXPORT", "index$": 16 }, { "active": true, "entity": "mandator_clearing_export", "key$": "BasicMandatorClearingExportFlow", "kind": "basic", "name": "BasicMandatorClearingExportFlow", "param": {}, "step": [{ "active": true, "data": {}, "input": { "ref": "mandator_clearing_export_ref01" }, "match": {}, "op": "create", "spec": [], "valid": [], "index$": 0 }] }, 'MandatorClearingExport');
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const mandator_clearing_export_ref01_ent = client.MandatorClearingExport();
        let mandator_clearing_export_ref01_data = setup.data.new.mandator_clearing_export['mandator_clearing_export_ref01'];
        mandator_clearing_export_ref01_data = (await mandator_clearing_export_ref01_ent.create(mandator_clearing_export_ref01_data)).data();
        (0, node_assert_1.default)(null != mandator_clearing_export_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/mandator_clearing_export/MandatorClearingExportTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsMerchantServicesSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['mandator_clearing_export01', 'mandator_clearing_export02', 'mandator_clearing_export03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_ENTID': idmap,
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_ENTID'];
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
//# sourceMappingURL=MandatorClearingExportEntity.test.js.map