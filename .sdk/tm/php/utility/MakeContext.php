<?php
declare(strict_types=1);

// BluefinTecsMerchantServices SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class BluefinTecsMerchantServicesMakeContext
{
    public static function call(array $ctxmap, ?BluefinTecsMerchantServicesContext $basectx): BluefinTecsMerchantServicesContext
    {
        return new BluefinTecsMerchantServicesContext($ctxmap, $basectx);
    }
}
