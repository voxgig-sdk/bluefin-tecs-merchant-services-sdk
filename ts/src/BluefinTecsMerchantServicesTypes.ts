// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface CancelTransaction {
  acquirerId?: string
  acquirerName?: string
  actualBonusPoints?: string
  amount?: number
  authorizationCode?: string
  balanceAmount?: string
  cardBrand?: string
  cardNumber?: string
  clientId: number
  currency: string
  cvc?: string
  ecData?: string
  ecrData?: string
  emvData?: string
  exchangeFee?: number
  exchangeRate?: string
  languageCode?: string
  merchantAddress?: string
  merchantName?: string
  merchantNumber?: string
  messageType?: string
  originalTraceNumber?: number
  originalTransactionId?: string
  password?: string
  paymentReason?: string
  receiptFooter?: string
  receiptHeader?: string
  receiptLayout?: number
  receiptNumber: string
  responseCode?: number
  responseMessage?: string
  serialNumber?: string
  svc?: string
  terminalId: number
  terminalLocation?: string
  traceNumber?: number
  transactionDate?: string
  transactionId?: string
  txType?: string
  userData?: string
}

export interface CancelTransactionCreateData {
  acquirerId?: string
  acquirerName?: string
  actualBonusPoints?: string
  amount?: number
  authorizationCode?: string
  balanceAmount?: string
  cardBrand?: string
  cardNumber?: string
  clientId: number
  currency: string
  cvc?: string
  ecData?: string
  ecrData?: string
  emvData?: string
  exchangeFee?: number
  exchangeRate?: string
  languageCode?: string
  merchantAddress?: string
  merchantName?: string
  merchantNumber?: string
  messageType?: string
  originalTraceNumber?: number
  originalTransactionId?: string
  password?: string
  paymentReason?: string
  receiptFooter?: string
  receiptHeader?: string
  receiptLayout?: number
  receiptNumber: string
  responseCode?: number
  responseMessage?: string
  serialNumber?: string
  svc?: string
  terminalId: number
  terminalLocation?: string
  traceNumber?: number
  transactionDate?: string
  transactionId?: string
  txType?: string
  userData?: string
}

export interface CheckCardBlackListed {
  cardNo?: string
  responseCode?: number
  responseMessage?: string
}

export interface CheckCardBlackListedCreateData {
  cardNo?: string
  responseCode?: number
  responseMessage?: string
}

export interface CreateProduct {
  acquirerId?: number
  responseCode?: number
  responseMessage?: string
  templateName: string
  templateType: string
  templateXml: string
  terminalType: string
}

export interface CreateProductCreateData {
  acquirerId?: number
  responseCode?: number
  responseMessage?: string
  templateName: string
  templateType: string
  templateXml: string
  terminalType: string
}

export interface DeactivateTerminal {
  corporateUuid?: string
  deactivationReason: string
  packageOrderUuid?: string
  productOrderUuid?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
}

export interface DeactivateTerminalCreateData {
  corporateUuid?: string
  deactivationReason: string
  packageOrderUuid?: string
  productOrderUuid?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
}

export interface DigitalServicesApi {
  clearingDateFrom: string
  clearingDateTo: string
  responseCode?: number
  responseMessage?: string
  txCount?: number
  txIdEnd?: string
  txIdStart?: string
  txSeqNoEnd?: number
  txSeqNoStart?: number
  txTotal?: number
}

export interface DigitalServicesApiLoadMatch {
  clearingDateFrom?: string
  clearingDateTo?: string
  responseCode?: number
  responseMessage?: string
  txCount?: number
  txIdEnd?: string
  txIdStart?: string
  txSeqNoEnd?: number
  txSeqNoStart?: number
  txTotal?: number
}

export interface DigitalServicesApiCreateData {
  file_id: string
  clearingDateFrom: string
  clearingDateTo: string
  responseCode?: number
  responseMessage?: string
  txCount?: number
  txIdEnd?: string
  txIdStart?: string
  txSeqNoEnd?: number
  txSeqNoStart?: number
  txTotal?: number
}

export interface EcDataEcom {
  ecomData?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
  transactionId: string
  transactionType: string
}

export interface EcDataEcomCreateData {
  ecomData?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
  transactionId: string
  transactionType: string
}

export interface EcomParameter {
  ecomPass?: string
  ecomSkey?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
}

