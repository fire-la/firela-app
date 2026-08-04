//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_response_dto.g.dart';

/// AccountResponseDto
///
/// Properties:
/// * [id] - Account UUID
/// * [path] - Account path (hierarchical, colon-separated)
/// * [type] - Account type (root segment)
/// * [assetSubClass] - Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
/// * [status] - Account status
/// * [openDate] - Account open date
/// * [closeDate] - Account close date (if closed)
/// * [currencies] - Allowed currencies (null = no restriction)
/// * [bookingMethod] - Booking method
/// * [templatePath] - Template path reference
/// * [isCustom] - Whether this is a custom (user-created) account
/// * [displayName] - Localized display name (ADR-0114, read-time projection)
/// * [icon] - Icon identifier
/// * [openDirectiveMeta] - Open directive metadata (ADR-0115 Decision 9)
/// * [platformId] - Platform ID (null if unbound)
/// * [platform] - Platform details (populated if platformId is set)
/// * [createdAt] - Created timestamp
/// * [updatedAt] - Updated timestamp
@BuiltValue()
abstract class AccountResponseDto implements Built<AccountResponseDto, AccountResponseDtoBuilder> {
  /// Account UUID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Account path (hierarchical, colon-separated)
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Account type (root segment)
  @BuiltValueField(wireName: r'type')
  AccountResponseDtoTypeEnum get type;
  // enum typeEnum {  Assets,  Liabilities,  Income,  Expenses,  Equity,  };

  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueField(wireName: r'assetSubClass')
  AccountResponseDtoAssetSubClassEnum? get assetSubClass;
  // enum assetSubClassEnum {  DEPOSIT,  CASH,  MONEY_MARKET_FUND,  STOCK,  ETF,  MUTUAL_FUND,  EQUITY_COMPENSATION,  GOVERNMENT_BOND,  CORPORATE_BOND,  BOND_FUND,  PRIMARY_RESIDENCE,  INVESTMENT_PROPERTY,  REIT,  GOLD,  SILVER,  PRECIOUS_METAL,  PRECIOUS_METAL_FUND,  COMMODITY,  COMMODITY_FUND,  CRYPTOCURRENCY,  RETIREMENT_ACCOUNT,  HEALTH_ACCOUNT,  EDUCATION_ACCOUNT,  INSURANCE,  PRIVATE_EQUITY,  HEDGE_FUND,  COLLECTIBLES,  MORTGAGE,  STUDENT_LOAN,  CREDIT_CARD,  PERSONAL_LOAN,  OTHER,  };

  /// Account status
  @BuiltValueField(wireName: r'status')
  AccountResponseDtoStatusEnum get status;
  // enum statusEnum {  OPEN,  CLOSED,  SUSPENDED,  };

  /// Account open date
  @BuiltValueField(wireName: r'openDate')
  String get openDate;

  /// Account close date (if closed)
  @BuiltValueField(wireName: r'closeDate')
  String? get closeDate;

  /// Allowed currencies (null = no restriction)
  @BuiltValueField(wireName: r'currencies')
  BuiltList<String>? get currencies;

  /// Booking method
  @BuiltValueField(wireName: r'bookingMethod')
  AccountResponseDtoBookingMethodEnum get bookingMethod;
  // enum bookingMethodEnum {  FIFO,  LIFO,  HIFO,  AVERAGE,  STRICT,  STRICT_WITH_SIZE,  NONE,  };

  /// Template path reference
  @BuiltValueField(wireName: r'templatePath')
  String? get templatePath;

  /// Whether this is a custom (user-created) account
  @BuiltValueField(wireName: r'isCustom')
  bool get isCustom;

  /// Localized display name (ADR-0114, read-time projection)
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  /// Icon identifier
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Open directive metadata (ADR-0115 Decision 9)
  @BuiltValueField(wireName: r'openDirectiveMeta')
  JsonObject? get openDirectiveMeta;

  /// Platform ID (null if unbound)
  @BuiltValueField(wireName: r'platformId')
  JsonObject? get platformId;

  /// Platform details (populated if platformId is set)
  @BuiltValueField(wireName: r'platform')
  JsonObject? get platform;

  /// Created timestamp
  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  /// Updated timestamp
  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  AccountResponseDto._();

  factory AccountResponseDto([void updates(AccountResponseDtoBuilder b)]) = _$AccountResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountResponseDto> get serializer => _$AccountResponseDtoSerializer();
}

