// BluefinTecsMerchantServices SDK exists test.

using Xunit;

using BluefinTecsMerchantServicesSdk;

namespace BluefinTecsMerchantServicesSdk.Test;

public class ExistsTest
{
    [Fact]
    public void TestMode()
    {
        var testsdk = BluefinTecsMerchantServicesSDK.TestSDK(null, null);
        Assert.NotNull(testsdk);
    }
}
