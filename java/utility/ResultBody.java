package voxgig.bluefintecsmerchantservicessdk.utility;

import voxgig.bluefintecsmerchantservicessdk.core.Context;
import voxgig.bluefintecsmerchantservicessdk.core.Response;
import voxgig.bluefintecsmerchantservicessdk.core.Result;

final class ResultBody {

  private ResultBody() {}

  static Result resultBody(Context ctx) {
    Response response = ctx.response;
    Result result = ctx.result;

    if (result != null) {
      if (response != null && response.jsonFunc != null && response.body != null) {
        result.body = response.jsonFunc.get();
      }
    }

    return result;
  }
}