class _$AccountResponseDtoSerializer implements PrimitiveSerializer<AccountResponseDto> {
  @override
  final Iterable<Type> types = const [AccountResponseDto, _$AccountResponseDto];

  @override
  final String wireName = r'AccountResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AccountResponseDtoTypeEnum),
    );
    if (object.assetSubClass != null) {
      yield r'assetSubClass';
      yield serializers.serialize(
        object.assetSubClass,
        specifiedType: const FullType.nullable(AccountResponseDtoAssetSubClassEnum),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AccountResponseDtoStatusEnum),
    );
    yield r'openDate';
    yield serializers.serialize(
      object.openDate,
      specifiedType: const FullType(String),
    );
    if (object.closeDate != null) {
      yield r'closeDate';
      yield serializers.serialize(
        object.closeDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.currencies != null) {
      yield r'currencies';
      yield serializers.serialize(
        object.currencies,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'bookingMethod';
    yield serializers.serialize(
      object.bookingMethod,
      specifiedType: const FullType(AccountResponseDtoBookingMethodEnum),
    );
    if (object.templatePath != null) {
      yield r'templatePath';
      yield serializers.serialize(
        object.templatePath,
        specifiedType: const FullType(String),
      );
    }
    yield r'isCustom';
    yield serializers.serialize(
      object.isCustom,
      specifiedType: const FullType(bool),
    );
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.openDirectiveMeta != null) {
      yield r'openDirectiveMeta';
      yield serializers.serialize(
        object.openDirectiveMeta,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.platformId != null) {
      yield r'platformId';
      yield serializers.serialize(
        object.platformId,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(JsonObject),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountResponseDtoTypeEnum),
          ) as AccountResponseDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'assetSubClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AccountResponseDtoAssetSubClassEnum),
          ) as AccountResponseDtoAssetSubClassEnum?;
          if (valueDes == null) continue;
          result.assetSubClass = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountResponseDtoStatusEnum),
          ) as AccountResponseDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'openDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.openDate = valueDes;
          break;
        case r'closeDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.closeDate = valueDes;
          break;
        case r'currencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.currencies.replace(valueDes);
          break;
        case r'bookingMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountResponseDtoBookingMethodEnum),
          ) as AccountResponseDtoBookingMethodEnum;
          result.bookingMethod = valueDes;
          break;
        case r'templatePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templatePath = valueDes;
          break;
        case r'isCustom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCustom = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'openDirectiveMeta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.openDirectiveMeta = valueDes;
          break;
        case r'platformId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.platformId = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.platform = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountResponseDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class AccountResponseDtoTypeEnum extends EnumClass {

  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Assets')
  static const AccountResponseDtoTypeEnum assets = _$accountResponseDtoTypeEnum_assets;
  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Liabilities')
  static const AccountResponseDtoTypeEnum liabilities = _$accountResponseDtoTypeEnum_liabilities;
  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Income')
  static const AccountResponseDtoTypeEnum income = _$accountResponseDtoTypeEnum_income;
  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Expenses')
  static const AccountResponseDtoTypeEnum expenses = _$accountResponseDtoTypeEnum_expenses;
  /// Account type (root segment)
  @BuiltValueEnumConst(wireName: r'Equity')
  static const AccountResponseDtoTypeEnum equity = _$accountResponseDtoTypeEnum_equity;

  static Serializer<AccountResponseDtoTypeEnum> get serializer => _$accountResponseDtoTypeEnumSerializer;

  const AccountResponseDtoTypeEnum._(String name): super(name);

  static BuiltSet<AccountResponseDtoTypeEnum> get values => _$accountResponseDtoTypeEnumValues;
  static AccountResponseDtoTypeEnum valueOf(String name) => _$accountResponseDtoTypeEnumValueOf(name);
}

