//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_property_dto.g.dart';

/// UpdatePropertyDto
///
/// Properties:
/// * [value] - Property value
@BuiltValue()
abstract class UpdatePropertyDto implements Built<UpdatePropertyDto, UpdatePropertyDtoBuilder> {
  /// Property value
  @BuiltValueField(wireName: r'value')
  String get value;

  UpdatePropertyDto._();

  factory UpdatePropertyDto([void updates(UpdatePropertyDtoBuilder b)]) = _$UpdatePropertyDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePropertyDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePropertyDto> get serializer => _$UpdatePropertyDtoSerializer();
}

class _$UpdatePropertyDtoSerializer implements PrimitiveSerializer<UpdatePropertyDto> {
  @override
  final Iterable<Type> types = const [UpdatePropertyDto, _$UpdatePropertyDto];

  @override
  final String wireName = r'UpdatePropertyDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePropertyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePropertyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdatePropertyDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePropertyDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePropertyDtoBuilder();
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

