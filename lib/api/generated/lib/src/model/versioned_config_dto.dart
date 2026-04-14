//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/importer_config_data_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'versioned_config_dto.g.dart';

/// VersionedConfigDto
///
/// Properties:
/// * [version] - Configuration version (semver)
/// * [schema] - Configuration schema identifier
/// * [data]
@BuiltValue()
abstract class VersionedConfigDto
    implements Built<VersionedConfigDto, VersionedConfigDtoBuilder> {
  /// Configuration version (semver)
  @BuiltValueField(wireName: r'version')
  String get version;

  /// Configuration schema identifier
  @BuiltValueField(wireName: r'schema')
  String get schema;

  @BuiltValueField(wireName: r'data')
  ImporterConfigDataDto get data;

  VersionedConfigDto._();

  factory VersionedConfigDto([void updates(VersionedConfigDtoBuilder b)]) =
      _$VersionedConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VersionedConfigDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VersionedConfigDto> get serializer =>
      _$VersionedConfigDtoSerializer();
}

class _$VersionedConfigDtoSerializer
    implements PrimitiveSerializer<VersionedConfigDto> {
  @override
  final Iterable<Type> types = const [VersionedConfigDto, _$VersionedConfigDto];

  @override
  final String wireName = r'VersionedConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VersionedConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'schema';
    yield serializers.serialize(
      object.schema,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(ImporterConfigDataDto),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionedConfigDto object, {
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
    required VersionedConfigDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schema = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImporterConfigDataDto),
          ) as ImporterConfigDataDto;
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
  VersionedConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VersionedConfigDtoBuilder();
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
