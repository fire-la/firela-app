//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_import_controller_identify_file400_response.g.dart';

/// FileImportControllerIdentifyFile400Response
///
/// Properties:
/// * [type]
/// * [title]
/// * [status]
/// * [detail]
/// * [endpoint]
@BuiltValue()
abstract class FileImportControllerIdentifyFile400Response
    implements
        Built<FileImportControllerIdentifyFile400Response,
            FileImportControllerIdentifyFile400ResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'status')
  num? get status;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  FileImportControllerIdentifyFile400Response._();

  factory FileImportControllerIdentifyFile400Response(
          [void updates(
              FileImportControllerIdentifyFile400ResponseBuilder b)]) =
      _$FileImportControllerIdentifyFile400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileImportControllerIdentifyFile400ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileImportControllerIdentifyFile400Response>
      get serializer =>
          _$FileImportControllerIdentifyFile400ResponseSerializer();
}

class _$FileImportControllerIdentifyFile400ResponseSerializer
    implements
        PrimitiveSerializer<FileImportControllerIdentifyFile400Response> {
  @override
  final Iterable<Type> types = const [
    FileImportControllerIdentifyFile400Response,
    _$FileImportControllerIdentifyFile400Response
  ];

  @override
  final String wireName = r'FileImportControllerIdentifyFile400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileImportControllerIdentifyFile400Response object, {
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
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileImportControllerIdentifyFile400Response object, {
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
    required FileImportControllerIdentifyFile400ResponseBuilder result,
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
        case r'endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endpoint = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileImportControllerIdentifyFile400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileImportControllerIdentifyFile400ResponseBuilder();
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
