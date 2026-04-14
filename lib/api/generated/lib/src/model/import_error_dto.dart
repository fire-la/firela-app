//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_error_dto.g.dart';

/// ImportErrorDto
///
/// Properties:
/// * [index] - Index of failed transaction in the file
/// * [error] - Error message
@BuiltValue()
abstract class ImportErrorDto
    implements Built<ImportErrorDto, ImportErrorDtoBuilder> {
  /// Index of failed transaction in the file
  @BuiltValueField(wireName: r'index')
  num get index;

  /// Error message
  @BuiltValueField(wireName: r'error')
  String get error;

  ImportErrorDto._();

  factory ImportErrorDto([void updates(ImportErrorDtoBuilder b)]) =
      _$ImportErrorDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportErrorDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportErrorDto> get serializer =>
      _$ImportErrorDtoSerializer();
}

class _$ImportErrorDtoSerializer
    implements PrimitiveSerializer<ImportErrorDto> {
  @override
  final Iterable<Type> types = const [ImportErrorDto, _$ImportErrorDto];

  @override
  final String wireName = r'ImportErrorDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportErrorDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(num),
    );
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportErrorDto object, {
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
    required ImportErrorDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.index = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportErrorDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportErrorDtoBuilder();
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
