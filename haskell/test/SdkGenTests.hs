-- Generated model-driven entity + direct tests.
{-# LANGUAGE ScopedTypeVariables #-}

module SdkGenTests (genTests) where

import Control.Exception (SomeException, try)
import Data.IORef

import VoxgigStruct (Value (..), emptyMap, keysof, ismap, islist, isNoval, clone)
import SdkTypes
import SdkHelpers
import qualified SdkFeatures as F
import qualified SdkClient as C
import qualified TReadmeExamples
import Testutil
import TestJson (jsonRead)

-- Load an entity fixture (../.sdk/test/entity/<name>/<Name>TestData.json).
loadFixture :: String -> IO Value
loadFixture entName = do
  -- The fixture DIRECTORY is the snake_case entity name (create_result), so a
  -- plain lowercase of the CamelCase entName (createresult) misses the
  -- underscores for multi-word entities. Convert CamelCase -> snake_case.
  let lname = camelToSnake entName
  raw <- readFile ("../.sdk/test/entity/" ++ lname ++ "/" ++ entName ++ "TestData.json")
  jsonRead raw
  where
    toLowerCh ch = if ch >= 'A' && ch <= 'Z' then toEnum (fromEnum ch + 32) else ch
    camelToSnake [] = []
    camelToSnake (c0 : rest) = toLowerCh c0 : go rest
    go [] = []
    go (c : cs)
      | c >= 'A' && c <= 'Z' = '_' : toLowerCh c : go cs
      | otherwise = c : go cs

-- The first new-ref data map for an entity (fixture.new.<entity>.<ref0>).
newRefData :: Value -> String -> IO Value
newRefData fixture entName = do
  newEnts <- getpathS fixture ("new." ++ entName)
  refs <- keysof newEnts
  case refs of
    [] -> emptyMap
    (r0 : _) -> do d <- getp newEnts r0; clone d

genTests :: Counters -> IO ()
genTests c = do
  TReadmeExamples.tests c
  cancel_transactionInstanceTest c
  cancel_transactionBasicTest c
  cancel_transactionDirectTest c
  check_card_black_listedInstanceTest c
  check_card_black_listedBasicTest c
  check_card_black_listedDirectTest c
  create_productInstanceTest c
  create_productBasicTest c
  create_productDirectTest c
  deactivate_terminalInstanceTest c
  deactivate_terminalBasicTest c
  deactivate_terminalDirectTest c
  digital_services_apiInstanceTest c
  digital_services_apiBasicTest c
  digital_services_apiDirectTest c
  ec_data_ecomInstanceTest c
  ec_data_ecomBasicTest c
  ec_data_ecomDirectTest c
  ecom_parameterInstanceTest c
  ecom_parameterBasicTest c
  ecom_parameterDirectTest c
  ecr_dataInstanceTest c
  ecr_dataBasicTest c
  ecr_dataDirectTest c
  emv_dataInstanceTest c
  emv_dataBasicTest c
  emv_dataDirectTest c
  enable_acquiringInstanceTest c
  enable_acquiringBasicTest c
  enable_acquiringDirectTest c
  get_merchant_contract_numberInstanceTest c
  get_merchant_contract_numberBasicTest c
  get_merchant_contract_numberDirectTest c
  get_template_xmlInstanceTest c
  get_template_xmlBasicTest c
  get_template_xmlDirectTest c
  introduce_mandatorInstanceTest c
  introduce_mandatorBasicTest c
  introduce_mandatorDirectTest c
  introduce_packageInstanceTest c
  introduce_packageBasicTest c
  introduce_packageDirectTest c
  keep_aliveInstanceTest c
  keep_aliveBasicTest c
  keep_aliveDirectTest c
  list_terminalInstanceTest c
  list_terminalBasicTest c
  list_terminalDirectTest c
  mandator_clearing_exportInstanceTest c
  mandator_clearing_exportBasicTest c
  mandator_clearing_exportDirectTest c
  mandator_clearing_export_downloadInstanceTest c
  mandator_clearing_export_downloadBasicTest c
  mandator_clearing_export_downloadDirectTest c
  mandator_clearing_export_summaryInstanceTest c
  mandator_clearing_export_summaryBasicTest c
  mandator_clearing_export_summaryDirectTest c
  merchant_portal_services_apiInstanceTest c
  merchant_portal_services_apiBasicTest c
  merchant_portal_services_apiDirectTest c
  move_tidInstanceTest c
  move_tidBasicTest c
  move_tidDirectTest c
  payment_manualInstanceTest c
  payment_manualBasicTest c
  payment_manualDirectTest c
  payment_sredInstanceTest c
  payment_sredBasicTest c
  payment_sredDirectTest c
  pre_auth_transaction_completionInstanceTest c
  pre_auth_transaction_completionBasicTest c
  pre_auth_transaction_completionDirectTest c
  reactivate_terminalInstanceTest c
  reactivate_terminalBasicTest c
  reactivate_terminalDirectTest c
  refund_transactionInstanceTest c
  refund_transactionBasicTest c
  refund_transactionDirectTest c
  register_tecs_companyInstanceTest c
  register_tecs_companyBasicTest c
  register_tecs_companyDirectTest c
  register_terminalInstanceTest c
  register_terminalBasicTest c
  register_terminalDirectTest c
  report_dataInstanceTest c
  report_dataBasicTest c
  report_dataDirectTest c
  status_transactionInstanceTest c
  status_transactionBasicTest c
  status_transactionDirectTest c
  store_terminal_parameterInstanceTest c
  store_terminal_parameterBasicTest c
  store_terminal_parameterDirectTest c
  terminal_idInstanceTest c
  terminal_idBasicTest c
  terminal_idDirectTest c
  transaction_historyInstanceTest c
  transaction_historyBasicTest c
  transaction_historyDirectTest c
  transactions_countInstanceTest c
  transactions_countBasicTest c
  transactions_countDirectTest c
  transactions_count_card_brandInstanceTest c
  transactions_count_card_brandBasicTest c
  transactions_count_card_brandDirectTest c
  transactions_turnoverInstanceTest c
  transactions_turnoverBasicTest c
  transactions_turnoverDirectTest c
  update_merchantInstanceTest c
  update_merchantBasicTest c
  update_merchantDirectTest c
  update_template_xmlInstanceTest c
  update_template_xmlBasicTest c
  update_template_xmlDirectTest c
  versionInstanceTest c
  versionBasicTest c
  versionDirectTest c

cancel_transactionInstanceTest :: Counters -> IO ()
cancel_transactionInstanceTest c = runTest c "cancel_transaction.instance" $ do
  sdk <- C.testSdk0
  ent <- C.cancel_transaction sdk VNoval
  pure (eName ent == "cancel_transaction")

cancel_transactionBasicTest :: Counters -> IO ()
cancel_transactionBasicTest c = do
  fixture <- loadFixture "CancelTransaction"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "cancel_transaction.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.cancel_transaction sdk VNoval
    d <- newRefData fixture "cancel_transaction"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

cancel_transactionDirectTest :: Counters -> IO ()
cancel_transactionDirectTest c = runTest c "cancel_transaction.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/cancel_transaction/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

check_card_black_listedInstanceTest :: Counters -> IO ()
check_card_black_listedInstanceTest c = runTest c "check_card_black_listed.instance" $ do
  sdk <- C.testSdk0
  ent <- C.check_card_black_listed sdk VNoval
  pure (eName ent == "check_card_black_listed")

check_card_black_listedBasicTest :: Counters -> IO ()
check_card_black_listedBasicTest c = do
  fixture <- loadFixture "CheckCardBlackListed"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "check_card_black_listed.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.check_card_black_listed sdk VNoval
    d <- newRefData fixture "check_card_black_listed"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

check_card_black_listedDirectTest :: Counters -> IO ()
check_card_black_listedDirectTest c = runTest c "check_card_black_listed.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/check_card_black_listed/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

create_productInstanceTest :: Counters -> IO ()
create_productInstanceTest c = runTest c "create_product.instance" $ do
  sdk <- C.testSdk0
  ent <- C.create_product sdk VNoval
  pure (eName ent == "create_product")

create_productBasicTest :: Counters -> IO ()
create_productBasicTest c = do
  fixture <- loadFixture "CreateProduct"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "create_product.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.create_product sdk VNoval
    d <- newRefData fixture "create_product"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

create_productDirectTest :: Counters -> IO ()
create_productDirectTest c = runTest c "create_product.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/create_product/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

deactivate_terminalInstanceTest :: Counters -> IO ()
deactivate_terminalInstanceTest c = runTest c "deactivate_terminal.instance" $ do
  sdk <- C.testSdk0
  ent <- C.deactivate_terminal sdk VNoval
  pure (eName ent == "deactivate_terminal")

deactivate_terminalBasicTest :: Counters -> IO ()
deactivate_terminalBasicTest c = do
  fixture <- loadFixture "DeactivateTerminal"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "deactivate_terminal.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.deactivate_terminal sdk VNoval
    d <- newRefData fixture "deactivate_terminal"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

deactivate_terminalDirectTest :: Counters -> IO ()
deactivate_terminalDirectTest c = runTest c "deactivate_terminal.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/deactivate_terminal/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

digital_services_apiInstanceTest :: Counters -> IO ()
digital_services_apiInstanceTest c = runTest c "digital_services_api.instance" $ do
  sdk <- C.testSdk0
  ent <- C.digital_services_api sdk VNoval
  pure (eName ent == "digital_services_api")

digital_services_apiBasicTest :: Counters -> IO ()
digital_services_apiBasicTest c = do
  fixture <- loadFixture "DigitalServicesApi"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "digital_services_api.load" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.digital_services_api sdk VNoval
    entmap <- getp existing "digital_services_api"
    ids <- keysof entmap
    case ids of
      [] -> pure True
      (id0 : _) -> do
        m <- jo [("id", VStr id0)]; ctrl <- emptyMap
        loaded <- eLoad ent m ctrl
        ld <- eDataGet loaded
        lid <- getp ld "id"
        pure (ismap ld && vstring lid == id0)
  runTest c "digital_services_api.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.digital_services_api sdk VNoval
    d <- newRefData fixture "digital_services_api"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

digital_services_apiDirectTest :: Counters -> IO ()
digital_services_apiDirectTest c = runTest c "digital_services_api.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/digital_services_api/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

ec_data_ecomInstanceTest :: Counters -> IO ()
ec_data_ecomInstanceTest c = runTest c "ec_data_ecom.instance" $ do
  sdk <- C.testSdk0
  ent <- C.ec_data_ecom sdk VNoval
  pure (eName ent == "ec_data_ecom")

ec_data_ecomBasicTest :: Counters -> IO ()
ec_data_ecomBasicTest c = do
  fixture <- loadFixture "EcDataEcom"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "ec_data_ecom.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.ec_data_ecom sdk VNoval
    d <- newRefData fixture "ec_data_ecom"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

ec_data_ecomDirectTest :: Counters -> IO ()
ec_data_ecomDirectTest c = runTest c "ec_data_ecom.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/ec_data_ecom/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

ecom_parameterInstanceTest :: Counters -> IO ()
ecom_parameterInstanceTest c = runTest c "ecom_parameter.instance" $ do
  sdk <- C.testSdk0
  ent <- C.ecom_parameter sdk VNoval
  pure (eName ent == "ecom_parameter")

ecom_parameterBasicTest :: Counters -> IO ()
ecom_parameterBasicTest c = do
  fixture <- loadFixture "EcomParameter"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "ecom_parameter.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.ecom_parameter sdk VNoval
    d <- newRefData fixture "ecom_parameter"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

ecom_parameterDirectTest :: Counters -> IO ()
ecom_parameterDirectTest c = runTest c "ecom_parameter.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/ecom_parameter/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

ecr_dataInstanceTest :: Counters -> IO ()
ecr_dataInstanceTest c = runTest c "ecr_data.instance" $ do
  sdk <- C.testSdk0
  ent <- C.ecr_data sdk VNoval
  pure (eName ent == "ecr_data")

ecr_dataBasicTest :: Counters -> IO ()
ecr_dataBasicTest c = do
  fixture <- loadFixture "EcrData"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "ecr_data.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.ecr_data sdk VNoval
    d <- newRefData fixture "ecr_data"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

ecr_dataDirectTest :: Counters -> IO ()
ecr_dataDirectTest c = runTest c "ecr_data.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/ecr_data/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

emv_dataInstanceTest :: Counters -> IO ()
emv_dataInstanceTest c = runTest c "emv_data.instance" $ do
  sdk <- C.testSdk0
  ent <- C.emv_data sdk VNoval
  pure (eName ent == "emv_data")

emv_dataBasicTest :: Counters -> IO ()
emv_dataBasicTest c = do
  fixture <- loadFixture "EmvData"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "emv_data.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.emv_data sdk VNoval
    d <- newRefData fixture "emv_data"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

emv_dataDirectTest :: Counters -> IO ()
emv_dataDirectTest c = runTest c "emv_data.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/emv_data/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

enable_acquiringInstanceTest :: Counters -> IO ()
enable_acquiringInstanceTest c = runTest c "enable_acquiring.instance" $ do
  sdk <- C.testSdk0
  ent <- C.enable_acquiring sdk VNoval
  pure (eName ent == "enable_acquiring")

enable_acquiringBasicTest :: Counters -> IO ()
enable_acquiringBasicTest c = do
  fixture <- loadFixture "EnableAcquiring"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "enable_acquiring.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.enable_acquiring sdk VNoval
    d <- newRefData fixture "enable_acquiring"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

enable_acquiringDirectTest :: Counters -> IO ()
enable_acquiringDirectTest c = runTest c "enable_acquiring.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/enable_acquiring/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

get_merchant_contract_numberInstanceTest :: Counters -> IO ()
get_merchant_contract_numberInstanceTest c = runTest c "get_merchant_contract_number.instance" $ do
  sdk <- C.testSdk0
  ent <- C.get_merchant_contract_number sdk VNoval
  pure (eName ent == "get_merchant_contract_number")

get_merchant_contract_numberBasicTest :: Counters -> IO ()
get_merchant_contract_numberBasicTest c = do
  fixture <- loadFixture "GetMerchantContractNumber"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "get_merchant_contract_number.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.get_merchant_contract_number sdk VNoval
    d <- newRefData fixture "get_merchant_contract_number"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

get_merchant_contract_numberDirectTest :: Counters -> IO ()
get_merchant_contract_numberDirectTest c = runTest c "get_merchant_contract_number.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/get_merchant_contract_number/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

get_template_xmlInstanceTest :: Counters -> IO ()
get_template_xmlInstanceTest c = runTest c "get_template_xml.instance" $ do
  sdk <- C.testSdk0
  ent <- C.get_template_xml sdk VNoval
  pure (eName ent == "get_template_xml")

get_template_xmlBasicTest :: Counters -> IO ()
get_template_xmlBasicTest c = do
  fixture <- loadFixture "GetTemplateXml"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "get_template_xml.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.get_template_xml sdk VNoval
    d <- newRefData fixture "get_template_xml"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

get_template_xmlDirectTest :: Counters -> IO ()
get_template_xmlDirectTest c = runTest c "get_template_xml.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/get_template_xml/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

introduce_mandatorInstanceTest :: Counters -> IO ()
introduce_mandatorInstanceTest c = runTest c "introduce_mandator.instance" $ do
  sdk <- C.testSdk0
  ent <- C.introduce_mandator sdk VNoval
  pure (eName ent == "introduce_mandator")

introduce_mandatorBasicTest :: Counters -> IO ()
introduce_mandatorBasicTest c = do
  fixture <- loadFixture "IntroduceMandator"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "introduce_mandator.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.introduce_mandator sdk VNoval
    d <- newRefData fixture "introduce_mandator"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

introduce_mandatorDirectTest :: Counters -> IO ()
introduce_mandatorDirectTest c = runTest c "introduce_mandator.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/introduce_mandator/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

introduce_packageInstanceTest :: Counters -> IO ()
introduce_packageInstanceTest c = runTest c "introduce_package.instance" $ do
  sdk <- C.testSdk0
  ent <- C.introduce_package sdk VNoval
  pure (eName ent == "introduce_package")

introduce_packageBasicTest :: Counters -> IO ()
introduce_packageBasicTest c = do
  fixture <- loadFixture "IntroducePackage"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "introduce_package.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.introduce_package sdk VNoval
    d <- newRefData fixture "introduce_package"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

introduce_packageDirectTest :: Counters -> IO ()
introduce_packageDirectTest c = runTest c "introduce_package.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/introduce_package/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

keep_aliveInstanceTest :: Counters -> IO ()
keep_aliveInstanceTest c = runTest c "keep_alive.instance" $ do
  sdk <- C.testSdk0
  ent <- C.keep_alive sdk VNoval
  pure (eName ent == "keep_alive")

keep_aliveBasicTest :: Counters -> IO ()
keep_aliveBasicTest c = do
  fixture <- loadFixture "KeepAlive"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "keep_alive.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.keep_alive sdk VNoval
    d <- newRefData fixture "keep_alive"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

keep_aliveDirectTest :: Counters -> IO ()
keep_aliveDirectTest c = runTest c "keep_alive.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/keep_alive/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

list_terminalInstanceTest :: Counters -> IO ()
list_terminalInstanceTest c = runTest c "list_terminal.instance" $ do
  sdk <- C.testSdk0
  ent <- C.list_terminal sdk VNoval
  pure (eName ent == "list_terminal")

list_terminalBasicTest :: Counters -> IO ()
list_terminalBasicTest c = do
  fixture <- loadFixture "ListTerminal"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "list_terminal.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.list_terminal sdk VNoval
    d <- newRefData fixture "list_terminal"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

list_terminalDirectTest :: Counters -> IO ()
list_terminalDirectTest c = runTest c "list_terminal.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/list_terminal/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

mandator_clearing_exportInstanceTest :: Counters -> IO ()
mandator_clearing_exportInstanceTest c = runTest c "mandator_clearing_export.instance" $ do
  sdk <- C.testSdk0
  ent <- C.mandator_clearing_export sdk VNoval
  pure (eName ent == "mandator_clearing_export")

mandator_clearing_exportBasicTest :: Counters -> IO ()
mandator_clearing_exportBasicTest c = do
  fixture <- loadFixture "MandatorClearingExport"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "mandator_clearing_export.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.mandator_clearing_export sdk VNoval
    d <- newRefData fixture "mandator_clearing_export"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

mandator_clearing_exportDirectTest :: Counters -> IO ()
mandator_clearing_exportDirectTest c = runTest c "mandator_clearing_export.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/mandator_clearing_export/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

mandator_clearing_export_downloadInstanceTest :: Counters -> IO ()
mandator_clearing_export_downloadInstanceTest c = runTest c "mandator_clearing_export_download.instance" $ do
  sdk <- C.testSdk0
  ent <- C.mandator_clearing_export_download sdk VNoval
  pure (eName ent == "mandator_clearing_export_download")

mandator_clearing_export_downloadBasicTest :: Counters -> IO ()
mandator_clearing_export_downloadBasicTest c = do
  fixture <- loadFixture "MandatorClearingExportDownload"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "mandator_clearing_export_download.load" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.mandator_clearing_export_download sdk VNoval
    entmap <- getp existing "mandator_clearing_export_download"
    ids <- keysof entmap
    case ids of
      [] -> pure True
      (id0 : _) -> do
        m <- jo [("id", VStr id0)]; ctrl <- emptyMap
        loaded <- eLoad ent m ctrl
        ld <- eDataGet loaded
        lid <- getp ld "id"
        pure (ismap ld && vstring lid == id0)
  runTest c "mandator_clearing_export_download.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.mandator_clearing_export_download sdk VNoval
    d <- newRefData fixture "mandator_clearing_export_download"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

mandator_clearing_export_downloadDirectTest :: Counters -> IO ()
mandator_clearing_export_downloadDirectTest c = runTest c "mandator_clearing_export_download.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/mandator_clearing_export_download/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

mandator_clearing_export_summaryInstanceTest :: Counters -> IO ()
mandator_clearing_export_summaryInstanceTest c = runTest c "mandator_clearing_export_summary.instance" $ do
  sdk <- C.testSdk0
  ent <- C.mandator_clearing_export_summary sdk VNoval
  pure (eName ent == "mandator_clearing_export_summary")

mandator_clearing_export_summaryBasicTest :: Counters -> IO ()
mandator_clearing_export_summaryBasicTest c = do
  fixture <- loadFixture "MandatorClearingExportSummary"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "mandator_clearing_export_summary.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.mandator_clearing_export_summary sdk VNoval
    d <- newRefData fixture "mandator_clearing_export_summary"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

mandator_clearing_export_summaryDirectTest :: Counters -> IO ()
mandator_clearing_export_summaryDirectTest c = runTest c "mandator_clearing_export_summary.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/mandator_clearing_export_summary/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

merchant_portal_services_apiInstanceTest :: Counters -> IO ()
merchant_portal_services_apiInstanceTest c = runTest c "merchant_portal_services_api.instance" $ do
  sdk <- C.testSdk0
  ent <- C.merchant_portal_services_api sdk VNoval
  pure (eName ent == "merchant_portal_services_api")

merchant_portal_services_apiBasicTest :: Counters -> IO ()
merchant_portal_services_apiBasicTest c = do
  fixture <- loadFixture "MerchantPortalServicesApi"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "merchant_portal_services_api.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.merchant_portal_services_api sdk VNoval
    d <- newRefData fixture "merchant_portal_services_api"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

merchant_portal_services_apiDirectTest :: Counters -> IO ()
merchant_portal_services_apiDirectTest c = runTest c "merchant_portal_services_api.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/merchant_portal_services_api/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

move_tidInstanceTest :: Counters -> IO ()
move_tidInstanceTest c = runTest c "move_tid.instance" $ do
  sdk <- C.testSdk0
  ent <- C.move_tid sdk VNoval
  pure (eName ent == "move_tid")

move_tidBasicTest :: Counters -> IO ()
move_tidBasicTest c = do
  fixture <- loadFixture "MoveTid"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "move_tid.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.move_tid sdk VNoval
    d <- newRefData fixture "move_tid"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

move_tidDirectTest :: Counters -> IO ()
move_tidDirectTest c = runTest c "move_tid.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/move_tid/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

payment_manualInstanceTest :: Counters -> IO ()
payment_manualInstanceTest c = runTest c "payment_manual.instance" $ do
  sdk <- C.testSdk0
  ent <- C.payment_manual sdk VNoval
  pure (eName ent == "payment_manual")

payment_manualBasicTest :: Counters -> IO ()
payment_manualBasicTest c = do
  fixture <- loadFixture "PaymentManual"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "payment_manual.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.payment_manual sdk VNoval
    d <- newRefData fixture "payment_manual"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

payment_manualDirectTest :: Counters -> IO ()
payment_manualDirectTest c = runTest c "payment_manual.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/payment_manual/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

payment_sredInstanceTest :: Counters -> IO ()
payment_sredInstanceTest c = runTest c "payment_sred.instance" $ do
  sdk <- C.testSdk0
  ent <- C.payment_sred sdk VNoval
  pure (eName ent == "payment_sred")

payment_sredBasicTest :: Counters -> IO ()
payment_sredBasicTest c = do
  fixture <- loadFixture "PaymentSred"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "payment_sred.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.payment_sred sdk VNoval
    d <- newRefData fixture "payment_sred"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

payment_sredDirectTest :: Counters -> IO ()
payment_sredDirectTest c = runTest c "payment_sred.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/payment_sred/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

pre_auth_transaction_completionInstanceTest :: Counters -> IO ()
pre_auth_transaction_completionInstanceTest c = runTest c "pre_auth_transaction_completion.instance" $ do
  sdk <- C.testSdk0
  ent <- C.pre_auth_transaction_completion sdk VNoval
  pure (eName ent == "pre_auth_transaction_completion")

pre_auth_transaction_completionBasicTest :: Counters -> IO ()
pre_auth_transaction_completionBasicTest c = do
  fixture <- loadFixture "PreAuthTransactionCompletion"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "pre_auth_transaction_completion.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.pre_auth_transaction_completion sdk VNoval
    d <- newRefData fixture "pre_auth_transaction_completion"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

pre_auth_transaction_completionDirectTest :: Counters -> IO ()
pre_auth_transaction_completionDirectTest c = runTest c "pre_auth_transaction_completion.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/pre_auth_transaction_completion/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

reactivate_terminalInstanceTest :: Counters -> IO ()
reactivate_terminalInstanceTest c = runTest c "reactivate_terminal.instance" $ do
  sdk <- C.testSdk0
  ent <- C.reactivate_terminal sdk VNoval
  pure (eName ent == "reactivate_terminal")

reactivate_terminalBasicTest :: Counters -> IO ()
reactivate_terminalBasicTest c = do
  fixture <- loadFixture "ReactivateTerminal"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "reactivate_terminal.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.reactivate_terminal sdk VNoval
    d <- newRefData fixture "reactivate_terminal"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

reactivate_terminalDirectTest :: Counters -> IO ()
reactivate_terminalDirectTest c = runTest c "reactivate_terminal.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/reactivate_terminal/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

refund_transactionInstanceTest :: Counters -> IO ()
refund_transactionInstanceTest c = runTest c "refund_transaction.instance" $ do
  sdk <- C.testSdk0
  ent <- C.refund_transaction sdk VNoval
  pure (eName ent == "refund_transaction")

refund_transactionBasicTest :: Counters -> IO ()
refund_transactionBasicTest c = do
  fixture <- loadFixture "RefundTransaction"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "refund_transaction.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.refund_transaction sdk VNoval
    d <- newRefData fixture "refund_transaction"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

refund_transactionDirectTest :: Counters -> IO ()
refund_transactionDirectTest c = runTest c "refund_transaction.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/refund_transaction/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

register_tecs_companyInstanceTest :: Counters -> IO ()
register_tecs_companyInstanceTest c = runTest c "register_tecs_company.instance" $ do
  sdk <- C.testSdk0
  ent <- C.register_tecs_company sdk VNoval
  pure (eName ent == "register_tecs_company")

register_tecs_companyBasicTest :: Counters -> IO ()
register_tecs_companyBasicTest c = do
  fixture <- loadFixture "RegisterTecsCompany"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "register_tecs_company.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.register_tecs_company sdk VNoval
    d <- newRefData fixture "register_tecs_company"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

register_tecs_companyDirectTest :: Counters -> IO ()
register_tecs_companyDirectTest c = runTest c "register_tecs_company.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/register_tecs_company/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

register_terminalInstanceTest :: Counters -> IO ()
register_terminalInstanceTest c = runTest c "register_terminal.instance" $ do
  sdk <- C.testSdk0
  ent <- C.register_terminal sdk VNoval
  pure (eName ent == "register_terminal")

register_terminalBasicTest :: Counters -> IO ()
register_terminalBasicTest c = do
  fixture <- loadFixture "RegisterTerminal"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "register_terminal.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.register_terminal sdk VNoval
    d <- newRefData fixture "register_terminal"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

register_terminalDirectTest :: Counters -> IO ()
register_terminalDirectTest c = runTest c "register_terminal.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/register_terminal/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

report_dataInstanceTest :: Counters -> IO ()
report_dataInstanceTest c = runTest c "report_data.instance" $ do
  sdk <- C.testSdk0
  ent <- C.report_data sdk VNoval
  pure (eName ent == "report_data")

report_dataBasicTest :: Counters -> IO ()
report_dataBasicTest c = do
  fixture <- loadFixture "ReportData"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "report_data.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.report_data sdk VNoval
    d <- newRefData fixture "report_data"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

report_dataDirectTest :: Counters -> IO ()
report_dataDirectTest c = runTest c "report_data.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/report_data/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

status_transactionInstanceTest :: Counters -> IO ()
status_transactionInstanceTest c = runTest c "status_transaction.instance" $ do
  sdk <- C.testSdk0
  ent <- C.status_transaction sdk VNoval
  pure (eName ent == "status_transaction")

status_transactionBasicTest :: Counters -> IO ()
status_transactionBasicTest c = do
  fixture <- loadFixture "StatusTransaction"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "status_transaction.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.status_transaction sdk VNoval
    d <- newRefData fixture "status_transaction"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

status_transactionDirectTest :: Counters -> IO ()
status_transactionDirectTest c = runTest c "status_transaction.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/status_transaction/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

store_terminal_parameterInstanceTest :: Counters -> IO ()
store_terminal_parameterInstanceTest c = runTest c "store_terminal_parameter.instance" $ do
  sdk <- C.testSdk0
  ent <- C.store_terminal_parameter sdk VNoval
  pure (eName ent == "store_terminal_parameter")

store_terminal_parameterBasicTest :: Counters -> IO ()
store_terminal_parameterBasicTest c = do
  fixture <- loadFixture "StoreTerminalParameter"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "store_terminal_parameter.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.store_terminal_parameter sdk VNoval
    d <- newRefData fixture "store_terminal_parameter"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

store_terminal_parameterDirectTest :: Counters -> IO ()
store_terminal_parameterDirectTest c = runTest c "store_terminal_parameter.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/store_terminal_parameter/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

terminal_idInstanceTest :: Counters -> IO ()
terminal_idInstanceTest c = runTest c "terminal_id.instance" $ do
  sdk <- C.testSdk0
  ent <- C.terminal_id sdk VNoval
  pure (eName ent == "terminal_id")

terminal_idBasicTest :: Counters -> IO ()
terminal_idBasicTest c = do
  fixture <- loadFixture "TerminalId"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "terminal_id.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.terminal_id sdk VNoval
    d <- newRefData fixture "terminal_id"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

terminal_idDirectTest :: Counters -> IO ()
terminal_idDirectTest c = runTest c "terminal_id.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/terminal_id/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

transaction_historyInstanceTest :: Counters -> IO ()
transaction_historyInstanceTest c = runTest c "transaction_history.instance" $ do
  sdk <- C.testSdk0
  ent <- C.transaction_history sdk VNoval
  pure (eName ent == "transaction_history")

transaction_historyBasicTest :: Counters -> IO ()
transaction_historyBasicTest c = do
  fixture <- loadFixture "TransactionHistory"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "transaction_history.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.transaction_history sdk VNoval
    d <- newRefData fixture "transaction_history"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

transaction_historyDirectTest :: Counters -> IO ()
transaction_historyDirectTest c = runTest c "transaction_history.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/transaction_history/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

transactions_countInstanceTest :: Counters -> IO ()
transactions_countInstanceTest c = runTest c "transactions_count.instance" $ do
  sdk <- C.testSdk0
  ent <- C.transactions_count sdk VNoval
  pure (eName ent == "transactions_count")

transactions_countBasicTest :: Counters -> IO ()
transactions_countBasicTest c = do
  fixture <- loadFixture "TransactionsCount"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "transactions_count.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.transactions_count sdk VNoval
    d <- newRefData fixture "transactions_count"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

transactions_countDirectTest :: Counters -> IO ()
transactions_countDirectTest c = runTest c "transactions_count.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/transactions_count/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

transactions_count_card_brandInstanceTest :: Counters -> IO ()
transactions_count_card_brandInstanceTest c = runTest c "transactions_count_card_brand.instance" $ do
  sdk <- C.testSdk0
  ent <- C.transactions_count_card_brand sdk VNoval
  pure (eName ent == "transactions_count_card_brand")

transactions_count_card_brandBasicTest :: Counters -> IO ()
transactions_count_card_brandBasicTest c = do
  fixture <- loadFixture "TransactionsCountCardBrand"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "transactions_count_card_brand.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.transactions_count_card_brand sdk VNoval
    d <- newRefData fixture "transactions_count_card_brand"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

transactions_count_card_brandDirectTest :: Counters -> IO ()
transactions_count_card_brandDirectTest c = runTest c "transactions_count_card_brand.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/transactions_count_card_brand/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

transactions_turnoverInstanceTest :: Counters -> IO ()
transactions_turnoverInstanceTest c = runTest c "transactions_turnover.instance" $ do
  sdk <- C.testSdk0
  ent <- C.transactions_turnover sdk VNoval
  pure (eName ent == "transactions_turnover")

transactions_turnoverBasicTest :: Counters -> IO ()
transactions_turnoverBasicTest c = do
  fixture <- loadFixture "TransactionsTurnover"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "transactions_turnover.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.transactions_turnover sdk VNoval
    d <- newRefData fixture "transactions_turnover"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

transactions_turnoverDirectTest :: Counters -> IO ()
transactions_turnoverDirectTest c = runTest c "transactions_turnover.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/transactions_turnover/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

update_merchantInstanceTest :: Counters -> IO ()
update_merchantInstanceTest c = runTest c "update_merchant.instance" $ do
  sdk <- C.testSdk0
  ent <- C.update_merchant sdk VNoval
  pure (eName ent == "update_merchant")

update_merchantBasicTest :: Counters -> IO ()
update_merchantBasicTest c = do
  fixture <- loadFixture "UpdateMerchant"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "update_merchant.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.update_merchant sdk VNoval
    d <- newRefData fixture "update_merchant"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

update_merchantDirectTest :: Counters -> IO ()
update_merchantDirectTest c = runTest c "update_merchant.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/update_merchant/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

update_template_xmlInstanceTest :: Counters -> IO ()
update_template_xmlInstanceTest c = runTest c "update_template_xml.instance" $ do
  sdk <- C.testSdk0
  ent <- C.update_template_xml sdk VNoval
  pure (eName ent == "update_template_xml")

update_template_xmlBasicTest :: Counters -> IO ()
update_template_xmlBasicTest c = do
  fixture <- loadFixture "UpdateTemplateXml"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "update_template_xml.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.update_template_xml sdk VNoval
    d <- newRefData fixture "update_template_xml"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cd <- eDataGet created
    cid <- getp cd "id"
    pure (ismap cd && not (isNoval cid))

update_template_xmlDirectTest :: Counters -> IO ()
update_template_xmlDirectTest c = runTest c "update_template_xml.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/update_template_xml/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

versionInstanceTest :: Counters -> IO ()
versionInstanceTest c = runTest c "version.instance" $ do
  sdk <- C.testSdk0
  ent <- C.version sdk VNoval
  pure (eName ent == "version")

versionBasicTest :: Counters -> IO ()
versionBasicTest c = do
  fixture <- loadFixture "Version"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "version.load" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.version sdk VNoval
    entmap <- getp existing "version"
    ids <- keysof entmap
    case ids of
      [] -> pure True
      (id0 : _) -> do
        m <- jo [("id", VStr id0)]; ctrl <- emptyMap
        loaded <- eLoad ent m ctrl
        ld <- eDataGet loaded
        lid <- getp ld "id"
        pure (ismap ld && vstring lid == id0)

versionDirectTest :: Counters -> IO ()
versionDirectTest c = runTest c "version.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/version/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)
