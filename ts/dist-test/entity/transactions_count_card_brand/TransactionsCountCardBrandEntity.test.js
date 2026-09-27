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
(0, node_test_1.describe)('TransactionsCountCardBrandEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsMerchantServicesSDK.test();
        const ent = testsdk.TransactionsCountCardBrand();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'transactions_count_card_brand.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "period": { "a": true, "h": "Period", "n": "period", "r": false, "t": "`$STRING`", "key$": "period", "index$": 0 }, "responseCode": { "a": true, "fo": "int32", "h": "Response Code", "n": "responseCode", "r": false, "t": "`$INTEGER`", "key$": "responseCode", "index$": 1 }, "responseMessage": { "a": true, "h": "Response Message", "n": "responseMessage", "r": false, "t": "`$STRING`", "key$": "responseMessage", "index$": 2 }, "transactionDateFrom": { "a": true, "fo": "date-time", "h": "Transaction Date From", "n": "transactionDateFrom", "op": { "create": { "req": true, "type": "`$STRING`" } }, "r": false, "t": "`$STRING`", "key$": "transactionDateFrom", "index$": 3 }, "transactionDateTo": { "a": true, "fo": "date-time", "h": "Transaction Date To", "n": "transactionDateTo", "op": { "create": { "req": true, "type": "`$STRING`" } }, "r": false, "t": "`$STRING`", "key$": "transactionDateTo", "index$": 4 }, "transactionsCount": { "a": true, "h": "Transactions Count", "n": "transactionsCount", "r": false, "t": "`$ARRAY`", "key$": "transactionsCount", "index$": 5 } }, "name": "transactions_count_card_brand", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "co": { "id": "POST /public/countTransactionsByCardBrand", "source": "openapi3", "version": 2 }, "g": {}, "k": "http", "m": "POST", "o": "/public/countTransactionsByCardBrand", "q": {}, "r": {}, "s": [{ "lit": "public" }, { "lit": "countTransactionsByCardBrand" }], "t": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "transactions_count_card_brand", "name__orig": "transactions_count_card_brand", "Name": "TransactionsCountCardBrand", "name_": "transactions_count_card_brand", "name-": "transactions-count-card-brand", "NAME": "TRANSACTIONS_COUNT_CARD_BRAND", "index$": 35 }, { "active": true, "entity": "transactions_count_card_brand", "key$": "BasicTransactionsCountCardBrandFlow", "kind": "basic", "name": "BasicTransactionsCountCardBrandFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "transactions_count_card_brand_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'TransactionsCountCardBrand', { "POST /public/countTransactionsByCardBrand": { "protocol": "http", "requestBody": { "content": { "application/json": { "schema": { "type": "object", "properties": { "transactionDateFrom": { "type": "string", "format": "date-time", "key$": "transactionDateFrom" }, "transactionDateTo": { "type": "string", "format": "date-time", "key$": "transactionDateTo" }, "period": { "type": "string", "pattern": "HOUR|DAY|MONTH|YEAR", "key$": "period" } }, "required": ["transactionDateFrom", "transactionDateTo"], "x-ref": "#/components/schemas/TransactionsCountRequest", "index$": 1 } } }, "required": true }, "parameters": [] } });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const transactions_count_card_brand_ref01_ent = client.TransactionsCountCardBrand();
        let transactions_count_card_brand_ref01_data = setup.data.new.transactions_count_card_brand['transactions_count_card_brand_ref01'];
        transactions_count_card_brand_ref01_data = (await transactions_count_card_brand_ref01_ent.create(transactions_count_card_brand_ref01_data)).data();
        (0, node_assert_1.default)(null != transactions_count_card_brand_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/transactions_count_card_brand/TransactionsCountCardBrandTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsMerchantServicesSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['transactions_count_card_brand01', 'transactions_count_card_brand02', 'transactions_count_card_brand03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_CARD_BRAND_ENTID': idmap,
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_CARD_BRAND_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_CARD_BRAND_ENTID'];
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
//# sourceMappingURL=TransactionsCountCardBrandEntity.test.js.map