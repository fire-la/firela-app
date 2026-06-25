//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/update_mapper_defaults_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_config_data_dto.g.dart';

/// UpdateConfigDataDto
///
/// Properties:
/// * [defaults] 
@BuiltValue()
abstract class UpdateConfigDataDto implements Built<UpdateConfigDataDto, UpdateConfigDataDtoBuilder> {
  @BuiltValueField(wireName: r'defaults')
  UpdateMapperDefaultsDto? get defaults;

  UpdateConfigDataDto._();

  factory UpdateConfigDataDto([void updates(UpdateConfigDataDtoBuilder b)]) = _$UpdateConfigDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateConfigDataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateConfigDataDto> get serializer => _$UpdateConfigDataDtoSerializer();
}

class _$UpdateConfigDataDtoSerializer implements PrimitiveSerializer<UpdateConfigDataDto> {
  @override
  final Iterable<Type> types = const [UpdateConfigDataDto, _$UpdateConfigDataDto];

  @override
  final String wireName = r'UpdateConfigDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateConfigDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaults != null) {
      yield r'defaults';
      yield serializers.serialize(
        object.defaults,
        specifiedType: const FullType(UpdateMapperDefaultsDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateConfigDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateConfigDataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaults':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateMapperDefaultsDto),
          ) as UpdateMapperDefaultsDto;
          result.defaults.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateConfigDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateConfigDataDtoBuilder();
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

