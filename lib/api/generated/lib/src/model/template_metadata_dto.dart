//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_metadata_dto.g.dart';

/// TemplateMetadataDto
///
/// Properties:
/// * [extendable] - Whether this path can be extended
/// * [rootType] - Root account type
@BuiltValue()
abstract class TemplateMetadataDto implements Built<TemplateMetadataDto, TemplateMetadataDtoBuilder> {
  /// Whether this path can be extended
  @BuiltValueField(wireName: r'extendable')
  bool get extendable;

  /// Root account type
  @BuiltValueField(wireName: r'rootType')
  String get rootType;

  TemplateMetadataDto._();

  factory TemplateMetadataDto([void updates(TemplateMetadataDtoBuilder b)]) = _$TemplateMetadataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateMetadataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateMetadataDto> get serializer => _$TemplateMetadataDtoSerializer();
}

class _$TemplateMetadataDtoSerializer implements PrimitiveSerializer<TemplateMetadataDto> {
  @override
  final Iterable<Type> types = const [TemplateMetadataDto, _$TemplateMetadataDto];

  @override
  final String wireName = r'TemplateMetadataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateMetadataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'extendable';
    yield serializers.serialize(
      object.extendable,
      specifiedType: const FullType(bool),
    );
    yield r'rootType';
    yield serializers.serialize(
      object.rootType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateMetadataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateMetadataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'extendable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.extendable = valueDes;
          break;
        case r'rootType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rootType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateMetadataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateMetadataDtoBuilder();
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