export interface EcomParameterCreateData {
  ecomPass?: string
  ecomSkey?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
}

export interface EcrData {
  ecrData?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
  transactionId: string
  transactionType: string
}

export interface EcrDataCreateData {
  ecrData?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
  transactionId: string
  transactionType: string
}

export interface EmvData {
  emvData?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
  transactionId: string
  transactionType: string
}

export interface EmvDataCreateData {
  emvData?: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
  transactionId: string
  transactionType: string
}

export interface EnableAcquiring {
  accountNo?: number
  additionalData?: Record<string, any>
  corporateUuid: string
  currency: string
  merchantCategoryCode: number
  packageOrderUuid: string
  productOrderUuid: string
  responseCode?: number
  responseMessage?: string
  sortingCode?: number
  templateName: string
  terminalIdAcq?: string
  terminalIds?: any[]
  vuNummer?: string
}

export interface EnableAcquiringCreateData {
  accountNo?: number
  additionalData?: Record<string, any>
  corporateUuid: string
  currency: string
  merchantCategoryCode: number
  packageOrderUuid: string
  productOrderUuid: string
  responseCode?: number
  responseMessage?: string
  sortingCode?: number
  templateName: string
  terminalIdAcq?: string
  terminalIds?: any[]
  vuNummer?: string
}

export interface GetMerchantContractNumber {
  merchantContractNumber: string
  responseCode?: number
  responseMessage?: string
}

export interface GetMerchantContractNumberCreateData {
  merchantContractNumber: string
  responseCode?: number
  responseMessage?: string
}

export interface GetTemplateXml {
  responseCode?: number
  responseMessage?: string
  templateName: string
}

export interface GetTemplateXmlCreateData {
  responseCode?: number
  responseMessage?: string
  templateName: string
}

export interface IntroduceMandator {
  mandatorName: string
  responseCode?: number
  responseMessage?: string
}

export interface IntroduceMandatorCreateData {
  mandatorName: string
  responseCode?: number
  responseMessage?: string
}

export interface IntroducePackage {
  responseCode?: number
  responseMessage?: string
  terminalTemplateDescription: string
}

export interface IntroducePackageCreateData {
  responseCode?: number
  responseMessage?: string
  terminalTemplateDescription: string
}

export interface KeepAlive {
  hwserialno?: string
  kaDateTimeFrom?: string
  kaDateTimeTo?: string
  keepAliveData?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  terminalDateTimeFrom?: string
  terminalDateTimeTo?: string
  terminalId?: number
}

export interface KeepAliveCreateData {
  hwserialno?: string
  kaDateTimeFrom?: string
  kaDateTimeTo?: string
  keepAliveData?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  terminalDateTimeFrom?: string
  terminalDateTimeTo?: string
  terminalId?: number
}

export interface ListTerminal {
  corporateUuid?: any[]
  filter?: Record<string, any>
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  terminals?: any[]
}

export interface ListTerminalCreateData {
  corporateUuid?: any[]
  filter?: Record<string, any>
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  terminals?: any[]
}

export interface MandatorClearingExport {
  clearingDateFrom: string
  clearingDateTo: string
  pagination?: Record<string, any>
  records?: any[]
  responseCode?: number
  responseMessage?: string
}

export interface MandatorClearingExportCreateData {
  clearingDateFrom: string
  clearingDateTo: string
  pagination?: Record<string, any>
  records?: any[]
  responseCode?: number
  responseMessage?: string
}

export interface MandatorClearingExportDownload {
  clearingDateFrom: string
  clearingDateTo: string
  fileId?: string
  filenameTemplate?: string
  responseCode?: number
  responseMessage?: string
  status?: string
}

export interface MandatorClearingExportDownloadLoadMatch {
  id: string
}

export interface MandatorClearingExportDownloadCreateData {
  clearingDateFrom: string
  clearingDateTo: string
  fileId?: string
  filenameTemplate?: string
  responseCode?: number
  responseMessage?: string
  status?: string
}

export interface MandatorClearingExportSummary {
  clearingDateFrom: string
  clearingDateTo: string
  records?: any[]
  responseCode?: number
  responseMessage?: string
}

export interface MandatorClearingExportSummaryCreateData {
  clearingDateFrom: string
  clearingDateTo: string
  records?: any[]
  responseCode?: number
  responseMessage?: string
}

