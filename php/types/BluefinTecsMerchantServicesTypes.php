<?php
declare(strict_types=1);

// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** CancelTransaction entity data model. */
class CancelTransaction
{
    public ?string $acquirerId = null;
    public ?string $acquirerName = null;
    public ?string $actualBonusPoints = null;
    public ?int $amount = null;
    public ?string $authorizationCode = null;
    public ?string $balanceAmount = null;
    public ?string $cardBrand = null;
    public ?string $cardNumber = null;
    public int $clientId;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ecData = null;
    public ?string $ecrData = null;
    public ?string $emvData = null;
    public ?int $exchangeFee = null;
    public ?string $exchangeRate = null;
    public ?string $languageCode = null;
    public ?string $merchantAddress = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $messageType = null;
    public ?int $originalTraceNumber = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $paymentReason = null;
    public ?string $receiptFooter = null;
    public ?string $receiptHeader = null;
    public ?int $receiptLayout = null;
    public string $receiptNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $serialNumber = null;
    public ?string $svc = null;
    public int $terminalId;
    public ?string $terminalLocation = null;
    public ?int $traceNumber = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public ?string $txType = null;
    public ?string $userData = null;
}

/** Request payload for CancelTransaction#create. */
class CancelTransactionCreateData
{
    public ?string $acquirerId = null;
    public ?string $acquirerName = null;
    public ?string $actualBonusPoints = null;
    public ?int $amount = null;
    public ?string $authorizationCode = null;
    public ?string $balanceAmount = null;
    public ?string $cardBrand = null;
    public ?string $cardNumber = null;
    public int $clientId;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ecData = null;
    public ?string $ecrData = null;
    public ?string $emvData = null;
    public ?int $exchangeFee = null;
    public ?string $exchangeRate = null;
    public ?string $languageCode = null;
    public ?string $merchantAddress = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $messageType = null;
    public ?int $originalTraceNumber = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $paymentReason = null;
    public ?string $receiptFooter = null;
    public ?string $receiptHeader = null;
    public ?int $receiptLayout = null;
    public string $receiptNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $serialNumber = null;
    public ?string $svc = null;
    public int $terminalId;
    public ?string $terminalLocation = null;
    public ?int $traceNumber = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public ?string $txType = null;
    public ?string $userData = null;
}

