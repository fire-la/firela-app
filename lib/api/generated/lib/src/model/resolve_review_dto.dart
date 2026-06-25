//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resolve_review_dto.g.dart';

/// ResolveReviewDto
///
/// Properties:
/// * [action] - Decision action. Available actions vary by review type: DUPLICATE: UPGRADE_REPLACE, LINK_KEEP_BOTH, IGNORE_NEW, CONFIRM_DIFFERENT | RULE_MATCH: ACCEPT, REJECT, ACCEPT_AND_LEARN | PAYEE_MATCH: ACCEPT, REJECT, ACCEPT_AND_LEARN | ACCOUNT_VALIDATION: ACCEPT, CHOOSE_OTHER, CANCEL | PIPELINE_ERROR: FIX, IGNORE, CANCEL
/// * [data] - Additional data for the decision (e.g., selected account ID)
@BuiltValue()
abstract class ResolveReviewDto implements Built<ResolveReviewDto, ResolveReviewDtoBuilder> {
  /// Decision action. Available actions vary by review type: DUPLICATE: UPGRADE_REPLACE, LINK_KEEP_BOTH, IGNORE_NEW, CONFIRM_DIFFERENT | RULE_MATCH: ACCEPT, REJECT, ACCEPT_AND_LEARN | PAYEE_MATCH: ACCEPT, REJECT, ACCEPT_AND_LEARN | ACCOUNT_VALIDATION: ACCEPT, CHOOSE_OTHER, CANCEL | PIPELINE_ERROR: FIX, IGNORE, CANCEL
  @BuiltValueField(wireName: r'action')
  String get action;

  /// Additional data for the decision (e.g., selected account ID)
  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  ResolveReviewDto._();

  factory ResolveReviewDto([void updates(ResolveReviewDtoBuilder b)]) = _$ResolveReviewDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResolveReviewDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResolveReviewDto> get serializer => _$ResolveReviewDtoSerializer();
}

class _$ResolveReviewDtoSerializer implements PrimitiveSerializer<ResolveReviewDto> {
  @override
  final Iterable<Type> types = const [ResolveReviewDto, _$ResolveReviewDto];

  @override
  final String wireName = r'ResolveReviewDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResolveReviewDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResolveReviewDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResolveReviewDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResolveReviewDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResolveReviewDtoBuilder();
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

