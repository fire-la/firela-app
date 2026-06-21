//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/update_config_data_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_importer_config_dto.g.dart';

/// UpdateImporterConfigDto
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class UpdateImporterConfigDto implements Built<UpdateImporterConfigDto, UpdateImporterConfigDtoBuilder> {
  @BuiltValueField(wireName: r'data')
  UpdateConfigDataDto? get data;

  UpdateImporterConfigDto._();

  factory UpdateImporterConfigDto([void updates(UpdateImporterConfigDtoBuilder b)]) = _$UpdateImporterConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateImporterConfigDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateImporterConfigDto> get serializer => _$UpdateImporterConfigDtoSerializer();
}

class _$UpdateImporterConfigDtoSerializer implements PrimitiveSerializer<UpdateImporterConfigDto> {
  @override
  final Iterable<Type> types = const [UpdateImporterConfigDto, _$UpdateImporterConfigDto];

  @override
  final String wireName = r'UpdateImporterConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateImporterConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(UpdateConfigDataDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateImporterConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateImporterConfigDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateConfigDataDto),
          ) as UpdateConfigDataDto;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateImporterConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateImporterConfigDtoBuilder();
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

