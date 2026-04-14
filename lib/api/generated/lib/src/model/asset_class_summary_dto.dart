//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/account_exchange_rate_warning_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_class_summary_dto.g.dart';

/// AssetClassSummaryDto
///
/// Properties:
/// * [totalAccounts] - Total number of accounts
/// * [totalAssetClasses] - Total number of asset classes
/// * [baseCurrency] - Base currency for conversion
/// * [warnings] - Exchange rate warnings
@BuiltValue()
abstract class AssetClassSummaryDto
    implements Built<AssetClassSummaryDto, AssetClassSummaryDtoBuilder> {
  /// Total number of accounts
  @BuiltValueField(wireName: r'totalAccounts')
  num get totalAccounts;

  /// Total number of asset classes
  @BuiltValueField(wireName: r'totalAssetClasses')
  num get totalAssetClasses;

  /// Base currency for conversion
  @BuiltValueField(wireName: r'baseCurrency')
  String get baseCurrency;

  /// Exchange rate warnings
  @BuiltValueField(wireName: r'warnings')
  BuiltList<AccountExchangeRateWarningDto>? get warnings;

  AssetClassSummaryDto._();

  factory AssetClassSummaryDto([void updates(AssetClassSummaryDtoBuilder b)]) =
      _$AssetClassSummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetClassSummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetClassSummaryDto> get serializer =>
      _$AssetClassSummaryDtoSerializer();
}

class _$AssetClassSummaryDtoSerializer
    implements PrimitiveSerializer<AssetClassSummaryDto> {
  @override
  final Iterable<Type> types = const [
    AssetClassSummaryDto,
    _$AssetClassSummaryDto
  ];

  @override
  final String wireName = r'AssetClassSummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetClassSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totalAccounts';
    yield serializers.serialize(
      object.totalAccounts,
      specifiedType: const FullType(num),
    );
    yield r'totalAssetClasses';
    yield serializers.serialize(
      object.totalAssetClasses,
      specifiedType: const FullType(num),
    );
    yield r'baseCurrency';
    yield serializers.serialize(
      object.baseCurrency,
      specifiedType: const FullType(String),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(
            BuiltList, [FullType(AccountExchangeRateWarningDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetClassSummaryDto object, {
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
    required AssetClassSummaryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalAccounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalAccounts = valueDes;
          break;
        case r'totalAssetClasses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalAssetClasses = valueDes;
          break;
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(AccountExchangeRateWarningDto)]),
          ) as BuiltList<AccountExchangeRateWarningDto>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssetClassSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetClassSummaryDtoBuilder();
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
