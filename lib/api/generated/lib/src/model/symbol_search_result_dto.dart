//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'symbol_search_result_dto.g.dart';

/// SymbolSearchResultDto
///
/// Properties:
/// * [symbol] 
/// * [name] 
/// * [exchange] 
/// * [assetType] - OpenBB asset_type (e.g. stock, etf)
/// * [assetClass] - IGN asset class (region.types.ts ASSET_CLASSES)
/// * [assetSubClass] - IGN asset sub-class (region.types.ts ASSET_SUB_CLASSES)
/// * [currency] - Trading currency (extra_data or inferred from exchange)
@BuiltValue()
abstract class SymbolSearchResultDto implements Built<SymbolSearchResultDto, SymbolSearchResultDtoBuilder> {
  @BuiltValueField(wireName: r'symbol')
  String get symbol;

  @BuiltValueField(wireName: r'name')
  JsonObject? get name;

  @BuiltValueField(wireName: r'exchange')
  JsonObject? get exchange;

  /// OpenBB asset_type (e.g. stock, etf)
  @BuiltValueField(wireName: r'assetType')
  JsonObject? get assetType;

  /// IGN asset class (region.types.ts ASSET_CLASSES)
  @BuiltValueField(wireName: r'assetClass')
  JsonObject? get assetClass;

  /// IGN asset sub-class (region.types.ts ASSET_SUB_CLASSES)
  @BuiltValueField(wireName: r'assetSubClass')
  JsonObject? get assetSubClass;

  /// Trading currency (extra_data or inferred from exchange)
  @BuiltValueField(wireName: r'currency')
  JsonObject? get currency;

  SymbolSearchResultDto._();

  factory SymbolSearchResultDto([void updates(SymbolSearchResultDtoBuilder b)]) = _$SymbolSearchResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SymbolSearchResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SymbolSearchResultDto> get serializer => _$SymbolSearchResultDtoSerializer();
}

class _$SymbolSearchResultDtoSerializer implements PrimitiveSerializer<SymbolSearchResultDto> {
  @override
  final Iterable<Type> types = const [SymbolSearchResultDto, _$SymbolSearchResultDto];

  @override
  final String wireName = r'SymbolSearchResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SymbolSearchResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'symbol';
    yield serializers.serialize(
      object.symbol,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.exchange != null) {
      yield r'exchange';
      yield serializers.serialize(
        object.exchange,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.assetType != null) {
      yield r'assetType';
      yield serializers.serialize(
        object.assetType,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.assetClass != null) {
      yield r'assetClass';
      yield serializers.serialize(
        object.assetClass,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.assetSubClass != null) {
      yield r'assetSubClass';
      yield serializers.serialize(
        object.assetSubClass,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SymbolSearchResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SymbolSearchResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbol = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.exchange = valueDes;
          break;
        case r'assetType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.assetType = valueDes;
          break;
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.assetClass = valueDes;
          break;
        case r'assetSubClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.assetSubClass = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.currency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SymbolSearchResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SymbolSearchResultDtoBuilder();
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

