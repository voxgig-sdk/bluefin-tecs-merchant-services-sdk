<?php
declare(strict_types=1);

// BluefinTecsMerchantServices SDK utility: prepare_body

class BluefinTecsMerchantServicesPrepareBody
{
    public static function call(BluefinTecsMerchantServicesContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
