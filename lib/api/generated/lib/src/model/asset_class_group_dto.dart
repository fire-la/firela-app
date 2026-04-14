//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/balance_by_currency_dto.dart';
import 'package:firela_api/src/model/account_item_with_asset_class_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_class_group_dto.g.dart';

/// AssetClassGroupDto
///
/// Properties:
/// * [assetClass] - Asset class name
/// * [accounts] - Accounts within this asset class
/// * [balanceByCurrency] - Balances grouped by currency
/// * [assetSubClass] - Asset sub-class name
/// * [convertedBalance] - Converted balance in base currency
@BuiltValue()
abstract class AssetClassGroupDto
    implements Built<AssetClassGroupDto, AssetClassGroupDtoBuilder> {
  /// Asset class name
  @BuiltValueField(wireName: r'assetClass')
  AssetClassGroupDtoAssetClassEnum get assetClass;
  // enum assetClassEnum {  LIQUIDITY,  EQUITY,  FIXED_INCOME,  PRECIOUS_METALS,  COMMODITY,  INSURANCE,  ALTERNATIVE_INVESTMENT,  PERSONAL_ASSETS,  LIABILITY,  REAL_ESTATE,  INDEX,  };

  /// Accounts within this asset class
  @BuiltValueField(wireName: r'accounts')
  BuiltList<AccountItemWithAssetClassDto> get accounts;

  /// Balances grouped by currency
  @BuiltValueField(wireName: r'balanceByCurrency')
  BuiltList<BalanceByCurrencyDto> get balanceByCurrency;

  /// Asset sub-class name
  @BuiltValueField(wireName: r'assetSubClass')
  String? get assetSubClass;

  /// Converted balance in base currency
  @BuiltValueField(wireName: r'convertedBalance')
  String? get convertedBalance;

  AssetClassGroupDto._();

  factory AssetClassGroupDto([void updates(AssetClassGroupDtoBuilder b)]) =
      _$AssetClassGroupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetClassGroupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetClassGroupDto> get serializer =>
      _$AssetClassGroupDtoSerializer();
}

class _$AssetClassGroupDtoSerializer
    implements PrimitiveSerializer<AssetClassGroupDto> {
  @override
  final Iterable<Type> types = const [AssetClassGroupDto, _$AssetClassGroupDto];

  @override
  final String wireName = r'AssetClassGroupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetClassGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(AssetClassGroupDtoAssetClassEnum),
    );
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType:
          const FullType(BuiltList, [FullType(AccountItemWithAssetClassDto)]),
    );
    yield r'balanceByCurrency';
    yield serializers.serialize(
      object.balanceByCurrency,
      specifiedType:
          const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    if (object.assetSubClass != null) {
      yield r'assetSubClass';
      yield serializers.serialize(
        object.assetSubClass,
        specifiedType: const FullType(String),
      );
    }
    if (object.convertedBalance != null) {
      yield r'convertedBalance';
      yield serializers.serialize(
        object.convertedBalance,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetClassGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssetClassGroupDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssetClassGroupDtoAssetClassEnum),
          ) as AssetClassGroupDtoAssetClassEnum;
          result.assetClass = valueDes;
          break;
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(AccountItemWithAssetClassDto)]),
          ) as BuiltList<AccountItemWithAssetClassDto>;
          result.accounts.replace(valueDes);
          break;
        case r'balanceByCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.balanceByCurrency.replace(valueDes);
          break;
        case r'assetSubClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assetSubClass = valueDes;
          break;
        case r'convertedBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.convertedBalance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssetClassGroupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetClassGroupDtoBuilder();
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

class AssetClassGroupDtoAssetClassEnum extends EnumClass {
  /// Asset class name
  @BuiltValueEnumConst(wireName: r'LIQUIDITY')
  static const AssetClassGroupDtoAssetClassEnum LIQUIDITY =
      _$assetClassGroupDtoAssetClassEnum_LIQUIDITY;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'EQUITY')
  static const AssetClassGroupDtoAssetClassEnum EQUITY =
      _$assetClassGroupDtoAssetClassEnum_EQUITY;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'FIXED_INCOME')
  static const AssetClassGroupDtoAssetClassEnum FIXED_INCOME =
      _$assetClassGroupDtoAssetClassEnum_FIXED_INCOME;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'PRECIOUS_METALS')
  static const AssetClassGroupDtoAssetClassEnum PRECIOUS_METALS =
      _$assetClassGroupDtoAssetClassEnum_PRECIOUS_METALS;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'COMMODITY')
  static const AssetClassGroupDtoAssetClassEnum COMMODITY =
      _$assetClassGroupDtoAssetClassEnum_COMMODITY;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'INSURANCE')
  static const AssetClassGroupDtoAssetClassEnum INSURANCE =
      _$assetClassGroupDtoAssetClassEnum_INSURANCE;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'ALTERNATIVE_INVESTMENT')
  static const AssetClassGroupDtoAssetClassEnum ALTERNATIVE_INVESTMENT =
      _$assetClassGroupDtoAssetClassEnum_ALTERNATIVE_INVESTMENT;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'PERSONAL_ASSETS')
  static const AssetClassGroupDtoAssetClassEnum PERSONAL_ASSETS =
      _$assetClassGroupDtoAssetClassEnum_PERSONAL_ASSETS;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'LIABILITY')
  static const AssetClassGroupDtoAssetClassEnum LIABILITY =
      _$assetClassGroupDtoAssetClassEnum_LIABILITY;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'REAL_ESTATE')
  static const AssetClassGroupDtoAssetClassEnum REAL_ESTATE =
      _$assetClassGroupDtoAssetClassEnum_REAL_ESTATE;

  /// Asset class name
  @BuiltValueEnumConst(wireName: r'INDEX', fallback: true)
  static const AssetClassGroupDtoAssetClassEnum INDEX =
      _$assetClassGroupDtoAssetClassEnum_INDEX;

  static Serializer<AssetClassGroupDtoAssetClassEnum> get serializer =>
      _$assetClassGroupDtoAssetClassEnumSerializer;

  const AssetClassGroupDtoAssetClassEnum._(String name) : super(name);

  static BuiltSet<AssetClassGroupDtoAssetClassEnum> get values =>
      _$assetClassGroupDtoAssetClassEnumValues;
  static AssetClassGroupDtoAssetClassEnum valueOf(String name) =>
      _$assetClassGroupDtoAssetClassEnumValueOf(name);
}
