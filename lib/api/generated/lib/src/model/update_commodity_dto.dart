//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_commodity_dto.g.dart';

/// UpdateCommodityDto
///
/// Properties:
/// * [date] - Commodity definition date (ISO 8601). Represents when this commodity was first defined in the accounting system.
/// * [metadata] - Metadata (corresponds to Beancount meta field). Will merge with existing metadata. Can contain name, assetClass, precision, note, tags, etc.
@BuiltValue()
abstract class UpdateCommodityDto implements Built<UpdateCommodityDto, UpdateCommodityDtoBuilder> {
  /// Commodity definition date (ISO 8601). Represents when this commodity was first defined in the accounting system.
  @BuiltValueField(wireName: r'date')
  Date? get date;

  /// Metadata (corresponds to Beancount meta field). Will merge with existing metadata. Can contain name, assetClass, precision, note, tags, etc.
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  UpdateCommodityDto._();

  factory UpdateCommodityDto([void updates(UpdateCommodityDtoBuilder b)]) = _$UpdateCommodityDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCommodityDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCommodityDto> get serializer => _$UpdateCommodityDtoSerializer();
}

class _$UpdateCommodityDtoSerializer implements PrimitiveSerializer<UpdateCommodityDto> {
  @override
  final Iterable<Type> types = const [UpdateCommodityDto, _$UpdateCommodityDto];

  @override
  final String wireName = r'UpdateCommodityDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCommodityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
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
    UpdateCommodityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCommodityDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UpdateCommodityDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCommodityDtoBuilder();
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