export interface MerchantPortalServicesApi {
  "3DSecure"?: string
  authorizationCode?: string
  cardBrand?: string
  clearingAmountFrom?: string
  clearingAmountTo?: string
  clearingCurrency?: string
  clearingStatus?: string
  corporateUUID?: string
  orderByTransactionDate?: string
  pagination?: Record<string, any>
  receiptNumber?: string
  referencedTransactionId?: string
  retrievalReferenceNumber?: string
  sourceId?: number
  tecsengineResponseCodeFrom?: string
  tecsengineResponseCodeTo?: string
  terminalId?: number
  traceNumber?: string
  transactionAmountFrom?: string
  transactionAmountTo?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionId?: string
  transactionType?: string
  wallet?: string
}

export interface MerchantPortalServicesApiCreateData {
  "3DSecure"?: string
  authorizationCode?: string
  cardBrand?: string
  clearingAmountFrom?: string
  clearingAmountTo?: string
  clearingCurrency?: string
  clearingStatus?: string
  corporateUUID?: string
  orderByTransactionDate?: string
  pagination?: Record<string, any>
  receiptNumber?: string
  referencedTransactionId?: string
  retrievalReferenceNumber?: string
  sourceId?: number
  tecsengineResponseCodeFrom?: string
  tecsengineResponseCodeTo?: string
  terminalId?: number
  traceNumber?: string
  transactionAmountFrom?: string
  transactionAmountTo?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionId?: string
  transactionType?: string
  wallet?: string
}

export interface MoveTid {
  productorderuuids: any[]
  responseCode?: number
  responseMessage?: string
  targetPackageorderuuid?: string
  targetProductorderuuid?: string
}

export interface MoveTidCreateData {
  productorderuuids: any[]
  responseCode?: number
  responseMessage?: string
  targetPackageorderuuid?: string
  targetProductorderuuid?: string
}

export interface PaymentManual {
  acquirerName?: string
  amount: number
  authorizationNumber?: string
  cardNumber: string
  cardType?: string
  currency: string
  cvc?: string
  dateTimeTx?: string
  expDate: string
  merchantId?: string
  originalTransactionId?: string
  password?: string
  responseCode?: string
  responseMessage?: string
  terminalId?: string
  transactionId?: string
  txtype: string
}

export interface PaymentManualCreateData {
  acquirerName?: string
  amount: number
  authorizationNumber?: string
  cardNumber: string
  cardType?: string
  currency: string
  cvc?: string
  dateTimeTx?: string
  expDate: string
  merchantId?: string
  originalTransactionId?: string
  password?: string
  responseCode?: string
  responseMessage?: string
  terminalId?: string
  transactionId?: string
  txtype: string
}

export interface PaymentSred {
  amount: number
  currency: string
  device?: string
  devicePayload: string
  expDate?: string
  mode?: string
  panMasked?: string
  password?: string
  serial?: string
  serviceCode?: string
  terminalId: string
  txtype: string
}

export interface PaymentSredCreateData {
  amount: number
  currency: string
  device?: string
  devicePayload: string
  expDate?: string
  mode?: string
  panMasked?: string
  password?: string
  serial?: string
  serviceCode?: string
  terminalId: string
  txtype: string
}

export interface PreAuthTransactionCompletion {
  acquirerId?: string
  acquirerName?: string
  actualBonusPoints?: string
  amount?: number
  authorizationCode?: string
  balanceAmount?: string
  cardBrand?: string
  cardNumber?: string
  cardNumberReference: string
  clientId: number
  currency: string
  cvc?: string
  ecData?: string
  ecrData?: string
  emvData?: string
  exchangeFee?: number
  exchangeRate?: string
  languageCode?: string
  merchantAddress?: string
  merchantName?: string
  merchantNumber?: string
  messageType?: string
  originalTraceNumber?: number
  originalTransactionId?: string
  password?: string
  paymentReason?: string
  receiptFooter?: string
  receiptHeader?: string
  receiptLayout?: number
  receiptNumber: string
  responseCode?: number
  responseMessage?: string
  serialNumber?: string
  svc?: string
  terminalId: number
  terminalLocation?: string
  traceNumber?: number
  transactionDate?: string
  transactionId?: string
  transactionType: string
  txType?: string
  userData?: string
}

