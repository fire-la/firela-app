//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_import_controller_import_beancount200_response.g.dart';

/// FileImportControllerImportBeancount200Response
///
/// Properties:
/// * [imported] 
/// * [skipped] 
/// * [failed] 
/// * [accountsCreated] 
/// * [errors] 
@BuiltValue()
abstract class FileImportControllerImportBeancount200Response implements Built<FileImportControllerImportBeancount200Response, FileImportControllerImportBeancount200ResponseBuilder> {
  @BuiltValueField(wireName: r'imported')
  num? get imported;

  @BuiltValueField(wireName: r'skipped')
  num? get skipped;

  @BuiltValueField(wireName: r'failed')
  num? get failed;

  @BuiltValueField(wireName: r'accountsCreated')
  num? get accountsCreated;

  @BuiltValueField(wireName: r'errors')
  BuiltList<JsonObject>? get errors;

  FileImportControllerImportBeancount200Response._();

  factory FileImportControllerImportBeancount200Response([void updates(FileImportControllerImportBeancount200ResponseBuilder b)]) = _$FileImportControllerImportBeancount200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileImportControllerImportBeancount200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileImportControllerImportBeancount200Response> get serializer => _$FileImportControllerImportBeancount200ResponseSerializer();
}

class _$FileImportControllerImportBeancount200ResponseSerializer implements PrimitiveSerializer<FileImportControllerImportBeancount200Response> {
  @override
  final Iterable<Type> types = const [FileImportControllerImportBeancount200Response, _$FileImportControllerImportBeancount200Response];

  @override
  final String wireName = r'FileImportControllerImportBeancount200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileImportControllerImportBeancount200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.imported != null) {
      yield r'imported';
      yield serializers.serialize(
        object.imported,
        specifiedType: const FullType(num),
      );
    }
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(num),
      );
    }
    if (object.failed != null) {
      yield r'failed';
      yield serializers.serialize(
        object.failed,
        specifiedType: const FullType(num),
      );
    }
    if (object.accountsCreated != null) {
      yield r'accountsCreated';
      yield serializers.serialize(
        object.accountsCreated,
        specifiedType: const FullType(num),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileImportControllerImportBeancount200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileImportControllerImportBeancount200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.imported = valueDes;
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.skipped = valueDes;
          break;
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.failed = valueDes;
          break;
        case r'accountsCreated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.accountsCreated = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileImportControllerImportBeancount200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileImportControllerImportBeancount200ResponseBuilder();
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

