//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_standard_response_dto.g.dart';

/// AccountStandardResponseDto
///
/// Properties:
/// * [path] - Account path (hierarchical, colon-separated)
/// * [type] - Account type in Beancount hierarchy
/// * [name] - Short display name. Universal rows project to the request locale (Accept-Language); regional rows keep the authored native name — mixed-language by design (ADR-0131 class P vs class A).
/// * [aliases] - Authored market-language alternative names delivered verbatim (not localized copy, not xlf-managed, not locale-projected). Flat string[] per ADR-0129 D1; ADR-0131 class A.
/// * [searchTerms] - Locale-projected search synonyms (e.g. the zh bank-card / debit-card everyday terms for the checking account). Pure-locale projection — absent when the locale has no seeded synonyms; English fallback rides the authored aliases field. Search-only vocabulary, not the NLP routing corpus (#698, ADR-0131 fourth-class adjudication).
/// * [currency] - Product denomination as a 3-letter ISO 4217 code, authored market data delivered verbatim (not localized, not xlf-managed). ADR-0131 class A. Absent = single-currency not asserted — consumers fall back to their own region currency (#714).
/// * [description] - Account description (stable semantics only). Mixed-language contract: universal rows project to the request locale via the accountDesc xlf axis with an en fallback (ADR-0131 class P, ADR-0132; unseeded locales falling back to English are expected); regional rows deliver the authored market language (ADR-0131 class A, verbatim, never xlf-managed).
/// * [tags] - Account tags for categorization — structured metadata delivered verbatim (not localized, not xlf-managed). ADR-0131 class A.
/// * [icon] - Icon identifier for UI display
/// * [productCategory] - Onboarding product category (coarse grouping derived from assetSubClass)
/// * [assetClass] - Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
/// * [assetSubClass] - Asset sub-class (product type, derived at read time from classification rules)
@BuiltValue()
abstract class AccountStandardResponseDto implements Built<AccountStandardResponseDto, AccountStandardResponseDtoBuilder> {
  /// Account path (hierarchical, colon-separated)
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Account type in Beancount hierarchy
  @BuiltValueField(wireName: r'type')
  AccountStandardResponseDtoTypeEnum get type;
  // enum typeEnum {  Assets,  Liabilities,  Income,  Expenses,  Equity,  };

  /// Short display name. Universal rows project to the request locale (Accept-Language); regional rows keep the authored native name — mixed-language by design (ADR-0131 class P vs class A).
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Authored market-language alternative names delivered verbatim (not localized copy, not xlf-managed, not locale-projected). Flat string[] per ADR-0129 D1; ADR-0131 class A.
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String>? get aliases;

  /// Locale-projected search synonyms (e.g. the zh bank-card / debit-card everyday terms for the checking account). Pure-locale projection — absent when the locale has no seeded synonyms; English fallback rides the authored aliases field. Search-only vocabulary, not the NLP routing corpus (#698, ADR-0131 fourth-class adjudication).
  @BuiltValueField(wireName: r'searchTerms')
  BuiltList<String>? get searchTerms;

  /// Product denomination as a 3-letter ISO 4217 code, authored market data delivered verbatim (not localized, not xlf-managed). ADR-0131 class A. Absent = single-currency not asserted — consumers fall back to their own region currency (#714).
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Account description (stable semantics only). Mixed-language contract: universal rows project to the request locale via the accountDesc xlf axis with an en fallback (ADR-0131 class P, ADR-0132; unseeded locales falling back to English are expected); regional rows deliver the authored market language (ADR-0131 class A, verbatim, never xlf-managed).
  @BuiltValueField(wireName: r'description')
  String get description;

  /// Account tags for categorization — structured metadata delivered verbatim (not localized, not xlf-managed). ADR-0131 class A.
  @BuiltValueField(wireName: r'tags')
  BuiltList<String> get tags;

  /// Icon identifier for UI display
  @BuiltValueField(wireName: r'icon')
  String get icon;

  /// Onboarding product category (coarse grouping derived from assetSubClass)
  @BuiltValueField(wireName: r'productCategory')
  AccountStandardResponseDtoProductCategoryEnum get productCategory;
  // enum productCategoryEnum {  cash,  investment,  credit_card,  loan,  payable_tax,  other,  };

  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueField(wireName: r'assetClass')
  AccountStandardResponseDtoAssetClassEnum? get assetClass;
  // enum assetClassEnum {  LIQUIDITY,  EQUITY,  FIXED_INCOME,  PRECIOUS_METALS,  COMMODITY,  INSURANCE,  ALTERNATIVE_INVESTMENT,  PERSONAL_ASSETS,  LIABILITY,  REAL_ESTATE,  INDEX,  };

