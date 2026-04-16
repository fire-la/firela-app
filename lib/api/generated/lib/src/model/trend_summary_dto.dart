//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trend_summary_dto.g.dart';

/// TrendSummaryDto
///
/// Properties:
/// * [startValue] - Value at start of period
/// * [endValue] - Value at end of period
/// * [totalChange] - Total change over period
/// * [totalChangePercentage] - Total change percentage
@BuiltValue()
abstract class TrendSummaryDto
    implements Built<TrendSummaryDto, TrendSummaryDtoBuilder> {
  /// Value at start of period
  @BuiltValueField(wireName: r'startValue')
  String get startValue;

  /// Value at end of period
  @BuiltValueField(wireName: r'endValue')
  String get endValue;

  /// Total change over period
  @BuiltValueField(wireName: r'totalChange')
  String get totalChange;

  /// Total change percentage
  @BuiltValueField(wireName: r'totalChangePercentage')
  String get totalChangePercentage;

  TrendSummaryDto._();

  factory TrendSummaryDto([void updates(TrendSummaryDtoBuilder b)]) =
      _$TrendSummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendSummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendSummaryDto> get serializer =>
      _$TrendSummaryDtoSerializer();
}

class _$TrendSummaryDtoSerializer
    implements PrimitiveSerializer<TrendSummaryDto> {
  @override
  final Iterable<Type> types = const [TrendSummaryDto, _$TrendSummaryDto];

  @override
  final String wireName = r'TrendSummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'startValue';
    yield serializers.serialize(
      object.startValue,
      specifiedType: const FullType(String),
    );
    yield r'endValue';
    yield serializers.serialize(
      object.endValue,
      specifiedType: const FullType(String),
    );
    yield r'totalChange';
    yield serializers.serialize(
      object.totalChange,
      specifiedType: const FullType(String),
    );
    yield r'totalChangePercentage';
    yield serializers.serialize(
      object.totalChangePercentage,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendSummaryDto object, {
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
    required TrendSummaryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'startValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startValue = valueDes;
          break;
        case r'endValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endValue = valueDes;
          break;
        case r'totalChange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalChange = valueDes;
          break;
        case r'totalChangePercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalChangePercentage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendSummaryDtoBuilder();
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
