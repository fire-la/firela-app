//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_commodity_dto.g.dart';

/// CreateCommodityDto
///
/// Properties:
/// * [symbol] - Commodity symbol (e.g., AAPL, USD, BTC) - corresponds to Beancount currency field
/// * [date] - Commodity definition date (ISO 8601, required per Beancount spec). Represents when this commodity was first defined in the accounting system.
/// * [metadata] - Metadata (corresponds to Beancount meta field). Can contain name, assetClass, precision, note, tags, etc.
@BuiltValue()
abstract class CreateCommodityDto implements Built<CreateCommodityDto, CreateCommodityDtoBuilder> {
  /// Commodity symbol (e.g., AAPL, USD, BTC) - corresponds to Beancount currency field
  @BuiltValueField(wireName: r'symbol')
  String get symbol;

  /// Commodity definition date (ISO 8601, required per Beancount spec). Represents when this commodity was first defined in the accounting system.
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Metadata (corresponds to Beancount meta field). Can contain name, assetClass, precision, note, tags, etc.
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  CreateCommodityDto._();

  factory CreateCommodityDto([void updates(CreateCommodityDtoBuilder b)]) = _$CreateCommodityDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCommodityDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCommodityDto> get serializer => _$CreateCommodityDtoSerializer();
}

class _$CreateCommodityDtoSerializer implements PrimitiveSerializer<CreateCommodityDto> {
  @override
  final Iterable<Type> types = const [CreateCommodityDto, _$CreateCommodityDto];

  @override
  final String wireName = r'CreateCommodityDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCommodityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'symbol';
    yield serializers.serialize(
      object.symbol,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCommodityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCommodityDtoBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateCommodityDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCommodityDtoBuilder();
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

