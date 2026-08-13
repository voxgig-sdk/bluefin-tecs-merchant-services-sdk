// BluefinTecsMerchantServicesSDK client (generated — mirrors the go/rust Main fragment).

const std = @import("std");
const vs = @import("voxgig-struct");
const h = @import("helpers.zig");
const errmod = @import("error.zig");
const types = @import("types.zig");
const ctxmod = @import("context.zig");
const utility_mod = @import("utility.zig");
const spec_mod = @import("spec.zig");
const config = @import("config.zig");

const Value = h.Value;
const E = errmod.E;
const Context = ctxmod.Context;
const CtxSpec = ctxmod.CtxSpec;
const Utility = utility_mod.Utility;
const Feature = types.Feature;
const OpResult = types.OpResult;
const Spec = spec_mod.Spec;

pub const BluefinTecsMerchantServicesSDK = struct {
    mode: []const u8 = "live",
    options: Value = .{ .null = {} },
    utility: *Utility,
    features: std.ArrayList(Feature),
    rootctx: ?*Context = null,

    pub fn new(options: Value) *BluefinTecsMerchantServicesSDK {
        const sdk = h.A().create(BluefinTecsMerchantServicesSDK) catch unreachable;
        sdk.* = .{
            .mode = "live",
            .options = h.vnull(),
            .utility = Utility.new(),
            .features = std.ArrayList(Feature).init(h.A()),
            .rootctx = null,
        };

        const cfg = config.make_config();

        const rootctx = sdk.utility.make_context(CtxSpec{
            .client = sdk,
            .utility = sdk.utility,
            .config = cfg,
            .options = options,
            .shared = h.omap(),
        }, null);

        const opts = sdk.utility.make_options(rootctx);
        sdk.options = opts;

        if (h.veq(h.getpath(&.{ "feature", "test", "active" }, opts), h.vbool(true))) {
            sdk.mode = "test";
        }

        rootctx.options = opts;
        sdk.rootctx = rootctx;

        // Add features in the resolved order (make_options puts an explicit
        // list order first, else defaults to test-first). Ordering matters:
        // the `test` feature installs the base mock transport and the
        // transport features (retry/cache/netsim/proxy/ratelimit) wrap
        // whatever is current, so `test` must be added before them to sit at
        // the base of the transport wrapper chain.
        const feature_opts = h.to_map(h.getp(opts, "feature"));
        const feature_order = h.getpath(&.{ "__derived__", "featureorder" }, opts);
        if (feature_opts == .object and feature_order == .array) {
            for (feature_order.array.data.items) |fname_v| {
                if (fname_v != .string) continue;
                const fname = fname_v.string;
                const fopts = h.getp(feature_opts, fname);
                if (fopts == .object) {
                    if (h.get_bool(fopts, "active") orelse false) {
                        sdk.utility.feature_add(rootctx, config.make_feature(fname));
                    }
                }
            }
        }

        // Initialize features.
        var snap = std.ArrayList(Feature).init(h.A());
        for (sdk.features.items) |f| snap.append(f) catch {};
        for (snap.items) |f| sdk.utility.feature_init(rootctx, f);

        sdk.utility.feature_hook(rootctx, "PostConstruct");

        return sdk;
    }

    pub fn options_map(self: *BluefinTecsMerchantServicesSDK) Value {
        return h.clone(self.options);
    }

    pub fn get_utility(self: *BluefinTecsMerchantServicesSDK) *Utility {
        return Utility.copy(self.utility);
    }

    pub fn get_root_ctx(self: *BluefinTecsMerchantServicesSDK) *Context {
        return self.rootctx orelse unreachable;
    }

    pub fn prepare(self: *BluefinTecsMerchantServicesSDK, fetchargs_in: Value) E!Value {
        const utility = self.utility;

        const fetchargs: Value = switch (fetchargs_in) {
            .object => fetchargs_in,
            else => h.omap(),
        };

        const ctrl: Value = switch (h.to_map(h.getp(fetchargs, "ctrl"))) {
            .object => h.to_map(h.getp(fetchargs, "ctrl")),
            else => h.omap(),
        };

        const ctx = utility.make_context(CtxSpec{
            .opname = "prepare",
            .ctrl = ctrl,
        }, self.get_root_ctx());

        const options = self.options;

        const path = h.get_str(fetchargs, "path") orelse "";
        const method: []const u8 = blk: {
            const m = h.get_str(fetchargs, "method");
            break :blk if (m) |mm| (if (mm.len == 0) "GET" else mm) else "GET";
        };

        const params: Value = switch (h.to_map(h.getp(fetchargs, "params"))) {
            .object => h.to_map(h.getp(fetchargs, "params")),
            else => h.omap(),
        };
        const query: Value = switch (h.to_map(h.getp(fetchargs, "query"))) {
            .object => h.to_map(h.getp(fetchargs, "query")),
            else => h.omap(),
        };

        const headers = utility.prepare_headers(ctx);

        const specmap = h.jo(&.{
            .{ "base", h.getp(options, "base") },
            .{ "prefix", h.getp(options, "prefix") },
            .{ "suffix", h.getp(options, "suffix") },
            .{ "path", h.vstr(path) },
            .{ "method", h.vstr(method) },
            .{ "params", params },
            .{ "query", query },
            .{ "headers", headers },
            .{ "body", h.getp(fetchargs, "body") },
            .{ "step", h.vstr("start") },
        });
        const spec = Spec.make(specmap);
        ctx.spec = spec;

        // Merge user-provided headers.
        if (h.getp(fetchargs, "headers") == .object) {
            const uh = h.getp(fetchargs, "headers");
            var it = uh.object.iterator();
            while (it.next()) |kv| h.setp(spec.headers, kv.key_ptr.*, kv.value_ptr.*);
        }

        _ = try utility.prepare_auth(ctx);

        return utility.make_fetch_def(ctx);
    }

    // Raw endpoint access is operator-controllable, like every entity op.
    // Blocking it means denying BOTH the 'direct' and 'graphql' tokens,
    // since either one reaches the same endpoint.
    pub fn direct(self: *BluefinTecsMerchantServicesSDK, fetchargs_in: Value) Value {
        if (!self.op_allowed("direct")) return self.op_denied("direct");

        return self.raw_request(fetchargs_in);
    }

    // Is this raw-access op permitted by the SDK's allow.op option?
    fn op_allowed(self: *BluefinTecsMerchantServicesSDK, op: []const u8) bool {
        const allow: []const u8 = switch (h.getpath(&.{ "allow", "op" }, self.options)) {
            .string => |s| s,
            else => "",
        };
        return std.mem.indexOf(u8, allow, op) != null;
    }

    fn op_denied(self: *BluefinTecsMerchantServicesSDK, op: []const u8) Value {
        const allow: []const u8 = switch (h.getpath(&.{ "allow", "op" }, self.options)) {
            .string => |s| s,
            else => "",
        };
        const msg = std.fmt.allocPrint(h.A(),
            "BluefinTecsMerchantServicesSDK: {s}: operation not allowed by" ++
            " SDK option allow.op value: \"{s}\"", .{ op, allow }) catch "";
        return h.jo(&.{
            .{ "ok", h.vbool(false) },
            .{ "err", h.vstr(msg) },
        });
    }

    // Ungated request path shared by direct and graphql, each of which checks
    // its own allow.op token first. Private, rather than a flag on fetchargs:
    // a caller-supplied marker would let anyone opt straight back out of the
    // gate by passing it.
    fn raw_request(self: *BluefinTecsMerchantServicesSDK, fetchargs_in: Value) Value {
        const utility = self.utility;

        const fetchdef = self.prepare(fetchargs_in) catch {
            return h.jo(&.{
                .{ "ok", h.vbool(false) },
                .{ "err", h.vstr(if (self.rootctx.?.pending_err) |e| e.msg else "prepare failed") },
            });
        };

        const fetchargs: Value = switch (fetchargs_in) {
            .object => fetchargs_in,
            else => h.omap(),
        };
        const ctrl: Value = switch (h.to_map(h.getp(fetchargs, "ctrl"))) {
            .object => h.to_map(h.getp(fetchargs, "ctrl")),
            else => h.omap(),
        };

        const ctx = utility.make_context(CtxSpec{
            .opname = "direct",
            .ctrl = ctrl,
        }, self.get_root_ctx());

        const url = h.get_str(fetchdef, "url") orelse "";
        const fetched = utility.fetch(ctx, url, fetchdef) catch {
            return h.jo(&.{
                .{ "ok", h.vbool(false) },
                .{ "err", h.vstr(if (ctx.pending_err) |e| e.msg else "fetch failed") },
            });
        };

        if (h.is_noval(fetched)) {
            return h.jo(&.{
                .{ "ok", h.vbool(false) },
                .{ "err", h.vstr("response: undefined") },
            });
        }

        if (fetched == .object) {
            const status = h.to_int(h.getp(fetched, "status"));
            const headers = h.getp(fetched, "headers");

            const content_length: []const u8 = switch (h.getp(headers, "content-length")) {
                .string => |s| s,
                .integer => |n| std.fmt.allocPrint(h.A(), "{d}", .{n}) catch "",
                else => "",
            };
            const no_body = status == 204 or status == 304 or std.mem.eql(u8, content_length, "0");

            const json_data: Value = if (no_body) h.vnull() else blk: {
                const jf = h.getp(fetched, "json");
                break :blk if (jf == .function) h.call_json(jf) else h.vnull();
            };

            return h.jo(&.{
                .{ "ok", h.vbool(200 <= status and status < 300) },
                .{ "status", h.vnum(status) },
                .{ "headers", headers },
                .{ "data", json_data },
            });
        }

        return h.jo(&.{
            .{ "ok", h.vbool(false) },
            .{ "err", h.vstr("invalid response type") },
        });
    }

    // Raw GraphQL access: the pressure valve that makes the generated
    // surface's deliberate omissions (per-call selection sets, typed filter
    // builders, batching, subscriptions) livable — the whole schema stays
    // reachable.
    //
    // Thin wrapper over the same prepare/fetch path direct uses, with the one
    // thing raw direct cannot do for GraphQL: a GraphQL failure rides HTTP
    // 200 as a top-level `errors` array, so status alone would report a
    // failed query as ok.
    //
    // NOTE: like direct, this bypasses the feature pipeline — no retry,
    // ratelimit or paging features apply.
    pub fn graphql(
        self: *BluefinTecsMerchantServicesSDK, query: []const u8, variables: Value, ctrl: Value,
    ) Value {
        if (!self.op_allowed("graphql")) return self.op_denied("graphql");

        const vars: Value = switch (variables) {
            .object => variables,
            else => h.omap(),
        };
        const ctl: Value = switch (ctrl) {
            .object => ctrl,
            else => h.omap(),
        };

        const res = self.raw_request(h.jo(&.{
            .{ "method", h.vstr("POST") },
            .{ "headers", h.jo(&.{.{ "content-type", h.vstr(utility_mod.GRAPHQL_CONTENT_TYPE) }}) },
            .{ "body", h.jo(&.{ .{ "query", h.vstr(query) }, .{ "variables", vars } }) },
            .{ "ctrl", ctl },
        }));

        if (res != .object) return res;

        // Errors are read BEFORE any status check: a GraphQL parse or
        // validation failure comes back as HTTP 400 carrying the standard
        // { errors: [...] } body, and the raw path represents a non-2xx as
        // ok:false with no err — so returning early on status would discard
        // the server's own diagnostics, which are the only useful part of
        // that response.
        const errors = h.getp(h.getp(res, "data"), "errors");

        if (errors == .array and 0 < errors.array.data.items.len) {
            const first = errors.array.data.items[0];
            const m: []const u8 = switch (h.getp(first, "message")) {
                .string => |x| if (x.len == 0) "graphql error" else x,
                else => "graphql error",
            };
            const msg = std.fmt.allocPrint(h.A(),
                "BluefinTecsMerchantServicesSDK: graphql: {s}", .{m}) catch "";
            h.setp(res, "ok", h.vbool(false));
            h.setp(res, "err", h.vstr(msg));
            h.setp(res, "graphql", errors);
        }

        return res;
    }


    /// CancelTransaction entity bound to this client.
    pub fn cancel_transaction(self: *@This(), entopts: Value) *@import("../entity/cancel_transaction.zig").CancelTransactionEntity {
        return @import("../entity/cancel_transaction.zig").CancelTransactionEntity.new(self, entopts);
    }

    /// CheckCardBlackListed entity bound to this client.
    pub fn check_card_black_listed(self: *@This(), entopts: Value) *@import("../entity/check_card_black_listed.zig").CheckCardBlackListedEntity {
        return @import("../entity/check_card_black_listed.zig").CheckCardBlackListedEntity.new(self, entopts);
    }

    /// CreateProduct entity bound to this client.
    pub fn create_product(self: *@This(), entopts: Value) *@import("../entity/create_product.zig").CreateProductEntity {
        return @import("../entity/create_product.zig").CreateProductEntity.new(self, entopts);
    }

    /// DeactivateTerminal entity bound to this client.
    pub fn deactivate_terminal(self: *@This(), entopts: Value) *@import("../entity/deactivate_terminal.zig").DeactivateTerminalEntity {
        return @import("../entity/deactivate_terminal.zig").DeactivateTerminalEntity.new(self, entopts);
    }

    /// DigitalServicesApi entity bound to this client.
    pub fn digital_services_api(self: *@This(), entopts: Value) *@import("../entity/digital_services_api.zig").DigitalServicesApiEntity {
        return @import("../entity/digital_services_api.zig").DigitalServicesApiEntity.new(self, entopts);
    }

    /// EcDataEcom entity bound to this client.
    pub fn ec_data_ecom(self: *@This(), entopts: Value) *@import("../entity/ec_data_ecom.zig").EcDataEcomEntity {
        return @import("../entity/ec_data_ecom.zig").EcDataEcomEntity.new(self, entopts);
    }

    /// EcomParameter entity bound to this client.
    pub fn ecom_parameter(self: *@This(), entopts: Value) *@import("../entity/ecom_parameter.zig").EcomParameterEntity {
        return @import("../entity/ecom_parameter.zig").EcomParameterEntity.new(self, entopts);
    }

    /// EcrData entity bound to this client.
    pub fn ecr_data(self: *@This(), entopts: Value) *@import("../entity/ecr_data.zig").EcrDataEntity {
        return @import("../entity/ecr_data.zig").EcrDataEntity.new(self, entopts);
    }

    /// EmvData entity bound to this client.
    pub fn emv_data(self: *@This(), entopts: Value) *@import("../entity/emv_data.zig").EmvDataEntity {
        return @import("../entity/emv_data.zig").EmvDataEntity.new(self, entopts);
    }

    /// EnableAcquiring entity bound to this client.
    pub fn enable_acquiring(self: *@This(), entopts: Value) *@import("../entity/enable_acquiring.zig").EnableAcquiringEntity {
        return @import("../entity/enable_acquiring.zig").EnableAcquiringEntity.new(self, entopts);
    }

    /// GetMerchantContractNumber entity bound to this client.
    pub fn get_merchant_contract_number(self: *@This(), entopts: Value) *@import("../entity/get_merchant_contract_number.zig").GetMerchantContractNumberEntity {
        return @import("../entity/get_merchant_contract_number.zig").GetMerchantContractNumberEntity.new(self, entopts);
    }

    /// GetTemplateXml entity bound to this client.
    pub fn get_template_xml(self: *@This(), entopts: Value) *@import("../entity/get_template_xml.zig").GetTemplateXmlEntity {
        return @import("../entity/get_template_xml.zig").GetTemplateXmlEntity.new(self, entopts);
    }

    /// IntroduceMandator entity bound to this client.
    pub fn introduce_mandator(self: *@This(), entopts: Value) *@import("../entity/introduce_mandator.zig").IntroduceMandatorEntity {
        return @import("../entity/introduce_mandator.zig").IntroduceMandatorEntity.new(self, entopts);
    }

    /// IntroducePackage entity bound to this client.
    pub fn introduce_package(self: *@This(), entopts: Value) *@import("../entity/introduce_package.zig").IntroducePackageEntity {
        return @import("../entity/introduce_package.zig").IntroducePackageEntity.new(self, entopts);
    }

    /// KeepAlive entity bound to this client.
    pub fn keep_alive(self: *@This(), entopts: Value) *@import("../entity/keep_alive.zig").KeepAliveEntity {
        return @import("../entity/keep_alive.zig").KeepAliveEntity.new(self, entopts);
    }

    /// ListTerminal entity bound to this client.
    pub fn list_terminal(self: *@This(), entopts: Value) *@import("../entity/list_terminal.zig").ListTerminalEntity {
        return @import("../entity/list_terminal.zig").ListTerminalEntity.new(self, entopts);
    }

    /// MandatorClearingExport entity bound to this client.
    pub fn mandator_clearing_export(self: *@This(), entopts: Value) *@import("../entity/mandator_clearing_export.zig").MandatorClearingExportEntity {
        return @import("../entity/mandator_clearing_export.zig").MandatorClearingExportEntity.new(self, entopts);
    }

    /// MandatorClearingExportDownload entity bound to this client.
    pub fn mandator_clearing_export_download(self: *@This(), entopts: Value) *@import("../entity/mandator_clearing_export_download.zig").MandatorClearingExportDownloadEntity {
        return @import("../entity/mandator_clearing_export_download.zig").MandatorClearingExportDownloadEntity.new(self, entopts);
    }

    /// MandatorClearingExportSummary entity bound to this client.
    pub fn mandator_clearing_export_summary(self: *@This(), entopts: Value) *@import("../entity/mandator_clearing_export_summary.zig").MandatorClearingExportSummaryEntity {
        return @import("../entity/mandator_clearing_export_summary.zig").MandatorClearingExportSummaryEntity.new(self, entopts);
    }

    /// MerchantPortalServicesApi entity bound to this client.
    pub fn merchant_portal_services_api(self: *@This(), entopts: Value) *@import("../entity/merchant_portal_services_api.zig").MerchantPortalServicesApiEntity {
        return @import("../entity/merchant_portal_services_api.zig").MerchantPortalServicesApiEntity.new(self, entopts);
    }

    /// MoveTid entity bound to this client.
    pub fn move_tid(self: *@This(), entopts: Value) *@import("../entity/move_tid.zig").MoveTidEntity {
        return @import("../entity/move_tid.zig").MoveTidEntity.new(self, entopts);
    }

    /// PaymentManual entity bound to this client.
    pub fn payment_manual(self: *@This(), entopts: Value) *@import("../entity/payment_manual.zig").PaymentManualEntity {
        return @import("../entity/payment_manual.zig").PaymentManualEntity.new(self, entopts);
    }

    /// PaymentSred entity bound to this client.
    pub fn payment_sred(self: *@This(), entopts: Value) *@import("../entity/payment_sred.zig").PaymentSredEntity {
        return @import("../entity/payment_sred.zig").PaymentSredEntity.new(self, entopts);
    }

    /// PreAuthTransactionCompletion entity bound to this client.
    pub fn pre_auth_transaction_completion(self: *@This(), entopts: Value) *@import("../entity/pre_auth_transaction_completion.zig").PreAuthTransactionCompletionEntity {
        return @import("../entity/pre_auth_transaction_completion.zig").PreAuthTransactionCompletionEntity.new(self, entopts);
    }

    /// ReactivateTerminal entity bound to this client.
    pub fn reactivate_terminal(self: *@This(), entopts: Value) *@import("../entity/reactivate_terminal.zig").ReactivateTerminalEntity {
        return @import("../entity/reactivate_terminal.zig").ReactivateTerminalEntity.new(self, entopts);
    }

    /// RefundTransaction entity bound to this client.
    pub fn refund_transaction(self: *@This(), entopts: Value) *@import("../entity/refund_transaction.zig").RefundTransactionEntity {
        return @import("../entity/refund_transaction.zig").RefundTransactionEntity.new(self, entopts);
    }

    /// RegisterTecsCompany entity bound to this client.
    pub fn register_tecs_company(self: *@This(), entopts: Value) *@import("../entity/register_tecs_company.zig").RegisterTecsCompanyEntity {
        return @import("../entity/register_tecs_company.zig").RegisterTecsCompanyEntity.new(self, entopts);
    }

    /// RegisterTerminal entity bound to this client.
    pub fn register_terminal(self: *@This(), entopts: Value) *@import("../entity/register_terminal.zig").RegisterTerminalEntity {
        return @import("../entity/register_terminal.zig").RegisterTerminalEntity.new(self, entopts);
    }

    /// ReportData entity bound to this client.
    pub fn report_data(self: *@This(), entopts: Value) *@import("../entity/report_data.zig").ReportDataEntity {
        return @import("../entity/report_data.zig").ReportDataEntity.new(self, entopts);
    }

    /// StatusTransaction entity bound to this client.
    pub fn status_transaction(self: *@This(), entopts: Value) *@import("../entity/status_transaction.zig").StatusTransactionEntity {
        return @import("../entity/status_transaction.zig").StatusTransactionEntity.new(self, entopts);
    }

    /// StoreTerminalParameter entity bound to this client.
    pub fn store_terminal_parameter(self: *@This(), entopts: Value) *@import("../entity/store_terminal_parameter.zig").StoreTerminalParameterEntity {
        return @import("../entity/store_terminal_parameter.zig").StoreTerminalParameterEntity.new(self, entopts);
    }

    /// TerminalId entity bound to this client.
    pub fn terminal_id(self: *@This(), entopts: Value) *@import("../entity/terminal_id.zig").TerminalIdEntity {
        return @import("../entity/terminal_id.zig").TerminalIdEntity.new(self, entopts);
    }

    /// TransactionHistory entity bound to this client.
    pub fn transaction_history(self: *@This(), entopts: Value) *@import("../entity/transaction_history.zig").TransactionHistoryEntity {
        return @import("../entity/transaction_history.zig").TransactionHistoryEntity.new(self, entopts);
    }

    /// TransactionsCount entity bound to this client.
    pub fn transactions_count(self: *@This(), entopts: Value) *@import("../entity/transactions_count.zig").TransactionsCountEntity {
        return @import("../entity/transactions_count.zig").TransactionsCountEntity.new(self, entopts);
    }

    /// TransactionsCountCardBrand entity bound to this client.
    pub fn transactions_count_card_brand(self: *@This(), entopts: Value) *@import("../entity/transactions_count_card_brand.zig").TransactionsCountCardBrandEntity {
        return @import("../entity/transactions_count_card_brand.zig").TransactionsCountCardBrandEntity.new(self, entopts);
    }

    /// TransactionsTurnover entity bound to this client.
    pub fn transactions_turnover(self: *@This(), entopts: Value) *@import("../entity/transactions_turnover.zig").TransactionsTurnoverEntity {
        return @import("../entity/transactions_turnover.zig").TransactionsTurnoverEntity.new(self, entopts);
    }

    /// UpdateMerchant entity bound to this client.
    pub fn update_merchant(self: *@This(), entopts: Value) *@import("../entity/update_merchant.zig").UpdateMerchantEntity {
        return @import("../entity/update_merchant.zig").UpdateMerchantEntity.new(self, entopts);
    }

    /// UpdateTemplateXml entity bound to this client.
    pub fn update_template_xml(self: *@This(), entopts: Value) *@import("../entity/update_template_xml.zig").UpdateTemplateXmlEntity {
        return @import("../entity/update_template_xml.zig").UpdateTemplateXmlEntity.new(self, entopts);
    }

    /// Version entity bound to this client.
    pub fn version(self: *@This(), entopts: Value) *@import("../entity/version.zig").VersionEntity {
        return @import("../entity/version.zig").VersionEntity.new(self, entopts);
    }

};

pub fn test_sdk(testopts_in: Value, sdkopts_in: Value) *BluefinTecsMerchantServicesSDK {
    const sdkopts: Value = switch (sdkopts_in) {
        .object => h.clone(sdkopts_in),
        else => h.omap(),
    };

    const testopts: Value = switch (testopts_in) {
        .object => h.clone(testopts_in),
        else => h.omap(),
    };
    h.setp(testopts, "active", h.vbool(true));

    // set_path mutates `sdkopts` in place; keep the ROOT (gotcha #8 — do not
    // rebind to the return of setpath).
    h.setpath(sdkopts, &.{ "feature", "test" }, testopts);

    const sdk = BluefinTecsMerchantServicesSDK.new(sdkopts);
    sdk.mode = "test";

    return sdk;
}
