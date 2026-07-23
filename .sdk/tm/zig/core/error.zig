// BluefinTecsMerchantServicesError: the SDK error type (mirrors go core/error.go / the rust
// SdkError fragment). The pipeline error discipline is `E!T` (E = error{Sdk})
// with the rich error object stashed on the context's pending_err, then read
// back by makeError. This templated file only needs the project name.

const vs = @import("voxgig-struct");
const mem = @import("mem.zig");
const Value = vs.JsonValue;

pub const BluefinTecsMerchantServicesError = struct {
    sdk: []const u8 = "BluefinTecsMerchantServices",
    code: []const u8,
    msg: []const u8,
    // Cleaned snapshots attached by makeError (null until then).
    result: Value = .{ .null = {} },
    spec: Value = .{ .null = {} },

    // Heap-allocate a fresh error on the SDK arena (so it can be pointed at
    // from ctx.pending_err / ctrl.err and outlive the call frame).
    pub fn make(code: []const u8, msg: []const u8) *BluefinTecsMerchantServicesError {
        const e = mem.a().create(BluefinTecsMerchantServicesError) catch unreachable;
        e.* = .{ .sdk = "BluefinTecsMerchantServices", .code = code, .msg = msg };
        return e;
    }
};

// The pipeline error set. The payload travels via ctx.pending_err.
pub const E = error{Sdk};