export interface PreAuthTransactionCompletionCreateData {
  acquirerId?: string
  acquirerName?: string
  actualBonusPoints?: string
  amount?: number
  authorizationCode?: string
  balanceAmount?: string
  cardBrand?: string
  cardNumber?: string
  cardNumberReference: string
  clientId: number
  currency: string
  cvc?: string
  ecData?: string
  ecrData?: string
  emvData?: string
  exchangeFee?: number
  exchangeRate?: string
  languageCode?: string
  merchantAddress?: string
  merchantName?: string
  merchantNumber?: string
  messageType?: string
  originalTraceNumber?: number
  originalTransactionId?: string
  password?: string
  paymentReason?: string
  receiptFooter?: string
  receiptHeader?: string
  receiptLayout?: number
  receiptNumber: string
  responseCode?: number
  responseMessage?: string
  serialNumber?: string
  svc?: string
  terminalId: number
  terminalLocation?: string
  traceNumber?: number
  transactionDate?: string
  transactionId?: string
  transactionType: string
  txType?: string
  userData?: string
}

export interface ReactivateTerminal {
  corporateUuid?: string
  packageOrderUuid?: string
  productOrderUuid?: string
  reactivationReason: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
}

export interface ReactivateTerminalCreateData {
  corporateUuid?: string
  packageOrderUuid?: string
  productOrderUuid?: string
  reactivationReason: string
  responseCode?: number
  responseMessage?: string
  terminalId: number
}

export interface RefundTransaction {
  acquirerId?: string
  acquirerName?: string
  actualBonusPoints?: string
  amount?: number
  authorizationCode?: string
  balanceAmount?: string
  cardBrand?: string
  cardNumber?: string
  clientId: number
  currency: string
  cvc?: string
  ecData?: string
  ecrData?: string
  emvData?: string
  exchangeFee?: number
  exchangeRate?: string
  languageCode?: string
  merchantAddress?: string
  merchantName?: string
  merchantNumber?: string
  messageType?: string
  originalTraceNumber?: number
  originalTransactionId?: string
  password?: string
  paymentReason?: string
  receiptFooter?: string
  receiptHeader?: string
  receiptLayout?: number
  receiptNumber: string
  responseCode?: number
  responseMessage?: string
  serialNumber?: string
  svc?: string
  terminalId: number
  terminalLocation?: string
  traceNumber?: number
  transactionDate?: string
  transactionId?: string
  txType?: string
  userData?: string
}

export interface RefundTransactionCreateData {
  acquirerId?: string
  acquirerName?: string
  actualBonusPoints?: string
  amount?: number
  authorizationCode?: string
  balanceAmount?: string
  cardBrand?: string
  cardNumber?: string
  clientId: number
  currency: string
  cvc?: string
  ecData?: string
  ecrData?: string
  emvData?: string
  exchangeFee?: number
  exchangeRate?: string
  languageCode?: string
  merchantAddress?: string
  merchantName?: string
  merchantNumber?: string
  messageType?: string
  originalTraceNumber?: number
  originalTransactionId?: string
  password?: string
  paymentReason?: string
  receiptFooter?: string
  receiptHeader?: string
  receiptLayout?: number
  receiptNumber: string
  responseCode?: number
  responseMessage?: string
  serialNumber?: string
  svc?: string
  terminalId: number
  terminalLocation?: string
  traceNumber?: number
  transactionDate?: string
  transactionId?: string
  txType?: string
  userData?: string
}

export interface RegisterTecsCompany {
  corporateUuid: string
  packageOrderUuid: string
  partnerId?: number
  partnerName?: string
  productOrderUuid: string
  responseCode?: number
  responseMessage?: string
  templateName: string
}

export interface RegisterTecsCompanyCreateData {
  corporateUuid: string
  packageOrderUuid: string
  partnerId?: number
  partnerName?: string
  productOrderUuid: string
  responseCode?: number
  responseMessage?: string
  templateName: string
}

export interface RegisterTerminal {
  additionalData?: Record<string, any>
  corporateUuid: string
  packageOrderUuid: string
  productOrderUuid: string
  responseCode?: number
  responseMessage?: string
  tecsWebSecretKey?: string
  templateName: string
  terminalCountryCode: string
  terminalId?: number
  terminalIdAcq?: string
  terminalLanguageCode: string
  terminalLocation: string
  terminalSerialNumber?: string
  tokenIOAlias?: string
  tokenIOIban?: string
  tokenIOMemberId?: string
  webShopUrl?: string
}

