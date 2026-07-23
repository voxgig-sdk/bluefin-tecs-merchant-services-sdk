# BluefinTecsMerchantServices SDK

from utility.voxgig_struct import voxgig_struct as vs
from core.utility_type import BluefinTecsMerchantServicesUtility
from core.spec import BluefinTecsMerchantServicesSpec
from core import helpers

# Load utility registration (populates Utility._registrar)
from utility import register

# Load features
from feature.base_feature import BluefinTecsMerchantServicesBaseFeature
from features import _make_feature


class BluefinTecsMerchantServicesSDK:

    def __init__(self, options=None):
        self.mode = "live"
        self.features = []
        self.options = None

        utility = BluefinTecsMerchantServicesUtility()
        self._utility = utility

        from config import make_config
        config = make_config()

        self._rootctx = utility.make_context({
            "client": self,
            "utility": utility,
            "config": config,
            "options": options if options is not None else {},
            "shared": {},
        }, None)

        self.options = utility.make_options(self._rootctx)

        if vs.getpath(self.options, "feature.test.active") is True:
            self.mode = "test"

        self._rootctx.options = self.options

        # Add features in the resolved order (make_options puts an explicit
        # list order first, else defaults to test-first). Ordering matters: the
        # `test` feature installs the base mock transport and the transport
        # features (retry/cache/netsim/proxy/ratelimit) wrap whatever is
        # current, so `test` must be added before them to sit at the base.
        feature_opts = helpers.to_map(vs.getprop(self.options, "feature"))
        if feature_opts is not None:
            featureorder = vs.getpath(self.options, "__derived__.featureorder")
            if isinstance(featureorder, list):
                for fname in featureorder:
                    fopts = helpers.to_map(feature_opts.get(fname))
                    if fopts is not None and fopts.get("active") is True:
                        utility.feature_add(self._rootctx, _make_feature(fname))

        # Add extension features.
        extend = vs.getprop(self.options, "extend")
        if isinstance(extend, list):
            for f in extend:
                if isinstance(f, dict) or (hasattr(f, "get_name") and callable(f.get_name)):
                    utility.feature_add(self._rootctx, f)

        # Initialize features.
        for f in self.features:
            utility.feature_init(self._rootctx, f)

        utility.feature_hook(self._rootctx, "PostConstruct")

        # #BuildFeatures

    def options_map(self):
        out = vs.clone(self.options)
        if isinstance(out, dict):
            return out
        return {}

    def get_utility(self):
        return BluefinTecsMerchantServicesUtility.copy(self._utility)

    def get_root_ctx(self):
        return self._rootctx

    def prepare(self, fetchargs=None):
        utility = self._utility

        if fetchargs is None:
            fetchargs = {}

        ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl"))
        if ctrl is None:
            ctrl = {}

        ctx = utility.make_context({
            "opname": "prepare",
            "ctrl": ctrl,
        }, self._rootctx)

        options = self.options

        path = vs.getprop(fetchargs, "path") or ""
        if not isinstance(path, str):
            path = ""

        method = vs.getprop(fetchargs, "method") or "GET"
        if not isinstance(method, str):
            method = "GET"

        params = helpers.to_map(vs.getprop(fetchargs, "params"))
        if params is None:
            params = {}
        query = helpers.to_map(vs.getprop(fetchargs, "query"))
        if query is None:
            query = {}

        headers = utility.prepare_headers(ctx)

        base = vs.getprop(options, "base") or ""
        if not isinstance(base, str):
            base = ""
        prefix = vs.getprop(options, "prefix") or ""
        if not isinstance(prefix, str):
            prefix = ""
        suffix = vs.getprop(options, "suffix") or ""
        if not isinstance(suffix, str):
            suffix = ""

        ctx.spec = BluefinTecsMerchantServicesSpec({
            "base": base,
            "prefix": prefix,
            "suffix": suffix,
            "path": path,
            "method": method,
            "params": params,
            "query": query,
            "headers": headers,
            "body": vs.getprop(fetchargs, "body"),
            "step": "start",
        })

        # Merge user-provided headers.
        uh = vs.getprop(fetchargs, "headers")
        if isinstance(uh, dict):
            for k, v in uh.items():
                ctx.spec.headers[k] = v

        _, err = utility.prepare_auth(ctx)
        if err is not None:
            raise err

        fetchdef, err = utility.make_fetch_def(ctx)
        if err is not None:
            raise err

        return fetchdef

    def direct(self, fetchargs=None):
        utility = self._utility

        try:
            fetchdef = self.prepare(fetchargs)
        except Exception as err:
            # direct() is the raw-HTTP escape hatch: it never raises, it
            # returns a result object callers branch on via result["ok"].
            return {"ok": False, "err": err}

        if fetchargs is None:
            fetchargs = {}
        ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl"))
        if ctrl is None:
            ctrl = {}

        ctx = utility.make_context({
            "opname": "direct",
            "ctrl": ctrl,
        }, self._rootctx)

        url = fetchdef.get("url", "")
        fetched, fetch_err = utility.fetcher(ctx, url, fetchdef)

        if fetch_err is not None:
            return {"ok": False, "err": fetch_err}

        if fetched is None:
            return {
                "ok": False,
                "err": ctx.make_error("direct_no_response", "response: undefined"),
            }

        if isinstance(fetched, dict):
            status = helpers.to_int(vs.getprop(fetched, "status"))
            headers = vs.getprop(fetched, "headers") or {}

            # No-body responses (204, 304) and explicit zero content-length
            # must skip JSON parsing — calling json() on an empty body raises.
            content_length = None
            if isinstance(headers, dict):
                content_length = headers.get("content-length")
            no_body = status in (204, 304) or str(content_length) == "0"

            json_data = None
            if not no_body:
                jf = vs.getprop(fetched, "json")
                if callable(jf):
                    try:
                        json_data = jf()
                    except Exception:
                        # Non-JSON body (e.g. text/plain, text/html). Surface
                        # status + headers but leave data as None.
                        json_data = None

            return {
                "ok": status >= 200 and status < 300,
                "status": status,
                "headers": headers,
                "data": json_data,
            }

        return {
            "ok": False,
            "err": ctx.make_error("direct_invalid", "invalid response type"),
        }


    def CancelTransaction(self, data=None) -> "CancelTransactionEntity":
        """Entity factory: client.CancelTransaction().list() / client.CancelTransaction().load({"id": ...})."""
        from entity.cancel_transaction_entity import CancelTransactionEntity
        return CancelTransactionEntity(self, data)


    def CheckCardBlackListed(self, data=None) -> "CheckCardBlackListedEntity":
        """Entity factory: client.CheckCardBlackListed().list() / client.CheckCardBlackListed().load({"id": ...})."""
        from entity.check_card_black_listed_entity import CheckCardBlackListedEntity
        return CheckCardBlackListedEntity(self, data)


    def CreateProduct(self, data=None) -> "CreateProductEntity":
        """Entity factory: client.CreateProduct().list() / client.CreateProduct().load({"id": ...})."""
        from entity.create_product_entity import CreateProductEntity
        return CreateProductEntity(self, data)


    def DeactivateTerminal(self, data=None) -> "DeactivateTerminalEntity":
        """Entity factory: client.DeactivateTerminal().list() / client.DeactivateTerminal().load({"id": ...})."""
        from entity.deactivate_terminal_entity import DeactivateTerminalEntity
        return DeactivateTerminalEntity(self, data)


    def DigitalServicesApi(self, data=None) -> "DigitalServicesApiEntity":
        """Entity factory: client.DigitalServicesApi().list() / client.DigitalServicesApi().load({"id": ...})."""
        from entity.digital_services_api_entity import DigitalServicesApiEntity
        return DigitalServicesApiEntity(self, data)


    def EcDataEcom(self, data=None) -> "EcDataEcomEntity":
        """Entity factory: client.EcDataEcom().list() / client.EcDataEcom().load({"id": ...})."""
        from entity.ec_data_ecom_entity import EcDataEcomEntity
        return EcDataEcomEntity(self, data)


    def EcomParameter(self, data=None) -> "EcomParameterEntity":
        """Entity factory: client.EcomParameter().list() / client.EcomParameter().load({"id": ...})."""
        from entity.ecom_parameter_entity import EcomParameterEntity
        return EcomParameterEntity(self, data)


    def EcrData(self, data=None) -> "EcrDataEntity":
        """Entity factory: client.EcrData().list() / client.EcrData().load({"id": ...})."""
        from entity.ecr_data_entity import EcrDataEntity
        return EcrDataEntity(self, data)


    def EmvData(self, data=None) -> "EmvDataEntity":
        """Entity factory: client.EmvData().list() / client.EmvData().load({"id": ...})."""
        from entity.emv_data_entity import EmvDataEntity
        return EmvDataEntity(self, data)


    def EnableAcquiring(self, data=None) -> "EnableAcquiringEntity":
        """Entity factory: client.EnableAcquiring().list() / client.EnableAcquiring().load({"id": ...})."""
        from entity.enable_acquiring_entity import EnableAcquiringEntity
        return EnableAcquiringEntity(self, data)


    def GetMerchantContractNumber(self, data=None) -> "GetMerchantContractNumberEntity":
        """Entity factory: client.GetMerchantContractNumber().list() / client.GetMerchantContractNumber().load({"id": ...})."""
        from entity.get_merchant_contract_number_entity import GetMerchantContractNumberEntity
        return GetMerchantContractNumberEntity(self, data)


    def GetTemplateXml(self, data=None) -> "GetTemplateXmlEntity":
        """Entity factory: client.GetTemplateXml().list() / client.GetTemplateXml().load({"id": ...})."""
        from entity.get_template_xml_entity import GetTemplateXmlEntity
        return GetTemplateXmlEntity(self, data)


    def IntroduceMandator(self, data=None) -> "IntroduceMandatorEntity":
        """Entity factory: client.IntroduceMandator().list() / client.IntroduceMandator().load({"id": ...})."""
        from entity.introduce_mandator_entity import IntroduceMandatorEntity
        return IntroduceMandatorEntity(self, data)


    def IntroducePackage(self, data=None) -> "IntroducePackageEntity":
        """Entity factory: client.IntroducePackage().list() / client.IntroducePackage().load({"id": ...})."""
        from entity.introduce_package_entity import IntroducePackageEntity
        return IntroducePackageEntity(self, data)


    def KeepAlive(self, data=None) -> "KeepAliveEntity":
        """Entity factory: client.KeepAlive().list() / client.KeepAlive().load({"id": ...})."""
        from entity.keep_alive_entity import KeepAliveEntity
        return KeepAliveEntity(self, data)


    def ListTerminal(self, data=None) -> "ListTerminalEntity":
        """Entity factory: client.ListTerminal().list() / client.ListTerminal().load({"id": ...})."""
        from entity.list_terminal_entity import ListTerminalEntity
        return ListTerminalEntity(self, data)


    def MandatorClearingExport(self, data=None) -> "MandatorClearingExportEntity":
        """Entity factory: client.MandatorClearingExport().list() / client.MandatorClearingExport().load({"id": ...})."""
        from entity.mandator_clearing_export_entity import MandatorClearingExportEntity
        return MandatorClearingExportEntity(self, data)


    def MandatorClearingExportDownload(self, data=None) -> "MandatorClearingExportDownloadEntity":
        """Entity factory: client.MandatorClearingExportDownload().list() / client.MandatorClearingExportDownload().load({"id": ...})."""
        from entity.mandator_clearing_export_download_entity import MandatorClearingExportDownloadEntity
        return MandatorClearingExportDownloadEntity(self, data)


    def MandatorClearingExportSummary(self, data=None) -> "MandatorClearingExportSummaryEntity":
        """Entity factory: client.MandatorClearingExportSummary().list() / client.MandatorClearingExportSummary().load({"id": ...})."""
        from entity.mandator_clearing_export_summary_entity import MandatorClearingExportSummaryEntity
        return MandatorClearingExportSummaryEntity(self, data)


    def MerchantPortalServicesApi(self, data=None) -> "MerchantPortalServicesApiEntity":
        """Entity factory: client.MerchantPortalServicesApi().list() / client.MerchantPortalServicesApi().load({"id": ...})."""
        from entity.merchant_portal_services_api_entity import MerchantPortalServicesApiEntity
        return MerchantPortalServicesApiEntity(self, data)


    def MoveTid(self, data=None) -> "MoveTidEntity":
        """Entity factory: client.MoveTid().list() / client.MoveTid().load({"id": ...})."""
        from entity.move_tid_entity import MoveTidEntity
        return MoveTidEntity(self, data)


    def PaymentManual(self, data=None) -> "PaymentManualEntity":
        """Entity factory: client.PaymentManual().list() / client.PaymentManual().load({"id": ...})."""
        from entity.payment_manual_entity import PaymentManualEntity
        return PaymentManualEntity(self, data)


    def PaymentSred(self, data=None) -> "PaymentSredEntity":
        """Entity factory: client.PaymentSred().list() / client.PaymentSred().load({"id": ...})."""
        from entity.payment_sred_entity import PaymentSredEntity
        return PaymentSredEntity(self, data)


    def PreAuthTransactionCompletion(self, data=None) -> "PreAuthTransactionCompletionEntity":
        """Entity factory: client.PreAuthTransactionCompletion().list() / client.PreAuthTransactionCompletion().load({"id": ...})."""
        from entity.pre_auth_transaction_completion_entity import PreAuthTransactionCompletionEntity
        return PreAuthTransactionCompletionEntity(self, data)


    def ReactivateTerminal(self, data=None) -> "ReactivateTerminalEntity":
        """Entity factory: client.ReactivateTerminal().list() / client.ReactivateTerminal().load({"id": ...})."""
        from entity.reactivate_terminal_entity import ReactivateTerminalEntity
        return ReactivateTerminalEntity(self, data)


    def RefundTransaction(self, data=None) -> "RefundTransactionEntity":
        """Entity factory: client.RefundTransaction().list() / client.RefundTransaction().load({"id": ...})."""
        from entity.refund_transaction_entity import RefundTransactionEntity
        return RefundTransactionEntity(self, data)


    def RegisterTecsCompany(self, data=None) -> "RegisterTecsCompanyEntity":
        """Entity factory: client.RegisterTecsCompany().list() / client.RegisterTecsCompany().load({"id": ...})."""
        from entity.register_tecs_company_entity import RegisterTecsCompanyEntity
        return RegisterTecsCompanyEntity(self, data)


    def RegisterTerminal(self, data=None) -> "RegisterTerminalEntity":
        """Entity factory: client.RegisterTerminal().list() / client.RegisterTerminal().load({"id": ...})."""
        from entity.register_terminal_entity import RegisterTerminalEntity
        return RegisterTerminalEntity(self, data)


    def ReportData(self, data=None) -> "ReportDataEntity":
        """Entity factory: client.ReportData().list() / client.ReportData().load({"id": ...})."""
        from entity.report_data_entity import ReportDataEntity
        return ReportDataEntity(self, data)


    def StatusTransaction(self, data=None) -> "StatusTransactionEntity":
        """Entity factory: client.StatusTransaction().list() / client.StatusTransaction().load({"id": ...})."""
        from entity.status_transaction_entity import StatusTransactionEntity
        return StatusTransactionEntity(self, data)


    def StoreTerminalParameter(self, data=None) -> "StoreTerminalParameterEntity":
        """Entity factory: client.StoreTerminalParameter().list() / client.StoreTerminalParameter().load({"id": ...})."""
        from entity.store_terminal_parameter_entity import StoreTerminalParameterEntity
        return StoreTerminalParameterEntity(self, data)


    def TerminalId(self, data=None) -> "TerminalIdEntity":
        """Entity factory: client.TerminalId().list() / client.TerminalId().load({"id": ...})."""
        from entity.terminal_id_entity import TerminalIdEntity
        return TerminalIdEntity(self, data)


    def TransactionHistory(self, data=None) -> "TransactionHistoryEntity":
        """Entity factory: client.TransactionHistory().list() / client.TransactionHistory().load({"id": ...})."""
        from entity.transaction_history_entity import TransactionHistoryEntity
        return TransactionHistoryEntity(self, data)


    def TransactionsCount(self, data=None) -> "TransactionsCountEntity":
        """Entity factory: client.TransactionsCount().list() / client.TransactionsCount().load({"id": ...})."""
        from entity.transactions_count_entity import TransactionsCountEntity
        return TransactionsCountEntity(self, data)


    def TransactionsCountCardBrand(self, data=None) -> "TransactionsCountCardBrandEntity":
        """Entity factory: client.TransactionsCountCardBrand().list() / client.TransactionsCountCardBrand().load({"id": ...})."""
        from entity.transactions_count_card_brand_entity import TransactionsCountCardBrandEntity
        return TransactionsCountCardBrandEntity(self, data)


    def TransactionsTurnover(self, data=None) -> "TransactionsTurnoverEntity":
        """Entity factory: client.TransactionsTurnover().list() / client.TransactionsTurnover().load({"id": ...})."""
        from entity.transactions_turnover_entity import TransactionsTurnoverEntity
        return TransactionsTurnoverEntity(self, data)


    def UpdateMerchant(self, data=None) -> "UpdateMerchantEntity":
        """Entity factory: client.UpdateMerchant().list() / client.UpdateMerchant().load({"id": ...})."""
        from entity.update_merchant_entity import UpdateMerchantEntity
        return UpdateMerchantEntity(self, data)


    def UpdateTemplateXml(self, data=None) -> "UpdateTemplateXmlEntity":
        """Entity factory: client.UpdateTemplateXml().list() / client.UpdateTemplateXml().load({"id": ...})."""
        from entity.update_template_xml_entity import UpdateTemplateXmlEntity
        return UpdateTemplateXmlEntity(self, data)


    def Version(self, data=None) -> "VersionEntity":
        """Entity factory: client.Version().list() / client.Version().load({"id": ...})."""
        from entity.version_entity import VersionEntity
        return VersionEntity(self, data)



    @classmethod
    def test(cls, testopts=None, sdkopts=None) -> "BluefinTecsMerchantServicesSDK":
        if sdkopts is None:
            sdkopts = {}
        sdkopts = vs.clone(sdkopts)
        if not isinstance(sdkopts, dict):
            sdkopts = {}

        if testopts is None:
            testopts = {}
        testopts = vs.clone(testopts)
        if not isinstance(testopts, dict):
            testopts = {}
        testopts["active"] = True

        vs.setpath(sdkopts, "feature.test", testopts)

        sdk = cls(sdkopts)
        sdk.mode = "test"

        return sdk


