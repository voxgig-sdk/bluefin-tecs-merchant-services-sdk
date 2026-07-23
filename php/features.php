<?php
declare(strict_types=1);

// BluefinTecsMerchantServices SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class BluefinTecsMerchantServicesFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new BluefinTecsMerchantServicesBaseFeature();
            case "test":
                return new BluefinTecsMerchantServicesTestFeature();
            default:
                return new BluefinTecsMerchantServicesBaseFeature();
        }
    }
}
