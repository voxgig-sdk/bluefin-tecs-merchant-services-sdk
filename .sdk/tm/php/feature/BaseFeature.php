<?php
declare(strict_types=1);

// BluefinTecsMerchantServices SDK base feature

class BluefinTecsMerchantServicesBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(BluefinTecsMerchantServicesContext $ctx, array $options): void {}
    public function PostConstruct(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PostConstructEntity(BluefinTecsMerchantServicesContext $ctx): void {}
    public function SetData(BluefinTecsMerchantServicesContext $ctx): void {}
    public function GetData(BluefinTecsMerchantServicesContext $ctx): void {}
    public function GetMatch(BluefinTecsMerchantServicesContext $ctx): void {}
    public function SetMatch(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PrePoint(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PreSpec(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PreRequest(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PreResponse(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PreResult(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PreDone(BluefinTecsMerchantServicesContext $ctx): void {}
    public function PreUnexpected(BluefinTecsMerchantServicesContext $ctx): void {}
}
