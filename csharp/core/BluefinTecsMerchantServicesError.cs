// BluefinTecsMerchantServicesError - the SDK error type. Carries the pipeline error code,
// the originating context and cleaned result/spec snapshots.

namespace BluefinTecsMerchantServicesSdk;

public class BluefinTecsMerchantServicesError : Exception
{
    public bool IsBluefinTecsMerchantServicesError = true;
    public string Sdk = "BluefinTecsMerchantServices";
    public string Code;
    public Context? Ctx;
    public object? ResultVal;
    public object? SpecVal;

    public BluefinTecsMerchantServicesError(string code, string msg, Context? ctx)
        : base(msg)
    {
        Code = code;
        Ctx = ctx;
    }
}