from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from entity.cancel_transaction_entity import CancelTransactionEntity
    from entity.check_card_black_listed_entity import CheckCardBlackListedEntity
    from entity.create_product_entity import CreateProductEntity
    from entity.deactivate_terminal_entity import DeactivateTerminalEntity
    from entity.digital_services_api_entity import DigitalServicesApiEntity
    from entity.ec_data_ecom_entity import EcDataEcomEntity
    from entity.ecom_parameter_entity import EcomParameterEntity
    from entity.ecr_data_entity import EcrDataEntity
    from entity.emv_data_entity import EmvDataEntity
    from entity.enable_acquiring_entity import EnableAcquiringEntity
    from entity.get_merchant_contract_number_entity import GetMerchantContractNumberEntity
    from entity.get_template_xml_entity import GetTemplateXmlEntity
    from entity.introduce_mandator_entity import IntroduceMandatorEntity
    from entity.introduce_package_entity import IntroducePackageEntity
    from entity.keep_alive_entity import KeepAliveEntity
    from entity.list_terminal_entity import ListTerminalEntity
    from entity.mandator_clearing_export_entity import MandatorClearingExportEntity
    from entity.mandator_clearing_export_download_entity import MandatorClearingExportDownloadEntity
    from entity.mandator_clearing_export_summary_entity import MandatorClearingExportSummaryEntity
    from entity.merchant_portal_services_api_entity import MerchantPortalServicesApiEntity
    from entity.move_tid_entity import MoveTidEntity
    from entity.payment_manual_entity import PaymentManualEntity
    from entity.payment_sred_entity import PaymentSredEntity
    from entity.pre_auth_transaction_completion_entity import PreAuthTransactionCompletionEntity
    from entity.reactivate_terminal_entity import ReactivateTerminalEntity
    from entity.refund_transaction_entity import RefundTransactionEntity
    from entity.register_tecs_company_entity import RegisterTecsCompanyEntity
    from entity.register_terminal_entity import RegisterTerminalEntity
    from entity.report_data_entity import ReportDataEntity
    from entity.status_transaction_entity import StatusTransactionEntity
    from entity.store_terminal_parameter_entity import StoreTerminalParameterEntity
    from entity.terminal_id_entity import TerminalIdEntity
    from entity.transaction_history_entity import TransactionHistoryEntity
    from entity.transactions_count_entity import TransactionsCountEntity
    from entity.transactions_count_card_brand_entity import TransactionsCountCardBrandEntity
    from entity.transactions_turnover_entity import TransactionsTurnoverEntity
    from entity.update_merchant_entity import UpdateMerchantEntity
    from entity.update_template_xml_entity import UpdateTemplateXmlEntity
    from entity.version_entity import VersionEntity
