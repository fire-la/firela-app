//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expenses_by_category_summary_dto.g.dart';

/// ExpensesByCategorySummaryDto
///
/// Properties:
/// * [totalExpense] - Total across all categories, converted (convertible categories only); expense totals when flow=expense, income totals when flow=income
/// * [categoryCount] - Number of categories
@BuiltValue()
abstract class ExpensesByCategorySummaryDto implements Built<ExpensesByCategorySummaryDto, ExpensesByCategorySummaryDtoBuilder> {
  /// Total across all categories, converted (convertible categories only); expense totals when flow=expense, income totals when flow=income
  @BuiltValueField(wireName: r'totalExpense')
  String get totalExpense;

  /// Number of categories
  @BuiltValueField(wireName: r'categoryCount')
  num get categoryCount;

  ExpensesByCategorySummaryDto._();

  factory ExpensesByCategorySummaryDto([void updates(ExpensesByCategorySummaryDtoBuilder b)]) = _$ExpensesByCategorySummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpensesByCategorySummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpensesByCategorySummaryDto> get serializer => _$ExpensesByCategorySummaryDtoSerializer();
}

class _$ExpensesByCategorySummaryDtoSerializer implements PrimitiveSerializer<ExpensesByCategorySummaryDto> {
  @override
  final Iterable<Type> types = const [ExpensesByCategorySummaryDto, _$ExpensesByCategorySummaryDto];

  @override
  final String wireName = r'ExpensesByCategorySummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpensesByCategorySummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totalExpense';
    yield serializers.serialize(
      object.totalExpense,
      specifiedType: const FullType(String),
    );
    yield r'categoryCount';
    yield serializers.serialize(
      object.categoryCount,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExpensesByCategorySummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpensesByCategorySummaryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalExpense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalExpense = valueDes;
          break;
        case r'categoryCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.categoryCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExpensesByCategorySummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpensesByCategorySummaryDtoBuilder();
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