/** CheckCardBlackListed entity data model. */
class CheckCardBlackListed
{
    public ?string $cardNo = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for CheckCardBlackListed#create. */
class CheckCardBlackListedCreateData
{
    public ?string $cardNo = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** CreateProduct entity data model. */
class CreateProduct
{
    public ?int $acquirerId = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
    public string $templateType;
    public string $templateXml;
    public string $terminalType;
}

/** Request payload for CreateProduct#create. */
class CreateProductCreateData
{
    public ?int $acquirerId = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
    public string $templateType;
    public string $templateXml;
    public string $terminalType;
}

/** DeactivateTerminal entity data model. */
class DeactivateTerminal
{
    public ?string $corporateUuid = null;
    public string $deactivationReason;
    public ?string $packageOrderUuid = null;
    public ?string $productOrderUuid = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
}

/** Request payload for DeactivateTerminal#create. */
class DeactivateTerminalCreateData
{
    public ?string $corporateUuid = null;
    public string $deactivationReason;
    public ?string $packageOrderUuid = null;
    public ?string $productOrderUuid = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
}

/** DigitalServicesApi entity data model. */
class DigitalServicesApi
{
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?int $txCount = null;
    public ?string $txIdEnd = null;
    public ?string $txIdStart = null;
    public ?int $txSeqNoEnd = null;
    public ?int $txSeqNoStart = null;
    public ?int $txTotal = null;
}

/** Request payload for DigitalServicesApi#load. */
class DigitalServicesApiLoadMatch
{
    public ?string $clearingDateFrom = null;
    public ?string $clearingDateTo = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?int $txCount = null;
    public ?string $txIdEnd = null;
    public ?string $txIdStart = null;
    public ?int $txSeqNoEnd = null;
    public ?int $txSeqNoStart = null;
    public ?int $txTotal = null;
}

/** Request payload for DigitalServicesApi#create. */
class DigitalServicesApiCreateData
{
    public ?string $file_id = null;
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?int $txCount = null;
    public ?string $txIdEnd = null;
    public ?string $txIdStart = null;
    public ?int $txSeqNoEnd = null;
    public ?int $txSeqNoStart = null;
    public ?int $txTotal = null;
}

/** EcDataEcom entity data model. */
class EcDataEcom
{
    public ?string $ecomData = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
    public string $transactionId;
    public string $transactionType;
}

/** Request payload for EcDataEcom#create. */
class EcDataEcomCreateData
{
    public ?string $ecomData = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
    public string $transactionId;
    public string $transactionType;
}

/** EcomParameter entity data model. */
class EcomParameter
{
    public ?string $ecomPass = null;
    public ?string $ecomSkey = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
}

/** Request payload for EcomParameter#create. */
class EcomParameterCreateData
{
    public ?string $ecomPass = null;
    public ?string $ecomSkey = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
}

/** EcrData entity data model. */
class EcrData
{
    public ?string $ecrData = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
    public string $transactionId;
    public string $transactionType;
}

/** Request payload for EcrData#create. */
class EcrDataCreateData
{
    public ?string $ecrData = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
    public string $transactionId;
    public string $transactionType;
}

/** EmvData entity data model. */
class EmvData
{
    public ?string $emvData = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
    public string $transactionId;
    public string $transactionType;
}

/** Request payload for EmvData#create. */
class EmvDataCreateData
{
    public ?string $emvData = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
    public string $transactionId;
    public string $transactionType;
}

/** EnableAcquiring entity data model. */
class EnableAcquiring
{
    public ?int $accountNo = null;
    public ?array $additionalData = null;
    public string $corporateUuid;
    public string $currency;
    public int $merchantCategoryCode;
    public string $packageOrderUuid;
    public string $productOrderUuid;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?int $sortingCode = null;
    public string $templateName;
    public ?string $terminalIdAcq = null;
    public ?array $terminalIds = null;
    public ?string $vuNummer = null;
}

/** Request payload for EnableAcquiring#create. */
class EnableAcquiringCreateData
{
    public ?int $accountNo = null;
    public ?array $additionalData = null;
    public string $corporateUuid;
    public string $currency;
    public int $merchantCategoryCode;
    public string $packageOrderUuid;
    public string $productOrderUuid;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?int $sortingCode = null;
    public string $templateName;
    public ?string $terminalIdAcq = null;
    public ?array $terminalIds = null;
    public ?string $vuNummer = null;
}

/** GetMerchantContractNumber entity data model. */
class GetMerchantContractNumber
{
    public string $merchantContractNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for GetMerchantContractNumber#create. */
class GetMerchantContractNumberCreateData
{
    public string $merchantContractNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** GetTemplateXml entity data model. */
class GetTemplateXml
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
}

/** Request payload for GetTemplateXml#create. */
class GetTemplateXmlCreateData
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
}

/** IntroduceMandator entity data model. */
class IntroduceMandator
{
    public string $mandatorName;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for IntroduceMandator#create. */
class IntroduceMandatorCreateData
{
    public string $mandatorName;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** IntroducePackage entity data model. */
class IntroducePackage
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $terminalTemplateDescription;
}

/** Request payload for IntroducePackage#create. */
class IntroducePackageCreateData
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $terminalTemplateDescription;
}

/** KeepAlive entity data model. */
class KeepAlive
{
    public ?string $hwserialno = null;
    public ?string $kaDateTimeFrom = null;
    public ?string $kaDateTimeTo = null;
    public ?array $keepAliveData = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $terminalDateTimeFrom = null;
    public ?string $terminalDateTimeTo = null;
    public ?int $terminalId = null;
}

/** Request payload for KeepAlive#create. */
class KeepAliveCreateData
{
    public ?string $hwserialno = null;
    public ?string $kaDateTimeFrom = null;
    public ?string $kaDateTimeTo = null;
    public ?array $keepAliveData = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $terminalDateTimeFrom = null;
    public ?string $terminalDateTimeTo = null;
    public ?int $terminalId = null;
}

/** ListTerminal entity data model. */
class ListTerminal
{
    public ?array $corporateUuid = null;
    public ?array $filter = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $terminals = null;
}

/** Request payload for ListTerminal#create. */
class ListTerminalCreateData
{
    public ?array $corporateUuid = null;
    public ?array $filter = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $terminals = null;
}

/** MandatorClearingExport entity data model. */
class MandatorClearingExport
{
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?array $pagination = null;
    public ?array $records = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for MandatorClearingExport#create. */
class MandatorClearingExportCreateData
{
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?array $pagination = null;
    public ?array $records = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** MandatorClearingExportDownload entity data model. */
class MandatorClearingExportDownload
{
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?string $fileId = null;
    public ?string $filenameTemplate = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $status = null;
}

/** Request payload for MandatorClearingExportDownload#load. */
class MandatorClearingExportDownloadLoadMatch
{
    public string $id;
}

/** Request payload for MandatorClearingExportDownload#create. */
class MandatorClearingExportDownloadCreateData
{
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?string $fileId = null;
    public ?string $filenameTemplate = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $status = null;
}

/** MandatorClearingExportSummary entity data model. */
class MandatorClearingExportSummary
{
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?array $records = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for MandatorClearingExportSummary#create. */
class MandatorClearingExportSummaryCreateData
{
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public ?array $records = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** MerchantPortalServicesApi entity data model. */
class MerchantPortalServicesApi
{
    public ?string $authorizationCode = null;
    public ?string $cardBrand = null;
    public ?string $clearingAmountFrom = null;
    public ?string $clearingAmountTo = null;
    public ?string $clearingCurrency = null;
    public ?string $clearingStatus = null;
    public ?string $corporateUUID = null;
    public ?string $orderByTransactionDate = null;
    public ?array $pagination = null;
    public ?string $receiptNumber = null;
    public ?string $referencedTransactionId = null;
    public ?string $retrievalReferenceNumber = null;
    public ?int $sourceId = null;
    public ?string $tecsengineResponseCodeFrom = null;
    public ?string $tecsengineResponseCodeTo = null;
    public ?int $terminalId = null;
    public ?string $traceNumber = null;
    public ?string $transactionAmountFrom = null;
    public ?string $transactionAmountTo = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?string $transactionId = null;
    public ?string $transactionType = null;
    public ?string $wallet = null;
}

/** Request payload for MerchantPortalServicesApi#create. */
class MerchantPortalServicesApiCreateData
{
    public ?string $authorizationCode = null;
    public ?string $cardBrand = null;
    public ?string $clearingAmountFrom = null;
    public ?string $clearingAmountTo = null;
    public ?string $clearingCurrency = null;
    public ?string $clearingStatus = null;
    public ?string $corporateUUID = null;
    public ?string $orderByTransactionDate = null;
    public ?array $pagination = null;
    public ?string $receiptNumber = null;
    public ?string $referencedTransactionId = null;
    public ?string $retrievalReferenceNumber = null;
    public ?int $sourceId = null;
    public ?string $tecsengineResponseCodeFrom = null;
    public ?string $tecsengineResponseCodeTo = null;
    public ?int $terminalId = null;
    public ?string $traceNumber = null;
    public ?string $transactionAmountFrom = null;
    public ?string $transactionAmountTo = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?string $transactionId = null;
    public ?string $transactionType = null;
    public ?string $wallet = null;
}

/** MoveTid entity data model. */
class MoveTid
{
    public array $productorderuuids;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $targetPackageorderuuid = null;
    public ?string $targetProductorderuuid = null;
}

/** Request payload for MoveTid#create. */
class MoveTidCreateData
{
    public array $productorderuuids;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $targetPackageorderuuid = null;
    public ?string $targetProductorderuuid = null;
}

/** PaymentManual entity data model. */
class PaymentManual
{
    public ?string $acquirerName = null;
    public int $amount;
    public ?string $authorizationNumber = null;
    public string $cardNumber;
    public ?string $cardType = null;
    public string $currency;
    public ?string $cvc = null;
    public ?string $dateTimeTx = null;
    public string $expDate;
    public ?string $merchantId = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $terminalId = null;
    public ?string $transactionId = null;
    public string $txtype;
}

/** Request payload for PaymentManual#create. */
class PaymentManualCreateData
{
    public ?string $acquirerName = null;
    public int $amount;
    public ?string $authorizationNumber = null;
    public string $cardNumber;
    public ?string $cardType = null;
    public string $currency;
    public ?string $cvc = null;
    public ?string $dateTimeTx = null;
    public string $expDate;
    public ?string $merchantId = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $terminalId = null;
    public ?string $transactionId = null;
    public string $txtype;
}

/** PaymentSred entity data model. */
class PaymentSred
{
    public int $amount;
    public string $currency;
    public ?string $device = null;
    public string $devicePayload;
    public ?string $expDate = null;
    public ?string $mode = null;
    public ?string $panMasked = null;
    public ?string $password = null;
    public ?string $serial = null;
    public ?string $serviceCode = null;
    public string $terminalId;
    public string $txtype;
}

/** Request payload for PaymentSred#create. */
class PaymentSredCreateData
{
    public int $amount;
    public string $currency;
    public ?string $device = null;
    public string $devicePayload;
    public ?string $expDate = null;
    public ?string $mode = null;
    public ?string $panMasked = null;
    public ?string $password = null;
    public ?string $serial = null;
    public ?string $serviceCode = null;
    public string $terminalId;
    public string $txtype;
}

/** PreAuthTransactionCompletion entity data model. */
class PreAuthTransactionCompletion
{
    public ?string $acquirerId = null;
    public ?string $acquirerName = null;
    public ?string $actualBonusPoints = null;
    public ?int $amount = null;
    public ?string $authorizationCode = null;
    public ?string $balanceAmount = null;
    public ?string $cardBrand = null;
    public ?string $cardNumber = null;
    public string $cardNumberReference;
    public int $clientId;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ecData = null;
    public ?string $ecrData = null;
    public ?string $emvData = null;
    public ?int $exchangeFee = null;
    public ?string $exchangeRate = null;
    public ?string $languageCode = null;
    public ?string $merchantAddress = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $messageType = null;
    public ?int $originalTraceNumber = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $paymentReason = null;
    public ?string $receiptFooter = null;
    public ?string $receiptHeader = null;
    public ?int $receiptLayout = null;
    public string $receiptNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $serialNumber = null;
    public ?string $svc = null;
    public int $terminalId;
    public ?string $terminalLocation = null;
    public ?int $traceNumber = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public string $transactionType;
    public ?string $txType = null;
    public ?string $userData = null;
}

/** Request payload for PreAuthTransactionCompletion#create. */
class PreAuthTransactionCompletionCreateData
{
    public ?string $acquirerId = null;
    public ?string $acquirerName = null;
    public ?string $actualBonusPoints = null;
    public ?int $amount = null;
    public ?string $authorizationCode = null;
    public ?string $balanceAmount = null;
    public ?string $cardBrand = null;
    public ?string $cardNumber = null;
    public string $cardNumberReference;
    public int $clientId;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ecData = null;
    public ?string $ecrData = null;
    public ?string $emvData = null;
    public ?int $exchangeFee = null;
    public ?string $exchangeRate = null;
    public ?string $languageCode = null;
    public ?string $merchantAddress = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $messageType = null;
    public ?int $originalTraceNumber = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $paymentReason = null;
    public ?string $receiptFooter = null;
    public ?string $receiptHeader = null;
    public ?int $receiptLayout = null;
    public string $receiptNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $serialNumber = null;
    public ?string $svc = null;
    public int $terminalId;
    public ?string $terminalLocation = null;
    public ?int $traceNumber = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public string $transactionType;
    public ?string $txType = null;
    public ?string $userData = null;
}

/** ReactivateTerminal entity data model. */
class ReactivateTerminal
{
    public ?string $corporateUuid = null;
    public ?string $packageOrderUuid = null;
    public ?string $productOrderUuid = null;
    public string $reactivationReason;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
}

/** Request payload for ReactivateTerminal#create. */
class ReactivateTerminalCreateData
{
    public ?string $corporateUuid = null;
    public ?string $packageOrderUuid = null;
    public ?string $productOrderUuid = null;
    public string $reactivationReason;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public int $terminalId;
}

/** RefundTransaction entity data model. */
class RefundTransaction
{
    public ?string $acquirerId = null;
    public ?string $acquirerName = null;
    public ?string $actualBonusPoints = null;
    public ?int $amount = null;
    public ?string $authorizationCode = null;
    public ?string $balanceAmount = null;
    public ?string $cardBrand = null;
    public ?string $cardNumber = null;
    public int $clientId;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ecData = null;
    public ?string $ecrData = null;
    public ?string $emvData = null;
    public ?int $exchangeFee = null;
    public ?string $exchangeRate = null;
    public ?string $languageCode = null;
    public ?string $merchantAddress = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $messageType = null;
    public ?int $originalTraceNumber = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $paymentReason = null;
    public ?string $receiptFooter = null;
    public ?string $receiptHeader = null;
    public ?int $receiptLayout = null;
    public string $receiptNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $serialNumber = null;
    public ?string $svc = null;
    public int $terminalId;
    public ?string $terminalLocation = null;
    public ?int $traceNumber = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public ?string $txType = null;
    public ?string $userData = null;
}

/** Request payload for RefundTransaction#create. */
class RefundTransactionCreateData
{
    public ?string $acquirerId = null;
    public ?string $acquirerName = null;
    public ?string $actualBonusPoints = null;
    public ?int $amount = null;
    public ?string $authorizationCode = null;
    public ?string $balanceAmount = null;
    public ?string $cardBrand = null;
    public ?string $cardNumber = null;
    public int $clientId;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ecData = null;
    public ?string $ecrData = null;
    public ?string $emvData = null;
    public ?int $exchangeFee = null;
    public ?string $exchangeRate = null;
    public ?string $languageCode = null;
    public ?string $merchantAddress = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $messageType = null;
    public ?int $originalTraceNumber = null;
    public ?string $originalTransactionId = null;
    public ?string $password = null;
    public ?string $paymentReason = null;
    public ?string $receiptFooter = null;
    public ?string $receiptHeader = null;
    public ?int $receiptLayout = null;
    public string $receiptNumber;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $serialNumber = null;
    public ?string $svc = null;
    public int $terminalId;
    public ?string $terminalLocation = null;
    public ?int $traceNumber = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public ?string $txType = null;
    public ?string $userData = null;
}

/** RegisterTecsCompany entity data model. */
class RegisterTecsCompany
{
    public string $corporateUuid;
    public string $packageOrderUuid;
    public ?int $partnerId = null;
    public ?string $partnerName = null;
    public string $productOrderUuid;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
}

/** Request payload for RegisterTecsCompany#create. */
class RegisterTecsCompanyCreateData
{
    public string $corporateUuid;
    public string $packageOrderUuid;
    public ?int $partnerId = null;
    public ?string $partnerName = null;
    public string $productOrderUuid;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
}

/** RegisterTerminal entity data model. */
class RegisterTerminal
{
    public ?array $additionalData = null;
    public string $corporateUuid;
    public string $packageOrderUuid;
    public string $productOrderUuid;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $tecsWebSecretKey = null;
    public string $templateName;
    public string $terminalCountryCode;
    public ?int $terminalId = null;
    public ?string $terminalIdAcq = null;
    public string $terminalLanguageCode;
    public string $terminalLocation;
    public ?string $terminalSerialNumber = null;
    public ?string $tokenIOAlias = null;
    public ?string $tokenIOIban = null;
    public ?string $tokenIOMemberId = null;
    public ?string $webShopUrl = null;
}

/** Request payload for RegisterTerminal#create. */
class RegisterTerminalCreateData
{
    public ?array $additionalData = null;
    public string $corporateUuid;
    public string $packageOrderUuid;
    public string $productOrderUuid;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $tecsWebSecretKey = null;
    public string $templateName;
    public string $terminalCountryCode;
    public ?int $terminalId = null;
    public ?string $terminalIdAcq = null;
    public string $terminalLanguageCode;
    public string $terminalLocation;
    public ?string $terminalSerialNumber = null;
    public ?string $tokenIOAlias = null;
    public ?string $tokenIOIban = null;
    public ?string $tokenIOMemberId = null;
    public ?string $webShopUrl = null;
}

/** ReportData entity data model. */
class ReportData
{
    public ?array $cardBrandReportData = null;
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public string $corporateId;
    public string $currency;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sumOverCreditTx = null;
    public ?array $sumOverDebitTx = null;
    public ?int $terminalId = null;
}

/** Request payload for ReportData#create. */
class ReportDataCreateData
{
    public ?array $cardBrandReportData = null;
    public string $clearingDateFrom;
    public string $clearingDateTo;
    public string $corporateId;
    public string $currency;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sumOverCreditTx = null;
    public ?array $sumOverDebitTx = null;
    public ?int $terminalId = null;
}

/** StatusTransaction entity data model. */
class StatusTransaction
{
    public ?string $acquirerName = null;
    public ?string $acquirerTerminalId = null;
    public ?int $amount = null;
    public ?string $applicationCryptogram = null;
    public mixed $authorizationCode = null;
    public ?string $authorizationDate = null;
    public ?string $cardBrand = null;
    public ?string $cardEntry = null;
    public ?string $cardExpiration = null;
    public ?string $cardNumber = null;
    public ?int $clearingAmount = null;
    public ?string $clearingBatchId = null;
    public ?string $clearingCurrency = null;
    public ?string $clearingDate = null;
    public ?string $clearingProcessedDate = null;
    public ?string $clearingStatus = null;
    public ?int $clientId = null;
    public ?string $currency = null;
    public ?string $cvm = null;
    public ?string $ecrData = null;
    public ?string $emvApplicationId = null;
    public ?string $emvApplicationLabel = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $originalClientId = null;
    public ?int $originalTerminalId = null;
    public ?string $originalTransactionId = null;
    public ?string $paymentReason = null;
    public ?string $receiptNumber = null;
    public ?int $responseCode = null;
    public ?string $responseCodeFromAS = null;
    public ?string $responseMessage = null;
    public ?string $retrievalReferenceNumber = null;
    public ?string $serviceCode = null;
    public ?string $settlementStatus = null;
    public ?int $sourceId = null;
    public ?int $tecsengineResponseCode = null;
    public ?string $tecsengineResponseText = null;
    public ?string $terminalEndOfDayDate = null;
    public ?int $terminalId = null;
    public ?string $terminalLocation = null;
    public ?int $tipAmount = null;
    public ?int $traceNumber = null;
    public ?string $transactionClearingDate = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public ?int $transactionSeqNumber = null;
    public ?string $transactionServerDate = null;
    public ?string $transactionSource = null;
    public ?string $transactionType = null;
}

/** Request payload for StatusTransaction#create. */
class StatusTransactionCreateData
{
    public ?string $acquirerName = null;
    public ?string $acquirerTerminalId = null;
    public ?int $amount = null;
    public ?string $applicationCryptogram = null;
    public mixed $authorizationCode = null;
    public ?string $authorizationDate = null;
    public ?string $cardBrand = null;
    public ?string $cardEntry = null;
    public ?string $cardExpiration = null;
    public ?string $cardNumber = null;
    public ?int $clearingAmount = null;
    public ?string $clearingBatchId = null;
    public ?string $clearingCurrency = null;
    public ?string $clearingDate = null;
    public ?string $clearingProcessedDate = null;
    public ?string $clearingStatus = null;
    public ?int $clientId = null;
    public ?string $currency = null;
    public ?string $cvm = null;
    public ?string $ecrData = null;
    public ?string $emvApplicationId = null;
    public ?string $emvApplicationLabel = null;
    public ?string $merchantName = null;
    public ?string $merchantNumber = null;
    public ?string $originalClientId = null;
    public ?int $originalTerminalId = null;
    public ?string $originalTransactionId = null;
    public ?string $paymentReason = null;
    public ?string $receiptNumber = null;
    public ?int $responseCode = null;
    public ?string $responseCodeFromAS = null;
    public ?string $responseMessage = null;
    public ?string $retrievalReferenceNumber = null;
    public ?string $serviceCode = null;
    public ?string $settlementStatus = null;
    public ?int $sourceId = null;
    public ?int $tecsengineResponseCode = null;
    public ?string $tecsengineResponseText = null;
    public ?string $terminalEndOfDayDate = null;
    public ?int $terminalId = null;
    public ?string $terminalLocation = null;
    public ?int $tipAmount = null;
    public ?int $traceNumber = null;
    public ?string $transactionClearingDate = null;
    public ?string $transactionDate = null;
    public ?string $transactionId = null;
    public ?int $transactionSeqNumber = null;
    public ?string $transactionServerDate = null;
    public ?string $transactionSource = null;
    public ?string $transactionType = null;
}

/** StoreTerminalParameter entity data model. */
class StoreTerminalParameter
{
    public ?array $acqTabNexo = null;
    public ?string $configVersion = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $serialNumber;
    public ?string $tidSent = null;
}

/** Request payload for StoreTerminalParameter#create. */
class StoreTerminalParameterCreateData
{
    public ?array $acqTabNexo = null;
    public ?string $configVersion = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $serialNumber;
    public ?string $tidSent = null;
}

/** TerminalId entity data model. */
class TerminalId
{
    public array $deviceSerialNumber;
    public ?array $duplicateTerminalIds = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $terminals = null;
}

/** Request payload for TerminalId#create. */
class TerminalIdCreateData
{
    public array $deviceSerialNumber;
    public ?array $duplicateTerminalIds = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $terminals = null;
}

/** TransactionHistory entity data model. */
class TransactionHistory
{
    public ?string $authorizationCode = null;
    public ?string $cardBrand = null;
    public ?string $clearingAmountFrom = null;
    public ?string $clearingAmountTo = null;
    public ?string $clearingCurrency = null;
    public ?string $clearingStatus = null;
    public ?string $corporateUUID = null;
    public ?string $orderByTransactionDate = null;
    public ?array $pagination = null;
    public ?string $paymentTokenPublicId = null;
    public ?string $receiptNumber = null;
    public ?string $referencedTransactionId = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $retrievalReferenceNumber = null;
    public ?int $sourceId = null;
    public ?string $tecsengineResponseCodeFrom = null;
    public ?string $tecsengineResponseCodeTo = null;
    public ?int $terminalId = null;
    public ?string $traceNumber = null;
    public ?string $transactionAmountFrom = null;
    public ?string $transactionAmountTo = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $transactionHistories = null;
    public ?string $transactionId = null;
    public ?string $transactionType = null;
    public ?string $wallet = null;
}

/** Request payload for TransactionHistory#create. */
class TransactionHistoryCreateData
{
    public ?string $authorizationCode = null;
    public ?string $cardBrand = null;
    public ?string $clearingAmountFrom = null;
    public ?string $clearingAmountTo = null;
    public ?string $clearingCurrency = null;
    public ?string $clearingStatus = null;
    public ?string $corporateUUID = null;
    public ?string $orderByTransactionDate = null;
    public ?array $pagination = null;
    public ?string $paymentTokenPublicId = null;
    public ?string $receiptNumber = null;
    public ?string $referencedTransactionId = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $retrievalReferenceNumber = null;
    public ?int $sourceId = null;
    public ?string $tecsengineResponseCodeFrom = null;
    public ?string $tecsengineResponseCodeTo = null;
    public ?int $terminalId = null;
    public ?string $traceNumber = null;
    public ?string $transactionAmountFrom = null;
    public ?string $transactionAmountTo = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $transactionHistories = null;
    public ?string $transactionId = null;
    public ?string $transactionType = null;
    public ?string $wallet = null;
}

/** TransactionsCount entity data model. */
class TransactionsCount
{
    public ?string $period = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $transactionsCount = null;
}

/** Request payload for TransactionsCount#create. */
class TransactionsCountCreateData
{
    public ?string $period = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $transactionsCount = null;
}

/** TransactionsCountCardBrand entity data model. */
class TransactionsCountCardBrand
{
    public ?string $period = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $transactionsCount = null;
}

/** Request payload for TransactionsCountCardBrand#create. */
class TransactionsCountCardBrandCreateData
{
    public ?string $period = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $transactionsCount = null;
}

/** TransactionsTurnover entity data model. */
class TransactionsTurnover
{
    public ?string $period = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $turnovers = null;
}

/** Request payload for TransactionsTurnover#create. */
class TransactionsTurnoverCreateData
{
    public ?string $period = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $transactionDateFrom = null;
    public ?string $transactionDateTo = null;
    public ?array $turnovers = null;
}

/** UpdateMerchant entity data model. */
class UpdateMerchant
{
    public ?string $city = null;
    public string $corporateUuid;
    public ?string $country = null;
    public ?string $merchantCategoryCode = null;
    public ?string $name = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $state = null;
    public ?string $street = null;
    public ?string $vuNummer = null;
    public ?string $zipcode = null;
}

/** Request payload for UpdateMerchant#create. */
class UpdateMerchantCreateData
{
    public ?string $city = null;
    public string $corporateUuid;
    public ?string $country = null;
    public ?string $merchantCategoryCode = null;
    public ?string $name = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $state = null;
    public ?string $street = null;
    public ?string $vuNummer = null;
    public ?string $zipcode = null;
}

/** UpdateTemplateXml entity data model. */
class UpdateTemplateXml
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
    public string $templateXml;
}

/** Request payload for UpdateTemplateXml#create. */
class UpdateTemplateXmlCreateData
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public string $templateName;
    public string $templateXml;
}

/** Version entity data model. */
class Version
{
    public ?string $appName = null;
    public ?string $buildDate = null;
    public ?string $version = null;
}

/** Request payload for Version#load. */
class VersionLoadMatch
{
    public ?string $appName = null;
    public ?string $buildDate = null;
    public ?string $version = null;
}

