// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AccountListResponse.serializer)
      ..add(AccountResponse.serializer)
      ..add(AccountStatus.serializer)
      ..add(AccountType.serializer)
      ..add(ApiError.serializer)
      ..add(BalanceResponse.serializer)
      ..add(BookingMethod.serializer)
      ..add(BulkCreateCommoditiesRequest.serializer)
      ..add(BulkCreatePricesRequest.serializer)
      ..add(CommodityListResponse.serializer)
      ..add(CommodityResponse.serializer)
      ..add(CreateAccountRequest.serializer)
      ..add(CreateCommodityRequest.serializer)
      ..add(CreatePostingRequest.serializer)
      ..add(CreatePriceRequest.serializer)
      ..add(CreateTransactionRequest.serializer)
      ..add(CreateTransactionRequestFlagEnum.serializer)
      ..add(EnsureCommodityRequest.serializer)
      ..add(HealthResponse.serializer)
      ..add(HealthResponseStatusEnum.serializer)
      ..add(MultiCurrencyBalanceResponse.serializer)
      ..add(PlatformInfo.serializer)
      ..add(Posting.serializer)
      ..add(PriceListResponse.serializer)
      ..add(PriceResponse.serializer)
      ..add(TransactionDetail.serializer)
      ..add(TransactionFlag.serializer)
      ..add(TransactionListResponse.serializer)
      ..add(TransactionResponse.serializer)
      ..add(TxnStatus.serializer)
      ..add(UpdateAccountRequest.serializer)
      ..add(UpdateCommodityRequest.serializer)
      ..add(UpdatePriceRequest.serializer)
      ..add(UpdateTransactionRequest.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AccountResponse)]),
          () => new ListBuilder<AccountResponse>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CommodityResponse)]),
          () => new ListBuilder<CommodityResponse>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CreateCommodityRequest)]),
          () => new ListBuilder<CreateCommodityRequest>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CreatePostingRequest)]),
          () => new ListBuilder<CreatePostingRequest>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CreatePriceRequest)]),
          () => new ListBuilder<CreatePriceRequest>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Posting)]),
          () => new ListBuilder<Posting>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Posting)]),
          () => new ListBuilder<Posting>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PriceResponse)]),
          () => new ListBuilder<PriceResponse>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TransactionDetail)]),
          () => new ListBuilder<TransactionDetail>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => new MapBuilder<String, JsonObject?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