  /// Asset sub-class (product type, derived at read time from classification rules)
  @BuiltValueField(wireName: r'assetSubClass')
  String? get assetSubClass;

  AccountStandardResponseDto._();

  factory AccountStandardResponseDto([void updates(AccountStandardResponseDtoBuilder b)]) = _$AccountStandardResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountStandardResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountStandardResponseDto> get serializer => _$AccountStandardResponseDtoSerializer();
}

class _$AccountStandardResponseDtoSerializer implements PrimitiveSerializer<AccountStandardResponseDto> {
  @override
  final Iterable<Type> types = const [AccountStandardResponseDto, _$AccountStandardResponseDto];

  @override
  final String wireName = r'AccountStandardResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountStandardResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AccountStandardResponseDtoTypeEnum),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.aliases != null) {
      yield r'aliases';
      yield serializers.serialize(
        object.aliases,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.searchTerms != null) {
      yield r'searchTerms';
      yield serializers.serialize(
        object.searchTerms,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'tags';
    yield serializers.serialize(
      object.tags,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'productCategory';
    yield serializers.serialize(
      object.productCategory,
      specifiedType: const FullType(AccountStandardResponseDtoProductCategoryEnum),
    );
    if (object.assetClass != null) {
      yield r'assetClass';
      yield serializers.serialize(
        object.assetClass,
        specifiedType: const FullType(AccountStandardResponseDtoAssetClassEnum),
      );
    }
    if (object.assetSubClass != null) {
      yield r'assetSubClass';
      yield serializers.serialize(
        object.assetSubClass,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountStandardResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountStandardResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(AccountStandardResponseDtoTypeEnum),
          ) as AccountStandardResponseDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'aliases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.aliases.replace(valueDes);
          break;
        case r'searchTerms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.searchTerms.replace(valueDes);
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'productCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountStandardResponseDtoProductCategoryEnum),
          ) as AccountStandardResponseDtoProductCategoryEnum;
          result.productCategory = valueDes;
          break;
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountStandardResponseDtoAssetClassEnum),
          ) as AccountStandardResponseDtoAssetClassEnum;
          result.assetClass = valueDes;
          break;
        case r'assetSubClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assetSubClass = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountStandardResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountStandardResponseDtoBuilder();
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

class AccountStandardResponseDtoTypeEnum extends EnumClass {

  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Assets')
  static const AccountStandardResponseDtoTypeEnum assets = _$accountStandardResponseDtoTypeEnum_assets;
  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Liabilities')
  static const AccountStandardResponseDtoTypeEnum liabilities = _$accountStandardResponseDtoTypeEnum_liabilities;
  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Income')
  static const AccountStandardResponseDtoTypeEnum income = _$accountStandardResponseDtoTypeEnum_income;
  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Expenses')
  static const AccountStandardResponseDtoTypeEnum expenses = _$accountStandardResponseDtoTypeEnum_expenses;
  /// Account type in Beancount hierarchy
  @BuiltValueEnumConst(wireName: r'Equity')
  static const AccountStandardResponseDtoTypeEnum equity = _$accountStandardResponseDtoTypeEnum_equity;

  static Serializer<AccountStandardResponseDtoTypeEnum> get serializer => _$accountStandardResponseDtoTypeEnumSerializer;

  const AccountStandardResponseDtoTypeEnum._(String name): super(name);

  static BuiltSet<AccountStandardResponseDtoTypeEnum> get values => _$accountStandardResponseDtoTypeEnumValues;
  static AccountStandardResponseDtoTypeEnum valueOf(String name) => _$accountStandardResponseDtoTypeEnumValueOf(name);
}

class AccountStandardResponseDtoProductCategoryEnum extends EnumClass {

