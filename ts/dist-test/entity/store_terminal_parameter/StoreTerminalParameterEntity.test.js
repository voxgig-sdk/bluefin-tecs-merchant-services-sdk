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
(0, node_test_1.describe)('StoreTerminalParameterEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsMerchantServicesSDK.test();
        const ent = testsdk.StoreTerminalParameter();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'store_terminal_parameter.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "acqTabNexo": { "a": true, "h": "Acq Tab Nexo", "n": "acqTabNexo", "r": false, "t": "`$OBJECT`", "key$": "acqTabNexo", "index$": 0 }, "configVersion": { "a": true, "h": "Config Version", "n": "configVersion", "r": false, "t": "`$STRING`", "key$": "configVersion", "index$": 1 }, "responseCode": { "a": true, "fo": "int32", "h": "Response Code", "n": "responseCode", "r": false, "t": "`$INTEGER`", "key$": "responseCode", "index$": 2 }, "responseMessage": { "a": true, "h": "Response Message", "n": "responseMessage", "r": false, "t": "`$STRING`", "key$": "responseMessage", "index$": 3 }, "serialNumber": { "a": true, "h": "Serial Number", "n": "serialNumber", "r": true, "t": "`$STRING`", "key$": "serialNumber", "index$": 4 }, "tidSent": { "a": true, "h": "Tid Sent", "n": "tidSent", "r": false, "t": "`$STRING`", "key$": "tidSent", "index$": 5 } }, "name": "store_terminal_parameter", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "co": { "id": "POST /storeTerminalParameters", "source": "openapi3", "version": 2 }, "g": {}, "k": "http", "m": "POST", "o": "/storeTerminalParameters", "q": {}, "r": {}, "s": [{ "lit": "storeTerminalParameters" }], "t": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "store_terminal_parameter", "name__orig": "store_terminal_parameter", "Name": "StoreTerminalParameter", "name_": "store_terminal_parameter", "name-": "store-terminal-parameter", "NAME": "STORE_TERMINAL_PARAMETER", "index$": 32 }, { "active": true, "entity": "store_terminal_parameter", "key$": "BasicStoreTerminalParameterFlow", "kind": "basic", "name": "BasicStoreTerminalParameterFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "store_terminal_parameter_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'StoreTerminalParameter', { "POST /storeTerminalParameters": { "protocol": "http", "requestBody": { "content": { "application/json": { "schema": { "type": "object", "properties": { "serialNumber": { "type": "string", "minLength": 1, "key$": "serialNumber" }, "configVersion": { "type": "string", "key$": "configVersion" }, "tidSent": { "type": "string", "key$": "tidSent" }, "acqTabNexo": { "type": "object", "properties": { "acqId": { "type": "integer", "format": "int32" }, "initPartyId": { "type": "string" }, "onLnCmplXchgIfFaild": { "type": "boolean" }, "onLnCmplXchgIfDclnd": { "type": "boolean" }, "offLnCmplXchgIfFaild": { "type": "boolean" }, "offLnCmplXchgIfDclnd": { "type": "boolean" }, "prtctCardData": { "type": "boolean" }, "msgItms": { "type": "string" } }, "x-ref": "#/components/schemas/AcqTabNexo", "key$": "acqTabNexo" } }, "required": ["serialNumber"], "x-ref": "#/components/schemas/StoreTerminalParametersRequest", "index$": 1 } } }, "required": true }, "parameters": [] } });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const store_terminal_parameter_ref01_ent = client.StoreTerminalParameter();
        let store_terminal_parameter_ref01_data = setup.data.new.store_terminal_parameter['store_terminal_parameter_ref01'];
        store_terminal_parameter_ref01_data = (await store_terminal_parameter_ref01_ent.create(store_terminal_parameter_ref01_data)).data();
        (0, node_assert_1.default)(null != store_terminal_parameter_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/store_terminal_parameter/StoreTerminalParameterTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsMerchantServicesSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['store_terminal_parameter01', 'store_terminal_parameter02', 'store_terminal_parameter03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STORE_TERMINAL_PARAMETER_ENTID': idmap,
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STORE_TERMINAL_PARAMETER_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STORE_TERMINAL_PARAMETER_ENTID'];
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
//# sourceMappingURL=StoreTerminalParameterEntity.test.js.map