;; BluefinTecsMerchantServices SDK generated API tests.
(ns sdk.gentest
  (:require [sdk.api :as api]
            [sdk.config :as config]
            [sdk.testutil :as t]
            [clojure.string]
            [voxgig.struct :as vs]
            [sdk.entity.cancel_transaction :as e-cancel_transaction]
            [sdk.entity.check_card_black_listed :as e-check_card_black_listed]
            [sdk.entity.create_product :as e-create_product]
            [sdk.entity.deactivate_terminal :as e-deactivate_terminal]
            [sdk.entity.digital_services_api :as e-digital_services_api]
            [sdk.entity.ec_data_ecom :as e-ec_data_ecom]
            [sdk.entity.ecom_parameter :as e-ecom_parameter]
            [sdk.entity.ecr_data :as e-ecr_data]
            [sdk.entity.emv_data :as e-emv_data]
            [sdk.entity.enable_acquiring :as e-enable_acquiring]
            [sdk.entity.get_merchant_contract_number :as e-get_merchant_contract_number]
            [sdk.entity.get_template_xml :as e-get_template_xml]
            [sdk.entity.introduce_mandator :as e-introduce_mandator]
            [sdk.entity.introduce_package :as e-introduce_package]
            [sdk.entity.keep_alive :as e-keep_alive]
            [sdk.entity.list_terminal :as e-list_terminal]
            [sdk.entity.mandator_clearing_export :as e-mandator_clearing_export]
            [sdk.entity.mandator_clearing_export_download :as e-mandator_clearing_export_download]
            [sdk.entity.mandator_clearing_export_summary :as e-mandator_clearing_export_summary]
            [sdk.entity.merchant_portal_services_api :as e-merchant_portal_services_api]
            [sdk.entity.move_tid :as e-move_tid]
            [sdk.entity.payment_manual :as e-payment_manual]
            [sdk.entity.payment_sred :as e-payment_sred]
            [sdk.entity.pre_auth_transaction_completion :as e-pre_auth_transaction_completion]
            [sdk.entity.reactivate_terminal :as e-reactivate_terminal]
            [sdk.entity.refund_transaction :as e-refund_transaction]
            [sdk.entity.register_tecs_company :as e-register_tecs_company]
            [sdk.entity.register_terminal :as e-register_terminal]
            [sdk.entity.report_data :as e-report_data]
            [sdk.entity.status_transaction :as e-status_transaction]
            [sdk.entity.store_terminal_parameter :as e-store_terminal_parameter]
            [sdk.entity.terminal_id :as e-terminal_id]
            [sdk.entity.transaction_history :as e-transaction_history]
            [sdk.entity.transactions_count :as e-transactions_count]
            [sdk.entity.transactions_count_card_brand :as e-transactions_count_card_brand]
            [sdk.entity.transactions_turnover :as e-transactions_turnover]
            [sdk.entity.update_merchant :as e-update_merchant]
            [sdk.entity.update_template_xml :as e-update_template_xml]
            [sdk.entity.version :as e-version]))

