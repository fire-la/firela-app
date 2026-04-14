//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recurring_match_info_dto.g.dart';

/// RecurringMatchInfoDto
///
/// Properties:
/// * [expectedId] - Expected transaction ID
/// * [ruleId] - Recurring rule ID
/// * [ruleName] - Rule name for display
/// * [expectedDate] - Expected date (YYYY-MM-DD)
/// * [expectedAmount] - Expected amount
/// * [confidence] - Match confidence score (0-1)
/// * [isAutoMatched] - Whether auto-matched (confidence >= 0.82)
/// * [ruleIcon] - Rule icon
@BuiltValue()
abstract class RecurringMatchInfoDto
    implements Built<RecurringMatchInfoDto, RecurringMatchInfoDtoBuilder> {
  /// Expected transaction ID
  @BuiltValueField(wireName: r'expectedId')
  String get expectedId;

  /// Recurring rule ID
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  /// Rule name for display
  @BuiltValueField(wireName: r'ruleName')
  String get ruleName;

  /// Expected date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'expectedDate')
  String get expectedDate;

  /// Expected amount
  @BuiltValueField(wireName: r'expectedAmount')
  num get expectedAmount;

  /// Match confidence score (0-1)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Whether auto-matched (confidence >= 0.82)
  @BuiltValueField(wireName: r'isAutoMatched')
  bool get isAutoMatched;

  /// Rule icon
  @BuiltValueField(wireName: r'ruleIcon')
  String? get ruleIcon;

  RecurringMatchInfoDto._();

  factory RecurringMatchInfoDto(
      [void updates(RecurringMatchInfoDtoBuilder b)]) = _$RecurringMatchInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecurringMatchInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecurringMatchInfoDto> get serializer =>
      _$RecurringMatchInfoDtoSerializer();
}

class _$RecurringMatchInfoDtoSerializer
    implements PrimitiveSerializer<RecurringMatchInfoDto> {
  @override
  final Iterable<Type> types = const [
    RecurringMatchInfoDto,
    _$RecurringMatchInfoDto
  ];

  @override
  final String wireName = r'RecurringMatchInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecurringMatchInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'expectedId';
    yield serializers.serialize(
      object.expectedId,
      specifiedType: const FullType(String),
    );
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'ruleName';
    yield serializers.serialize(
      object.ruleName,
      specifiedType: const FullType(String),
    );
    yield r'expectedDate';
    yield serializers.serialize(
      object.expectedDate,
      specifiedType: const FullType(String),
    );
    yield r'expectedAmount';
    yield serializers.serialize(
      object.expectedAmount,
      specifiedType: const FullType(num),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'isAutoMatched';
    yield serializers.serialize(
      object.isAutoMatched,
      specifiedType: const FullType(bool),
    );
    if (object.ruleIcon != null) {
      yield r'ruleIcon';
      yield serializers.serialize(
        object.ruleIcon,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecurringMatchInfoDto object, {
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
    required RecurringMatchInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expectedId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expectedId = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'ruleName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleName = valueDes;
          break;
        case r'expectedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expectedDate = valueDes;
          break;
        case r'expectedAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expectedAmount = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'isAutoMatched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAutoMatched = valueDes;
          break;
        case r'ruleIcon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleIcon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecurringMatchInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecurringMatchInfoDtoBuilder();
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
