//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_import_controller_import_file429_response.g.dart';

/// FileImportControllerImportFile429Response
///
/// Properties:
/// * [type]
/// * [title]
/// * [status]
/// * [detail]
/// * [activeImportCount]
/// * [maxConcurrent]
@BuiltValue()
abstract class FileImportControllerImportFile429Response
    implements
        Built<FileImportControllerImportFile429Response,
            FileImportControllerImportFile429ResponseBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'status')
  num? get status;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'activeImportCount')
  num? get activeImportCount;

  @BuiltValueField(wireName: r'maxConcurrent')
  num? get maxConcurrent;

  FileImportControllerImportFile429Response._();

  factory FileImportControllerImportFile429Response(
          [void updates(FileImportControllerImportFile429ResponseBuilder b)]) =
      _$FileImportControllerImportFile429Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileImportControllerImportFile429ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileImportControllerImportFile429Response> get serializer =>
      _$FileImportControllerImportFile429ResponseSerializer();
}

class _$FileImportControllerImportFile429ResponseSerializer
    implements PrimitiveSerializer<FileImportControllerImportFile429Response> {
  @override
  final Iterable<Type> types = const [
    FileImportControllerImportFile429Response,
    _$FileImportControllerImportFile429Response
  ];

  @override
  final String wireName = r'FileImportControllerImportFile429Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileImportControllerImportFile429Response object, {
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
    if (object.activeImportCount != null) {
      yield r'activeImportCount';
      yield serializers.serialize(
        object.activeImportCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxConcurrent != null) {
      yield r'maxConcurrent';
      yield serializers.serialize(
        object.maxConcurrent,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileImportControllerImportFile429Response object, {
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
    required FileImportControllerImportFile429ResponseBuilder result,
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
        case r'activeImportCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.activeImportCount = valueDes;
          break;
        case r'maxConcurrent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxConcurrent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileImportControllerImportFile429Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileImportControllerImportFile429ResponseBuilder();
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
