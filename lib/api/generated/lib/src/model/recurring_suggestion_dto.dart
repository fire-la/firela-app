//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recurring_suggestion_dto.g.dart';

/// RecurringSuggestionDto
///
/// Properties:
/// * [shouldSuggest] - Whether to suggest creating a recurring rule
/// * [suggestedFrequency] - Suggested frequency based on pattern analysis
/// * [confidence] - Confidence score (0-1)
/// * [similarCount] - Number of similar historical transactions found
/// * [averageAmount] - Average amount across similar transactions
/// * [suggestedExpectedDay] - Suggested expected day of month (1-28). Only provided when dates are consistent.
@BuiltValue()
abstract class RecurringSuggestionDto
    implements Built<RecurringSuggestionDto, RecurringSuggestionDtoBuilder> {
  /// Whether to suggest creating a recurring rule
  @BuiltValueField(wireName: r'shouldSuggest')
  bool get shouldSuggest;

  /// Suggested frequency based on pattern analysis
  @BuiltValueField(wireName: r'suggestedFrequency')
  RecurringSuggestionDtoSuggestedFrequencyEnum get suggestedFrequency;
  // enum suggestedFrequencyEnum {  WEEKLY,  BIWEEKLY,  MONTHLY,  BIMONTHLY,  QUARTERLY,  YEARLY,  CUSTOM,  };

  /// Confidence score (0-1)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Number of similar historical transactions found
  @BuiltValueField(wireName: r'similarCount')
  num get similarCount;

  /// Average amount across similar transactions
  @BuiltValueField(wireName: r'averageAmount')
  num get averageAmount;

  /// Suggested expected day of month (1-28). Only provided when dates are consistent.
  @BuiltValueField(wireName: r'suggestedExpectedDay')
  num? get suggestedExpectedDay;

  RecurringSuggestionDto._();

  factory RecurringSuggestionDto(
          [void updates(RecurringSuggestionDtoBuilder b)]) =
      _$RecurringSuggestionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecurringSuggestionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecurringSuggestionDto> get serializer =>
      _$RecurringSuggestionDtoSerializer();
}

class _$RecurringSuggestionDtoSerializer
    implements PrimitiveSerializer<RecurringSuggestionDto> {
  @override
  final Iterable<Type> types = const [
    RecurringSuggestionDto,
    _$RecurringSuggestionDto
  ];

  @override
  final String wireName = r'RecurringSuggestionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecurringSuggestionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'shouldSuggest';
    yield serializers.serialize(
      object.shouldSuggest,
      specifiedType: const FullType(bool),
    );
    yield r'suggestedFrequency';
    yield serializers.serialize(
      object.suggestedFrequency,
      specifiedType:
          const FullType(RecurringSuggestionDtoSuggestedFrequencyEnum),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'similarCount';
    yield serializers.serialize(
      object.similarCount,
      specifiedType: const FullType(num),
    );
    yield r'averageAmount';
    yield serializers.serialize(
      object.averageAmount,
      specifiedType: const FullType(num),
    );
    if (object.suggestedExpectedDay != null) {
      yield r'suggestedExpectedDay';
      yield serializers.serialize(
        object.suggestedExpectedDay,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecurringSuggestionDto object, {
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
    required RecurringSuggestionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shouldSuggest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.shouldSuggest = valueDes;
          break;
        case r'suggestedFrequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(RecurringSuggestionDtoSuggestedFrequencyEnum),
          ) as RecurringSuggestionDtoSuggestedFrequencyEnum;
          result.suggestedFrequency = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'similarCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.similarCount = valueDes;
          break;
        case r'averageAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.averageAmount = valueDes;
          break;
        case r'suggestedExpectedDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.suggestedExpectedDay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecurringSuggestionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecurringSuggestionDtoBuilder();
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

class RecurringSuggestionDtoSuggestedFrequencyEnum extends EnumClass {
  /// Suggested frequency based on pattern analysis
  @BuiltValueEnumConst(wireName: r'WEEKLY')
  static const RecurringSuggestionDtoSuggestedFrequencyEnum WEEKLY =
      _$recurringSuggestionDtoSuggestedFrequencyEnum_WEEKLY;

  /// Suggested frequency based on pattern analysis
  @BuiltValueEnumConst(wireName: r'BIWEEKLY')
  static const RecurringSuggestionDtoSuggestedFrequencyEnum BIWEEKLY =
      _$recurringSuggestionDtoSuggestedFrequencyEnum_BIWEEKLY;

  /// Suggested frequency based on pattern analysis
  @BuiltValueEnumConst(wireName: r'MONTHLY')
  static const RecurringSuggestionDtoSuggestedFrequencyEnum MONTHLY =
      _$recurringSuggestionDtoSuggestedFrequencyEnum_MONTHLY;

  /// Suggested frequency based on pattern analysis
  @BuiltValueEnumConst(wireName: r'BIMONTHLY')
  static const RecurringSuggestionDtoSuggestedFrequencyEnum BIMONTHLY =
      _$recurringSuggestionDtoSuggestedFrequencyEnum_BIMONTHLY;

  /// Suggested frequency based on pattern analysis
  @BuiltValueEnumConst(wireName: r'QUARTERLY')
  static const RecurringSuggestionDtoSuggestedFrequencyEnum QUARTERLY =
      _$recurringSuggestionDtoSuggestedFrequencyEnum_QUARTERLY;

  /// Suggested frequency based on pattern analysis
  @BuiltValueEnumConst(wireName: r'YEARLY')
  static const RecurringSuggestionDtoSuggestedFrequencyEnum YEARLY =
      _$recurringSuggestionDtoSuggestedFrequencyEnum_YEARLY;

  /// Suggested frequency based on pattern analysis
  @BuiltValueEnumConst(wireName: r'CUSTOM', fallback: true)
  static const RecurringSuggestionDtoSuggestedFrequencyEnum CUSTOM =
      _$recurringSuggestionDtoSuggestedFrequencyEnum_CUSTOM;

  static Serializer<RecurringSuggestionDtoSuggestedFrequencyEnum>
      get serializer =>
          _$recurringSuggestionDtoSuggestedFrequencyEnumSerializer;

  const RecurringSuggestionDtoSuggestedFrequencyEnum._(String name)
      : super(name);

  static BuiltSet<RecurringSuggestionDtoSuggestedFrequencyEnum> get values =>
      _$recurringSuggestionDtoSuggestedFrequencyEnumValues;
  static RecurringSuggestionDtoSuggestedFrequencyEnum valueOf(String name) =>
      _$recurringSuggestionDtoSuggestedFrequencyEnumValueOf(name);
}