  /// Onboarding product category (coarse grouping derived from assetSubClass)
  @BuiltValueEnumConst(wireName: r'cash')
  static const AccountStandardResponseDtoProductCategoryEnum cash = _$accountStandardResponseDtoProductCategoryEnum_cash;
  /// Onboarding product category (coarse grouping derived from assetSubClass)
  @BuiltValueEnumConst(wireName: r'investment')
  static const AccountStandardResponseDtoProductCategoryEnum investment = _$accountStandardResponseDtoProductCategoryEnum_investment;
  /// Onboarding product category (coarse grouping derived from assetSubClass)
  @BuiltValueEnumConst(wireName: r'credit_card')
  static const AccountStandardResponseDtoProductCategoryEnum creditCard = _$accountStandardResponseDtoProductCategoryEnum_creditCard;
  /// Onboarding product category (coarse grouping derived from assetSubClass)
  @BuiltValueEnumConst(wireName: r'loan')
  static const AccountStandardResponseDtoProductCategoryEnum loan = _$accountStandardResponseDtoProductCategoryEnum_loan;
  /// Onboarding product category (coarse grouping derived from assetSubClass)
  @BuiltValueEnumConst(wireName: r'payable_tax')
  static const AccountStandardResponseDtoProductCategoryEnum payableTax = _$accountStandardResponseDtoProductCategoryEnum_payableTax;
  /// Onboarding product category (coarse grouping derived from assetSubClass)
  @BuiltValueEnumConst(wireName: r'other')
  static const AccountStandardResponseDtoProductCategoryEnum other = _$accountStandardResponseDtoProductCategoryEnum_other;

  static Serializer<AccountStandardResponseDtoProductCategoryEnum> get serializer => _$accountStandardResponseDtoProductCategoryEnumSerializer;

  const AccountStandardResponseDtoProductCategoryEnum._(String name): super(name);

  static BuiltSet<AccountStandardResponseDtoProductCategoryEnum> get values => _$accountStandardResponseDtoProductCategoryEnumValues;
  static AccountStandardResponseDtoProductCategoryEnum valueOf(String name) => _$accountStandardResponseDtoProductCategoryEnumValueOf(name);
}

class AccountStandardResponseDtoAssetClassEnum extends EnumClass {

  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'LIQUIDITY')
  static const AccountStandardResponseDtoAssetClassEnum LIQUIDITY = _$accountStandardResponseDtoAssetClassEnum_LIQUIDITY;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'EQUITY')
  static const AccountStandardResponseDtoAssetClassEnum EQUITY = _$accountStandardResponseDtoAssetClassEnum_EQUITY;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'FIXED_INCOME')
  static const AccountStandardResponseDtoAssetClassEnum FIXED_INCOME = _$accountStandardResponseDtoAssetClassEnum_FIXED_INCOME;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'PRECIOUS_METALS')
  static const AccountStandardResponseDtoAssetClassEnum PRECIOUS_METALS = _$accountStandardResponseDtoAssetClassEnum_PRECIOUS_METALS;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'COMMODITY')
  static const AccountStandardResponseDtoAssetClassEnum COMMODITY = _$accountStandardResponseDtoAssetClassEnum_COMMODITY;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const AccountStandardResponseDtoAssetClassEnum INSURANCE = _$accountStandardResponseDtoAssetClassEnum_INSURANCE;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'ALTERNATIVE_INVESTMENT')
  static const AccountStandardResponseDtoAssetClassEnum ALTERNATIVE_INVESTMENT = _$accountStandardResponseDtoAssetClassEnum_ALTERNATIVE_INVESTMENT;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'PERSONAL_ASSETS')
  static const AccountStandardResponseDtoAssetClassEnum PERSONAL_ASSETS = _$accountStandardResponseDtoAssetClassEnum_PERSONAL_ASSETS;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'LIABILITY')
  static const AccountStandardResponseDtoAssetClassEnum LIABILITY = _$accountStandardResponseDtoAssetClassEnum_LIABILITY;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'REAL_ESTATE')
  static const AccountStandardResponseDtoAssetClassEnum REAL_ESTATE = _$accountStandardResponseDtoAssetClassEnum_REAL_ESTATE;
  /// Asset class (LIQUIDITY/EQUITY/.../LIABILITY), derived at read time from classification rules
  @BuiltValueEnumConst(wireName: r'INDEX')
  static const AccountStandardResponseDtoAssetClassEnum INDEX = _$accountStandardResponseDtoAssetClassEnum_INDEX;

  static Serializer<AccountStandardResponseDtoAssetClassEnum> get serializer => _$accountStandardResponseDtoAssetClassEnumSerializer;

  const AccountStandardResponseDtoAssetClassEnum._(String name): super(name);

  static BuiltSet<AccountStandardResponseDtoAssetClassEnum> get values => _$accountStandardResponseDtoAssetClassEnumValues;
  static AccountStandardResponseDtoAssetClassEnum valueOf(String name) => _$accountStandardResponseDtoAssetClassEnumValueOf(name);
}

