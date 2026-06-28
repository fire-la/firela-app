//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resolve_review_dto.g.dart';

/// ResolveReviewDto
///
/// Properties:
/// * [action] - Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
/// * [data] - Additional data for the decision (e.g., selected account ID)
@BuiltValue()
abstract class ResolveReviewDto implements Built<ResolveReviewDto, ResolveReviewDtoBuilder> {
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueField(wireName: r'action')
  ResolveReviewDtoActionEnum get action;
  // enum actionEnum {  UPGRADE_REPLACE,  LINK_KEEP_BOTH,  IGNORE_NEW,  CONFIRM_DIFFERENT,  ACCEPT,  REJECT,  ACCEPT_AND_LEARN,  CHOOSE_OTHER,  CANCEL,  FIX,  IGNORE,  };

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
      specifiedType: const FullType(ResolveReviewDtoActionEnum),
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
            specifiedType: const FullType(ResolveReviewDtoActionEnum),
          ) as ResolveReviewDtoActionEnum;
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

class ResolveReviewDtoActionEnum extends EnumClass {

  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'UPGRADE_REPLACE')
  static const ResolveReviewDtoActionEnum UPGRADE_REPLACE = _$resolveReviewDtoActionEnum_UPGRADE_REPLACE;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'LINK_KEEP_BOTH')
  static const ResolveReviewDtoActionEnum LINK_KEEP_BOTH = _$resolveReviewDtoActionEnum_LINK_KEEP_BOTH;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'IGNORE_NEW')
  static const ResolveReviewDtoActionEnum IGNORE_NEW = _$resolveReviewDtoActionEnum_IGNORE_NEW;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'CONFIRM_DIFFERENT')
  static const ResolveReviewDtoActionEnum CONFIRM_DIFFERENT = _$resolveReviewDtoActionEnum_CONFIRM_DIFFERENT;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'ACCEPT')
  static const ResolveReviewDtoActionEnum ACCEPT = _$resolveReviewDtoActionEnum_ACCEPT;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'REJECT')
  static const ResolveReviewDtoActionEnum REJECT = _$resolveReviewDtoActionEnum_REJECT;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'ACCEPT_AND_LEARN')
  static const ResolveReviewDtoActionEnum ACCEPT_AND_LEARN = _$resolveReviewDtoActionEnum_ACCEPT_AND_LEARN;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'CHOOSE_OTHER')
  static const ResolveReviewDtoActionEnum CHOOSE_OTHER = _$resolveReviewDtoActionEnum_CHOOSE_OTHER;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'CANCEL')
  static const ResolveReviewDtoActionEnum CANCEL = _$resolveReviewDtoActionEnum_CANCEL;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'FIX')
  static const ResolveReviewDtoActionEnum FIX = _$resolveReviewDtoActionEnum_FIX;
  /// Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
  @BuiltValueEnumConst(wireName: r'IGNORE')
  static const ResolveReviewDtoActionEnum IGNORE = _$resolveReviewDtoActionEnum_IGNORE;

  static Serializer<ResolveReviewDtoActionEnum> get serializer => _$resolveReviewDtoActionEnumSerializer;

  const ResolveReviewDtoActionEnum._(String name): super(name);

  static BuiltSet<ResolveReviewDtoActionEnum> get values => _$resolveReviewDtoActionEnumValues;
  static ResolveReviewDtoActionEnum valueOf(String name) => _$resolveReviewDtoActionEnumValueOf(name);
}

