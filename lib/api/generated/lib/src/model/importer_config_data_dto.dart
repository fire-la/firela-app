//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/mapper_defaults_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'importer_config_data_dto.g.dart';

/// ImporterConfigDataDto
///
/// Properties:
/// * [defaults]
@BuiltValue()
abstract class ImporterConfigDataDto
    implements Built<ImporterConfigDataDto, ImporterConfigDataDtoBuilder> {
  @BuiltValueField(wireName: r'defaults')
  MapperDefaultsDto get defaults;

  ImporterConfigDataDto._();

  factory ImporterConfigDataDto(
      [void updates(ImporterConfigDataDtoBuilder b)]) = _$ImporterConfigDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImporterConfigDataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImporterConfigDataDto> get serializer =>
      _$ImporterConfigDataDtoSerializer();
}

class _$ImporterConfigDataDtoSerializer
    implements PrimitiveSerializer<ImporterConfigDataDto> {
  @override
  final Iterable<Type> types = const [
    ImporterConfigDataDto,
    _$ImporterConfigDataDto
  ];

  @override
  final String wireName = r'ImporterConfigDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImporterConfigDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'defaults';
    yield serializers.serialize(
      object.defaults,
      specifiedType: const FullType(MapperDefaultsDto),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImporterConfigDataDto object, {
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
    required ImporterConfigDataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaults':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MapperDefaultsDto),
          ) as MapperDefaultsDto;
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
  ImporterConfigDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImporterConfigDataDtoBuilder();
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
