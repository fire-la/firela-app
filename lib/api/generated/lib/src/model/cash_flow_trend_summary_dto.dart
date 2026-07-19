//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cash_flow_trend_summary_dto.g.dart';

/// CashFlowTrendSummaryDto
///
/// Properties:
/// * [totalIncome] - Total income across the period
/// * [totalExpense] - Total expense across the period
/// * [totalNetSavings] - income − expense across the period
/// * [averageMonthlyNetSavings] - totalNetSavings divided by the window length (N months, incl. zero-filled)
@BuiltValue()
abstract class CashFlowTrendSummaryDto implements Built<CashFlowTrendSummaryDto, CashFlowTrendSummaryDtoBuilder> {
  /// Total income across the period
  @BuiltValueField(wireName: r'totalIncome')
  String get totalIncome;

  /// Total expense across the period
  @BuiltValueField(wireName: r'totalExpense')
  String get totalExpense;

  /// income − expense across the period
  @BuiltValueField(wireName: r'totalNetSavings')
  String get totalNetSavings;

  /// totalNetSavings divided by the window length (N months, incl. zero-filled)
  @BuiltValueField(wireName: r'averageMonthlyNetSavings')
  String get averageMonthlyNetSavings;

  CashFlowTrendSummaryDto._();

  factory CashFlowTrendSummaryDto([void updates(CashFlowTrendSummaryDtoBuilder b)]) = _$CashFlowTrendSummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CashFlowTrendSummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CashFlowTrendSummaryDto> get serializer => _$CashFlowTrendSummaryDtoSerializer();
}

class _$CashFlowTrendSummaryDtoSerializer implements PrimitiveSerializer<CashFlowTrendSummaryDto> {
  @override
  final Iterable<Type> types = const [CashFlowTrendSummaryDto, _$CashFlowTrendSummaryDto];

  @override
  final String wireName = r'CashFlowTrendSummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CashFlowTrendSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totalIncome';
    yield serializers.serialize(
      object.totalIncome,
      specifiedType: const FullType(String),
    );
    yield r'totalExpense';
    yield serializers.serialize(
      object.totalExpense,
      specifiedType: const FullType(String),
    );
    yield r'totalNetSavings';
    yield serializers.serialize(
      object.totalNetSavings,
      specifiedType: const FullType(String),
    );
    yield r'averageMonthlyNetSavings';
    yield serializers.serialize(
      object.averageMonthlyNetSavings,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CashFlowTrendSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CashFlowTrendSummaryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalIncome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalIncome = valueDes;
          break;
        case r'totalExpense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalExpense = valueDes;
          break;
        case r'totalNetSavings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalNetSavings = valueDes;
          break;
        case r'averageMonthlyNetSavings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.averageMonthlyNetSavings = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CashFlowTrendSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CashFlowTrendSummaryDtoBuilder();
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

