//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:firela_api/src/date_serializer.dart';
import 'package:firela_api/src/model/date.dart';

import 'package:firela_api/src/model/account_list_response.dart';
import 'package:firela_api/src/model/account_response.dart';
import 'package:firela_api/src/model/account_status.dart';
import 'package:firela_api/src/model/account_type.dart';
import 'package:firela_api/src/model/api_error.dart';
import 'package:firela_api/src/model/balance_response.dart';
import 'package:firela_api/src/model/booking_method.dart';
import 'package:firela_api/src/model/bulk_create_commodities_request.dart';
import 'package:firela_api/src/model/bulk_create_prices_request.dart';
import 'package:firela_api/src/model/commodity_list_response.dart';
import 'package:firela_api/src/model/commodity_response.dart';
import 'package:firela_api/src/model/create_account_request.dart';
import 'package:firela_api/src/model/create_commodity_request.dart';
import 'package:firela_api/src/model/create_posting_request.dart';
import 'package:firela_api/src/model/create_price_request.dart';
import 'package:firela_api/src/model/create_transaction_request.dart';
import 'package:firela_api/src/model/ensure_commodity_request.dart';
import 'package:firela_api/src/model/health_response.dart';
import 'package:firela_api/src/model/multi_currency_balance_response.dart';
import 'package:firela_api/src/model/platform_info.dart';
import 'package:firela_api/src/model/posting.dart';
import 'package:firela_api/src/model/price_list_response.dart';
import 'package:firela_api/src/model/price_response.dart';
import 'package:firela_api/src/model/transaction_detail.dart';
import 'package:firela_api/src/model/transaction_flag.dart';
import 'package:firela_api/src/model/transaction_list_response.dart';
import 'package:firela_api/src/model/transaction_response.dart';
import 'package:firela_api/src/model/txn_status.dart';
import 'package:firela_api/src/model/update_account_request.dart';
import 'package:firela_api/src/model/update_commodity_request.dart';
import 'package:firela_api/src/model/update_price_request.dart';
import 'package:firela_api/src/model/update_transaction_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  AccountListResponse,
  AccountResponse,
  AccountStatus,
  AccountType,
  ApiError,
  BalanceResponse,
  BookingMethod,
  BulkCreateCommoditiesRequest,
  BulkCreatePricesRequest,
  CommodityListResponse,
  CommodityResponse,
  CreateAccountRequest,
  CreateCommodityRequest,
  CreatePostingRequest,
  CreatePriceRequest,
  CreateTransactionRequest,
  EnsureCommodityRequest,
  HealthResponse,
  MultiCurrencyBalanceResponse,
  PlatformInfo,
  Posting,
  PriceListResponse,
  PriceResponse,
  TransactionDetail,
  TransactionFlag,
  TransactionListResponse,
  TransactionResponse,
  TxnStatus,
  UpdateAccountRequest,
  UpdateCommodityRequest,
  UpdatePriceRequest,
  UpdateTransactionRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