export interface RegisterTerminalCreateData {
  additionalData?: Record<string, any>
  corporateUuid: string
  packageOrderUuid: string
  productOrderUuid: string
  responseCode?: number
  responseMessage?: string
  tecsWebSecretKey?: string
  templateName: string
  terminalCountryCode: string
  terminalId?: number
  terminalIdAcq?: string
  terminalLanguageCode: string
  terminalLocation: string
  terminalSerialNumber?: string
  tokenIOAlias?: string
  tokenIOIban?: string
  tokenIOMemberId?: string
  webShopUrl?: string
}

export interface ReportData {
  cardBrandReportData?: any[]
  clearingDateFrom: string
  clearingDateTo: string
  corporateId: string
  currency: string
  responseCode?: number
  responseMessage?: string
  sumOverCreditTx?: Record<string, any>
  sumOverDebitTx?: Record<string, any>
  terminalId?: number
}

export interface ReportDataCreateData {
  cardBrandReportData?: any[]
  clearingDateFrom: string
  clearingDateTo: string
  corporateId: string
  currency: string
  responseCode?: number
  responseMessage?: string
  sumOverCreditTx?: Record<string, any>
  sumOverDebitTx?: Record<string, any>
  terminalId?: number
}

export interface StatusTransaction {
  acquirerName?: string
  acquirerTerminalId?: string
  amount?: number
  applicationCryptogram?: string
  authorizationCode?: string | null
  authorizationDate?: string
  cardBrand?: string
  cardEntry?: string
  cardExpiration?: string
  cardNumber?: string
  clearingAmount?: number
  clearingBatchId?: string
  clearingCurrency?: string
  clearingDate?: string
  clearingProcessedDate?: string
  clearingStatus?: string
  clientId?: number
  currency?: string
  cvm?: string
  ecrData?: string
  emvApplicationId?: string
  emvApplicationLabel?: string
  merchantName?: string
  merchantNumber?: string
  originalClientId?: string
  originalTerminalId?: number
  originalTransactionId?: string
  paymentReason?: string
  receiptNumber?: string
  responseCode?: number
  responseCodeFromAS?: string
  responseMessage?: string
  retrievalReferenceNumber?: string
  serviceCode?: string
  settlementStatus?: string
  sourceId?: number
  tecsengineResponseCode?: number
  tecsengineResponseText?: string
  terminalEndOfDayDate?: string
  terminalId?: number
  terminalLocation?: string
  tipAmount?: number
  traceNumber?: number
  transactionClearingDate?: string
  transactionDate?: string
  transactionId?: string
  transactionSeqNumber?: number
  transactionServerDate?: string
  transactionSource?: string
  transactionType?: string
}

export interface StatusTransactionCreateData {
  acquirerName?: string
  acquirerTerminalId?: string
  amount?: number
  applicationCryptogram?: string
  authorizationCode?: string | null
  authorizationDate?: string
  cardBrand?: string
  cardEntry?: string
  cardExpiration?: string
  cardNumber?: string
  clearingAmount?: number
  clearingBatchId?: string
  clearingCurrency?: string
  clearingDate?: string
  clearingProcessedDate?: string
  clearingStatus?: string
  clientId?: number
  currency?: string
  cvm?: string
  ecrData?: string
  emvApplicationId?: string
  emvApplicationLabel?: string
  merchantName?: string
  merchantNumber?: string
  originalClientId?: string
  originalTerminalId?: number
  originalTransactionId?: string
  paymentReason?: string
  receiptNumber?: string
  responseCode?: number
  responseCodeFromAS?: string
  responseMessage?: string
  retrievalReferenceNumber?: string
  serviceCode?: string
  settlementStatus?: string
  sourceId?: number
  tecsengineResponseCode?: number
  tecsengineResponseText?: string
  terminalEndOfDayDate?: string
  terminalId?: number
  terminalLocation?: string
  tipAmount?: number
  traceNumber?: number
  transactionClearingDate?: string
  transactionDate?: string
  transactionId?: string
  transactionSeqNumber?: number
  transactionServerDate?: string
  transactionSource?: string
  transactionType?: string
}