(defn run [rec]
  (t/run-check rec "gen-exists-cancel_transaction"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/cancel_transaction sdk nil)) "cancel_transaction accessor present"))))
  (t/run-check rec "gen-smoke-cancel_transaction"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/cancel_transaction sdk nil)]
             (let [res (e-cancel_transaction/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-check_card_black_listed"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/check_card_black_listed sdk nil)) "check_card_black_listed accessor present"))))
  (t/run-check rec "gen-smoke-check_card_black_listed"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/check_card_black_listed sdk nil)]
             (let [res (e-check_card_black_listed/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-create_product"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/create_product sdk nil)) "create_product accessor present"))))
  (t/run-check rec "gen-smoke-create_product"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/create_product sdk nil)]
             (let [res (e-create_product/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-deactivate_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/deactivate_terminal sdk nil)) "deactivate_terminal accessor present"))))
  (t/run-check rec "gen-smoke-deactivate_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/deactivate_terminal sdk nil)]
             (let [res (e-deactivate_terminal/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-digital_services_api"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/digital_services_api sdk nil)) "digital_services_api accessor present"))))
  (t/run-check rec "gen-smoke-digital_services_api"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/digital_services_api sdk nil)]
             (let [res (e-digital_services_api/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-ec_data_ecom"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/ec_data_ecom sdk nil)) "ec_data_ecom accessor present"))))
  (t/run-check rec "gen-smoke-ec_data_ecom"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/ec_data_ecom sdk nil)]
             (let [res (e-ec_data_ecom/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-ecom_parameter"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/ecom_parameter sdk nil)) "ecom_parameter accessor present"))))
  (t/run-check rec "gen-smoke-ecom_parameter"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/ecom_parameter sdk nil)]
             (let [res (e-ecom_parameter/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-ecr_data"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/ecr_data sdk nil)) "ecr_data accessor present"))))
  (t/run-check rec "gen-smoke-ecr_data"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/ecr_data sdk nil)]
             (let [res (e-ecr_data/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-emv_data"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/emv_data sdk nil)) "emv_data accessor present"))))
  (t/run-check rec "gen-smoke-emv_data"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/emv_data sdk nil)]
             (let [res (e-emv_data/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-enable_acquiring"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/enable_acquiring sdk nil)) "enable_acquiring accessor present"))))
  (t/run-check rec "gen-smoke-enable_acquiring"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/enable_acquiring sdk nil)]
             (let [res (e-enable_acquiring/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-get_merchant_contract_number"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/get_merchant_contract_number sdk nil)) "get_merchant_contract_number accessor present"))))
  (t/run-check rec "gen-smoke-get_merchant_contract_number"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/get_merchant_contract_number sdk nil)]
             (let [res (e-get_merchant_contract_number/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-get_template_xml"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/get_template_xml sdk nil)) "get_template_xml accessor present"))))
  (t/run-check rec "gen-smoke-get_template_xml"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/get_template_xml sdk nil)]
             (let [res (e-get_template_xml/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-introduce_mandator"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/introduce_mandator sdk nil)) "introduce_mandator accessor present"))))
  (t/run-check rec "gen-smoke-introduce_mandator"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/introduce_mandator sdk nil)]
             (let [res (e-introduce_mandator/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-introduce_package"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/introduce_package sdk nil)) "introduce_package accessor present"))))
  (t/run-check rec "gen-smoke-introduce_package"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/introduce_package sdk nil)]
             (let [res (e-introduce_package/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-keep_alive"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/keep_alive sdk nil)) "keep_alive accessor present"))))
  (t/run-check rec "gen-smoke-keep_alive"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/keep_alive sdk nil)]
             (let [res (e-keep_alive/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-list_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/list_terminal sdk nil)) "list_terminal accessor present"))))
  (t/run-check rec "gen-smoke-list_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/list_terminal sdk nil)]
             (let [res (e-list_terminal/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-mandator_clearing_export"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/mandator_clearing_export sdk nil)) "mandator_clearing_export accessor present"))))
  (t/run-check rec "gen-smoke-mandator_clearing_export"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/mandator_clearing_export sdk nil)]
             (let [res (e-mandator_clearing_export/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-mandator_clearing_export_download"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/mandator_clearing_export_download sdk nil)) "mandator_clearing_export_download accessor present"))))
  (t/run-check rec "gen-smoke-mandator_clearing_export_download"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/mandator_clearing_export_download sdk nil)]
             (let [res (e-mandator_clearing_export_download/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-mandator_clearing_export_summary"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/mandator_clearing_export_summary sdk nil)) "mandator_clearing_export_summary accessor present"))))
  (t/run-check rec "gen-smoke-mandator_clearing_export_summary"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/mandator_clearing_export_summary sdk nil)]
             (let [res (e-mandator_clearing_export_summary/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-merchant_portal_services_api"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/merchant_portal_services_api sdk nil)) "merchant_portal_services_api accessor present"))))
  (t/run-check rec "gen-smoke-merchant_portal_services_api"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/merchant_portal_services_api sdk nil)]
             (let [res (e-merchant_portal_services_api/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-move_tid"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/move_tid sdk nil)) "move_tid accessor present"))))
  (t/run-check rec "gen-smoke-move_tid"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/move_tid sdk nil)]
             (let [res (e-move_tid/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-payment_manual"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/payment_manual sdk nil)) "payment_manual accessor present"))))
  (t/run-check rec "gen-smoke-payment_manual"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/payment_manual sdk nil)]
             (let [res (e-payment_manual/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-payment_sred"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/payment_sred sdk nil)) "payment_sred accessor present"))))
  (t/run-check rec "gen-smoke-payment_sred"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/payment_sred sdk nil)]
             (let [res (e-payment_sred/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-pre_auth_transaction_completion"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/pre_auth_transaction_completion sdk nil)) "pre_auth_transaction_completion accessor present"))))
  (t/run-check rec "gen-smoke-pre_auth_transaction_completion"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/pre_auth_transaction_completion sdk nil)]
             (let [res (e-pre_auth_transaction_completion/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-reactivate_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/reactivate_terminal sdk nil)) "reactivate_terminal accessor present"))))
  (t/run-check rec "gen-smoke-reactivate_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/reactivate_terminal sdk nil)]
             (let [res (e-reactivate_terminal/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-refund_transaction"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/refund_transaction sdk nil)) "refund_transaction accessor present"))))
  (t/run-check rec "gen-smoke-refund_transaction"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/refund_transaction sdk nil)]
             (let [res (e-refund_transaction/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-register_tecs_company"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/register_tecs_company sdk nil)) "register_tecs_company accessor present"))))
  (t/run-check rec "gen-smoke-register_tecs_company"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/register_tecs_company sdk nil)]
             (let [res (e-register_tecs_company/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-register_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/register_terminal sdk nil)) "register_terminal accessor present"))))
  (t/run-check rec "gen-smoke-register_terminal"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/register_terminal sdk nil)]
             (let [res (e-register_terminal/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-report_data"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/report_data sdk nil)) "report_data accessor present"))))
  (t/run-check rec "gen-smoke-report_data"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/report_data sdk nil)]
             (let [res (e-report_data/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-status_transaction"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/status_transaction sdk nil)) "status_transaction accessor present"))))
  (t/run-check rec "gen-smoke-status_transaction"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/status_transaction sdk nil)]
             (let [res (e-status_transaction/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-store_terminal_parameter"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/store_terminal_parameter sdk nil)) "store_terminal_parameter accessor present"))))
  (t/run-check rec "gen-smoke-store_terminal_parameter"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/store_terminal_parameter sdk nil)]
             (let [res (e-store_terminal_parameter/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-terminal_id"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/terminal_id sdk nil)) "terminal_id accessor present"))))
  (t/run-check rec "gen-smoke-terminal_id"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/terminal_id sdk nil)]
             (let [res (e-terminal_id/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-transaction_history"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/transaction_history sdk nil)) "transaction_history accessor present"))))
  (t/run-check rec "gen-smoke-transaction_history"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/transaction_history sdk nil)]
             (let [res (e-transaction_history/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-transactions_count"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/transactions_count sdk nil)) "transactions_count accessor present"))))
  (t/run-check rec "gen-smoke-transactions_count"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/transactions_count sdk nil)]
             (let [res (e-transactions_count/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-transactions_count_card_brand"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/transactions_count_card_brand sdk nil)) "transactions_count_card_brand accessor present"))))
  (t/run-check rec "gen-smoke-transactions_count_card_brand"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/transactions_count_card_brand sdk nil)]
             (let [res (e-transactions_count_card_brand/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-transactions_turnover"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/transactions_turnover sdk nil)) "transactions_turnover accessor present"))))
  (t/run-check rec "gen-smoke-transactions_turnover"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/transactions_turnover sdk nil)]
             (let [res (e-transactions_turnover/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-update_merchant"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/update_merchant sdk nil)) "update_merchant accessor present"))))
  (t/run-check rec "gen-smoke-update_merchant"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/update_merchant sdk nil)]
             (let [res (e-update_merchant/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-update_template_xml"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/update_template_xml sdk nil)) "update_template_xml accessor present"))))
  (t/run-check rec "gen-smoke-update_template_xml"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/update_template_xml sdk nil)]
             (let [res (e-update_template_xml/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-version"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/version sdk nil)) "version accessor present"))))
  (t/run-check rec "gen-prepare-digital_services_api"
    (fn [] (let [client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"))
                 fetchdef (api/prepare client (vs/jm "path" "/api/digital_services_api" "method" "GET"))]
             (t/is-true (vs/ismap fetchdef) "prepare returns a fetchdef map")
             (t/is-some (vs/getprop fetchdef "url") "fetchdef carries a url")
             (t/is-eq (vs/getprop fetchdef "method") "GET" "fetchdef preserves the method"))))
  (t/run-check rec "gen-direct-digital_services_api"
    (fn [] (let [fetch (fn [_url _fetchdef]
                         [(vs/jm "status" 200 "statusText" "OK" "headers" (vs/jm)
                                 "json" (fn [] (vs/jm "id" "d1"))) nil])
                 client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"
                                             "system" (vs/jm "fetch" fetch)))
                 result (api/direct client (vs/jm "path" "/api/digital_services_api" "method" "GET"))]
             (t/is-true (vs/ismap result) "direct returns a result map")
             (t/is-true (vs/getprop result "ok") "direct 200 => ok true")
             (t/is-eq (vs/getprop result "status") 200 "direct surfaces the status"))))
  (t/run-check rec "gen-prepare-mandator_clearing_export_download"
    (fn [] (let [client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"))
                 fetchdef (api/prepare client (vs/jm "path" "/api/mandator_clearing_export_download" "method" "GET"))]
             (t/is-true (vs/ismap fetchdef) "prepare returns a fetchdef map")
             (t/is-some (vs/getprop fetchdef "url") "fetchdef carries a url")
             (t/is-eq (vs/getprop fetchdef "method") "GET" "fetchdef preserves the method"))))
  (t/run-check rec "gen-direct-mandator_clearing_export_download"
    (fn [] (let [fetch (fn [_url _fetchdef]
                         [(vs/jm "status" 200 "statusText" "OK" "headers" (vs/jm)
                                 "json" (fn [] (vs/jm "id" "d1"))) nil])
                 client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"
                                             "system" (vs/jm "fetch" fetch)))
                 result (api/direct client (vs/jm "path" "/api/mandator_clearing_export_download" "method" "GET"))]
             (t/is-true (vs/ismap result) "direct returns a result map")
             (t/is-true (vs/getprop result "ok") "direct 200 => ok true")
             (t/is-eq (vs/getprop result "status") 200 "direct surfaces the status"))))
  (t/run-check rec "gen-prepare-version"
    (fn [] (let [client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"))
                 fetchdef (api/prepare client (vs/jm "path" "/api/version" "method" "GET"))]
             (t/is-true (vs/ismap fetchdef) "prepare returns a fetchdef map")
             (t/is-some (vs/getprop fetchdef "url") "fetchdef carries a url")
             (t/is-eq (vs/getprop fetchdef "method") "GET" "fetchdef preserves the method"))))
  (t/run-check rec "gen-direct-version"
    (fn [] (let [fetch (fn [_url _fetchdef]
                         [(vs/jm "status" 200 "statusText" "OK" "headers" (vs/jm)
                                 "json" (fn [] (vs/jm "id" "d1"))) nil])
                 client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"
                                             "system" (vs/jm "fetch" fetch)))
                 result (api/direct client (vs/jm "path" "/api/version" "method" "GET"))]
             (t/is-true (vs/ismap result) "direct returns a result map")
             (t/is-true (vs/getprop result "ok") "direct 200 => ok true")
             (t/is-eq (vs/getprop result "status") 200 "direct surfaces the status"))))
  (letfn [(clj-blocks [text]
            (let [fence (apply str (repeat 3 (char 96)))
                  parts (clojure.string/split text (re-pattern fence))]
              (->> parts
                   (map-indexed vector)
                   (filter (fn [[i _]] (odd? i)))
                   (map (fn [[_ seg]] seg))
                   (filter (fn [seg]
                             (= "clojure"
                                (clojure.string/trim (first (clojure.string/split-lines seg))))))
                   (map (fn [seg]
                          (clojure.string/join "\n"
                            (rest (clojure.string/split-lines seg))))))))]
    (doseq [[label path] [["root-README" "../README.md"]
                          ["README" "README.md"]
                          ["REFERENCE" "REFERENCE.md"]]]
      (t/run-check rec (str "gen-readme-examples-" label)
        (fn []
          (if-not (.exists (java.io.File. ^String path))
            (t/is-true true (str label " absent (skipped)"))
            (let [blocks (clj-blocks (slurp path))]
              (doseq [b blocks]
                (binding [*read-eval* false]
                  (read-string (str "[\n" b "\n]"))))
              (t/is-true true (str label " clojure blocks parse cleanly"))))))))
  nil)