class AccountResponseDtoAssetSubClassEnum extends EnumClass {

  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'DEPOSIT')
  static const AccountResponseDtoAssetSubClassEnum DEPOSIT = _$accountResponseDtoAssetSubClassEnum_DEPOSIT;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'CASH')
  static const AccountResponseDtoAssetSubClassEnum CASH = _$accountResponseDtoAssetSubClassEnum_CASH;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'MONEY_MARKET_FUND')
  static const AccountResponseDtoAssetSubClassEnum MONEY_MARKET_FUND = _$accountResponseDtoAssetSubClassEnum_MONEY_MARKET_FUND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'STOCK')
  static const AccountResponseDtoAssetSubClassEnum STOCK = _$accountResponseDtoAssetSubClassEnum_STOCK;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'ETF')
  static const AccountResponseDtoAssetSubClassEnum ETF = _$accountResponseDtoAssetSubClassEnum_ETF;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'MUTUAL_FUND')
  static const AccountResponseDtoAssetSubClassEnum MUTUAL_FUND = _$accountResponseDtoAssetSubClassEnum_MUTUAL_FUND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'EQUITY_COMPENSATION')
  static const AccountResponseDtoAssetSubClassEnum EQUITY_COMPENSATION = _$accountResponseDtoAssetSubClassEnum_EQUITY_COMPENSATION;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'GOVERNMENT_BOND')
  static const AccountResponseDtoAssetSubClassEnum GOVERNMENT_BOND = _$accountResponseDtoAssetSubClassEnum_GOVERNMENT_BOND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'CORPORATE_BOND')
  static const AccountResponseDtoAssetSubClassEnum CORPORATE_BOND = _$accountResponseDtoAssetSubClassEnum_CORPORATE_BOND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'BOND_FUND')
  static const AccountResponseDtoAssetSubClassEnum BOND_FUND = _$accountResponseDtoAssetSubClassEnum_BOND_FUND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'PRIMARY_RESIDENCE')
  static const AccountResponseDtoAssetSubClassEnum PRIMARY_RESIDENCE = _$accountResponseDtoAssetSubClassEnum_PRIMARY_RESIDENCE;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'INVESTMENT_PROPERTY')
  static const AccountResponseDtoAssetSubClassEnum INVESTMENT_PROPERTY = _$accountResponseDtoAssetSubClassEnum_INVESTMENT_PROPERTY;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'REIT')
  static const AccountResponseDtoAssetSubClassEnum REIT = _$accountResponseDtoAssetSubClassEnum_REIT;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'GOLD')
  static const AccountResponseDtoAssetSubClassEnum GOLD = _$accountResponseDtoAssetSubClassEnum_GOLD;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'SILVER')
  static const AccountResponseDtoAssetSubClassEnum SILVER = _$accountResponseDtoAssetSubClassEnum_SILVER;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'PRECIOUS_METAL')
  static const AccountResponseDtoAssetSubClassEnum PRECIOUS_METAL = _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'PRECIOUS_METAL_FUND')
  static const AccountResponseDtoAssetSubClassEnum PRECIOUS_METAL_FUND = _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL_FUND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'COMMODITY')
  static const AccountResponseDtoAssetSubClassEnum COMMODITY = _$accountResponseDtoAssetSubClassEnum_COMMODITY;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'COMMODITY_FUND')
  static const AccountResponseDtoAssetSubClassEnum COMMODITY_FUND = _$accountResponseDtoAssetSubClassEnum_COMMODITY_FUND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'CRYPTOCURRENCY')
  static const AccountResponseDtoAssetSubClassEnum CRYPTOCURRENCY = _$accountResponseDtoAssetSubClassEnum_CRYPTOCURRENCY;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'RETIREMENT_ACCOUNT')
  static const AccountResponseDtoAssetSubClassEnum RETIREMENT_ACCOUNT = _$accountResponseDtoAssetSubClassEnum_RETIREMENT_ACCOUNT;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'HEALTH_ACCOUNT')
  static const AccountResponseDtoAssetSubClassEnum HEALTH_ACCOUNT = _$accountResponseDtoAssetSubClassEnum_HEALTH_ACCOUNT;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'EDUCATION_ACCOUNT')
  static const AccountResponseDtoAssetSubClassEnum EDUCATION_ACCOUNT = _$accountResponseDtoAssetSubClassEnum_EDUCATION_ACCOUNT;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const AccountResponseDtoAssetSubClassEnum INSURANCE = _$accountResponseDtoAssetSubClassEnum_INSURANCE;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'PRIVATE_EQUITY')
  static const AccountResponseDtoAssetSubClassEnum PRIVATE_EQUITY = _$accountResponseDtoAssetSubClassEnum_PRIVATE_EQUITY;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'HEDGE_FUND')
  static const AccountResponseDtoAssetSubClassEnum HEDGE_FUND = _$accountResponseDtoAssetSubClassEnum_HEDGE_FUND;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'COLLECTIBLES')
  static const AccountResponseDtoAssetSubClassEnum COLLECTIBLES = _$accountResponseDtoAssetSubClassEnum_COLLECTIBLES;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'MORTGAGE')
  static const AccountResponseDtoAssetSubClassEnum MORTGAGE = _$accountResponseDtoAssetSubClassEnum_MORTGAGE;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'STUDENT_LOAN')
  static const AccountResponseDtoAssetSubClassEnum STUDENT_LOAN = _$accountResponseDtoAssetSubClassEnum_STUDENT_LOAN;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'CREDIT_CARD')
  static const AccountResponseDtoAssetSubClassEnum CREDIT_CARD = _$accountResponseDtoAssetSubClassEnum_CREDIT_CARD;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'PERSONAL_LOAN')
  static const AccountResponseDtoAssetSubClassEnum PERSONAL_LOAN = _$accountResponseDtoAssetSubClassEnum_PERSONAL_LOAN;
  /// Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const AccountResponseDtoAssetSubClassEnum OTHER = _$accountResponseDtoAssetSubClassEnum_OTHER;

  static Serializer<AccountResponseDtoAssetSubClassEnum> get serializer => _$accountResponseDtoAssetSubClassEnumSerializer;

  const AccountResponseDtoAssetSubClassEnum._(String name): super(name);

  static BuiltSet<AccountResponseDtoAssetSubClassEnum> get values => _$accountResponseDtoAssetSubClassEnumValues;
  static AccountResponseDtoAssetSubClassEnum valueOf(String name) => _$accountResponseDtoAssetSubClassEnumValueOf(name);
}