export interface StoreTerminalParameter {
  acqTabNexo?: Record<string, any>
  configVersion?: string
  responseCode?: number
  responseMessage?: string
  serialNumber: string
  tidSent?: string
}

export interface StoreTerminalParameterCreateData {
  acqTabNexo?: Record<string, any>
  configVersion?: string
  responseCode?: number
  responseMessage?: string
  serialNumber: string
  tidSent?: string
}

export interface TerminalId {
  deviceSerialNumber: any[]
  duplicateTerminalIds?: any[]
  responseCode?: number
  responseMessage?: string
  terminals?: any[]
}

export interface TerminalIdCreateData {
  deviceSerialNumber: any[]
  duplicateTerminalIds?: any[]
  responseCode?: number
  responseMessage?: string
  terminals?: any[]
}

export interface TransactionHistory {
  "3DSecure"?: string
  authorizationCode?: string
  cardBrand?: string
  clearingAmountFrom?: string
  clearingAmountTo?: string
  clearingCurrency?: string
  clearingStatus?: string
  corporateUUID?: string
  orderByTransactionDate?: string
  pagination?: Record<string, any>
  paymentTokenPublicId?: string
  receiptNumber?: string
  referencedTransactionId?: string
  responseCode?: number
  responseMessage?: string
  retrievalReferenceNumber?: string
  sourceId?: number
  tecsengineResponseCodeFrom?: string
  tecsengineResponseCodeTo?: string
  terminalId?: number
  traceNumber?: string
  transactionAmountFrom?: string
  transactionAmountTo?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionHistories?: any[]
  transactionId?: string
  transactionType?: string
  wallet?: string
}

export interface TransactionHistoryCreateData {
  "3DSecure"?: string
  authorizationCode?: string
  cardBrand?: string
  clearingAmountFrom?: string
  clearingAmountTo?: string
  clearingCurrency?: string
  clearingStatus?: string
  corporateUUID?: string
  orderByTransactionDate?: string
  pagination?: Record<string, any>
  paymentTokenPublicId?: string
  receiptNumber?: string
  referencedTransactionId?: string
  responseCode?: number
  responseMessage?: string
  retrievalReferenceNumber?: string
  sourceId?: number
  tecsengineResponseCodeFrom?: string
  tecsengineResponseCodeTo?: string
  terminalId?: number
  traceNumber?: string
  transactionAmountFrom?: string
  transactionAmountTo?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionHistories?: any[]
  transactionId?: string
  transactionType?: string
  wallet?: string
}

export interface TransactionsCount {
  period?: string
  responseCode?: number
  responseMessage?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionsCount?: any[]
}

export interface TransactionsCountCreateData {
  period?: string
  responseCode?: number
  responseMessage?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionsCount?: any[]
}

export interface TransactionsCountCardBrand {
  period?: string
  responseCode?: number
  responseMessage?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionsCount?: any[]
}

export interface TransactionsCountCardBrandCreateData {
  period?: string
  responseCode?: number
  responseMessage?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  transactionsCount?: any[]
}

export interface TransactionsTurnover {
  period?: string
  responseCode?: number
  responseMessage?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  turnovers?: any[]
}

export interface TransactionsTurnoverCreateData {
  period?: string
  responseCode?: number
  responseMessage?: string
  transactionDateFrom?: string
  transactionDateTo?: string
  turnovers?: any[]
}

export interface UpdateMerchant {
  city?: string
  corporateUuid: string
  country?: string
  merchantCategoryCode?: string
  name?: string
  responseCode?: number
  responseMessage?: string
  state?: string
  street?: string
  vuNummer?: string
  zipcode?: string
}

export interface UpdateMerchantCreateData {
  city?: string
  corporateUuid: string
  country?: string
  merchantCategoryCode?: string
  name?: string
  responseCode?: number
  responseMessage?: string
  state?: string
  street?: string
  vuNummer?: string
  zipcode?: string
}

export interface UpdateTemplateXml {
  responseCode?: number
  responseMessage?: string
  templateName: string
  templateXml: string
}

export interface UpdateTemplateXmlCreateData {
  responseCode?: number
  responseMessage?: string
  templateName: string
  templateXml: string
}

export interface Version {
  appName?: string
  buildDate?: string
  version?: string
}

export interface VersionLoadMatch {
  appName?: string
  buildDate?: string
  version?: string
}

