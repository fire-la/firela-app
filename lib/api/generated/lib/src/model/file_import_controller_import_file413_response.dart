//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_import_controller_import_file413_response.g.dart';

/// FileImportControllerImportFile413Response
///
/// Properties:
/// * [type]
/// * [title]
/// * [status]
/// * [detail]
/// * [maxSize]
/// * [filename]
@BuiltValue()
abstract class FileImportControllerImportFile413Response
    implements
        Built<FileImportControllerImportFile413Response,
            FileImportControllerImportFile413ResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'status')
  num? get status;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'maxSize')
  num? get maxSize;

  @BuiltValueField(wireName: r'filename')
  String? get filename;

  FileImportControllerImportFile413Response._();

  factory FileImportControllerImportFile413Response(
          [void updates(FileImportControllerImportFile413ResponseBuilder b)]) =
      _$FileImportControllerImportFile413Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileImportControllerImportFile413ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileImportControllerImportFile413Response> get serializer =>
      _$FileImportControllerImportFile413ResponseSerializer();
}

class _$FileImportControllerImportFile413ResponseSerializer
    implements PrimitiveSerializer<FileImportControllerImportFile413Response> {
  @override
  final Iterable<Type> types = const [
    FileImportControllerImportFile413Response,
    _$FileImportControllerImportFile413Response
  ];

  @override
  final String wireName = r'FileImportControllerImportFile413Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileImportControllerImportFile413Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(num),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxSize != null) {
      yield r'maxSize';
      yield serializers.serialize(
        object.maxSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.filename != null) {
      yield r'filename';
      yield serializers.serialize(
        object.filename,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileImportControllerImportFile413Response object, {
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
    required FileImportControllerImportFile413ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.status = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detail = valueDes;
          break;
        case r'maxSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSize = valueDes;
          break;
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileImportControllerImportFile413Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileImportControllerImportFile413ResponseBuilder();
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
