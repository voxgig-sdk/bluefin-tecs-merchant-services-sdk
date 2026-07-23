<?php
declare(strict_types=1);

// BluefinTecsMerchantServices SDK utility: result_body

class BluefinTecsMerchantServicesResultBody
{
    public static function call(BluefinTecsMerchantServicesContext $ctx): ?BluefinTecsMerchantServicesResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
