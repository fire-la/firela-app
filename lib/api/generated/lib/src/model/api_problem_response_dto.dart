//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_problem_response_dto.g.dart';

/// ApiProblemResponseDto
///
/// Properties:
/// * [type] - A URI reference that identifies the problem type
/// * [title] - A short, human-readable summary of the problem
/// * [status] - The HTTP status code
/// * [detail] - A human-readable explanation of the problem
/// * [instance] - A URI reference that identifies the specific occurrence
/// * [extensions] - Additional extension data
@BuiltValue()
abstract class ApiProblemResponseDto
    implements Built<ApiProblemResponseDto, ApiProblemResponseDtoBuilder> {
  /// A URI reference that identifies the problem type
  @BuiltValueField(wireName: r'type')
  String get type;

  /// A short, human-readable summary of the problem
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The HTTP status code
  @BuiltValueField(wireName: r'status')
  num get status;

  /// A human-readable explanation of the problem
  @BuiltValueField(wireName: r'detail')
  String get detail;

  /// A URI reference that identifies the specific occurrence
  @BuiltValueField(wireName: r'instance')
  String? get instance;

  /// Additional extension data
  @BuiltValueField(wireName: r'extensions')
  JsonObject? get extensions;

  ApiProblemResponseDto._();

  factory ApiProblemResponseDto(
      [void updates(ApiProblemResponseDtoBuilder b)]) = _$ApiProblemResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiProblemResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiProblemResponseDto> get serializer =>
      _$ApiProblemResponseDtoSerializer();
}

class _$ApiProblemResponseDtoSerializer
    implements PrimitiveSerializer<ApiProblemResponseDto> {
  @override
  final Iterable<Type> types = const [
    ApiProblemResponseDto,
    _$ApiProblemResponseDto
  ];

  @override
  final String wireName = r'ApiProblemResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiProblemResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(num),
    );
    yield r'detail';
    yield serializers.serialize(
      object.detail,
      specifiedType: const FullType(String),
    );
    if (object.instance != null) {
      yield r'instance';
      yield serializers.serialize(
        object.instance,
        specifiedType: const FullType(String),
      );
    }
    if (object.extensions != null) {
      yield r'extensions';
      yield serializers.serialize(
        object.extensions,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiProblemResponseDto object, {
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
    required ApiProblemResponseDtoBuilder result,
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
        case r'instance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.instance = valueDes;
          break;
        case r'extensions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.extensions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiProblemResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiProblemResponseDtoBuilder();
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