class AccountResponseDtoStatusEnum extends EnumClass {

  /// Account status
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const AccountResponseDtoStatusEnum OPEN = _$accountResponseDtoStatusEnum_OPEN;
  /// Account status
  @BuiltValueEnumConst(wireName: r'CLOSED')
  static const AccountResponseDtoStatusEnum CLOSED = _$accountResponseDtoStatusEnum_CLOSED;
  /// Account status
  @BuiltValueEnumConst(wireName: r'SUSPENDED')
  static const AccountResponseDtoStatusEnum SUSPENDED = _$accountResponseDtoStatusEnum_SUSPENDED;

  static Serializer<AccountResponseDtoStatusEnum> get serializer => _$accountResponseDtoStatusEnumSerializer;

  const AccountResponseDtoStatusEnum._(String name): super(name);

  static BuiltSet<AccountResponseDtoStatusEnum> get values => _$accountResponseDtoStatusEnumValues;
  static AccountResponseDtoStatusEnum valueOf(String name) => _$accountResponseDtoStatusEnumValueOf(name);
}

class AccountResponseDtoBookingMethodEnum extends EnumClass {

  /// Booking method
  @BuiltValueEnumConst(wireName: r'FIFO')
  static const AccountResponseDtoBookingMethodEnum FIFO = _$accountResponseDtoBookingMethodEnum_FIFO;
  /// Booking method
  @BuiltValueEnumConst(wireName: r'LIFO')
  static const AccountResponseDtoBookingMethodEnum LIFO = _$accountResponseDtoBookingMethodEnum_LIFO;
  /// Booking method
  @BuiltValueEnumConst(wireName: r'HIFO')
  static const AccountResponseDtoBookingMethodEnum HIFO = _$accountResponseDtoBookingMethodEnum_HIFO;
  /// Booking method
  @BuiltValueEnumConst(wireName: r'AVERAGE')
  static const AccountResponseDtoBookingMethodEnum AVERAGE = _$accountResponseDtoBookingMethodEnum_AVERAGE;
  /// Booking method
  @BuiltValueEnumConst(wireName: r'STRICT')
  static const AccountResponseDtoBookingMethodEnum STRICT = _$accountResponseDtoBookingMethodEnum_STRICT;
  /// Booking method
  @BuiltValueEnumConst(wireName: r'STRICT_WITH_SIZE')
  static const AccountResponseDtoBookingMethodEnum STRICT_WITH_SIZE = _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE;
  /// Booking method
  @BuiltValueEnumConst(wireName: r'NONE')
  static const AccountResponseDtoBookingMethodEnum NONE = _$accountResponseDtoBookingMethodEnum_NONE;

  static Serializer<AccountResponseDtoBookingMethodEnum> get serializer => _$accountResponseDtoBookingMethodEnumSerializer;

  const AccountResponseDtoBookingMethodEnum._(String name): super(name);

  static BuiltSet<AccountResponseDtoBookingMethodEnum> get values => _$accountResponseDtoBookingMethodEnumValues;
  static AccountResponseDtoBookingMethodEnum valueOf(String name) => _$accountResponseDtoBookingMethodEnumValueOf(name);
}

