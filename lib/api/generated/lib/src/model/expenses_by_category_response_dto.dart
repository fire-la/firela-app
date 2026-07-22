//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/exchange_rate_warning_dto.dart';
import 'package:firela_api/src/model/expenses_by_category_summary_dto.dart';
import 'package:firela_api/src/model/category_group_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expenses_by_category_response_dto.g.dart';

/// ExpensesByCategoryResponseDto
///
/// Properties:
/// * [period] - Period requested
/// * [baseCurrency] - Base currency for converted values
/// * [groups] - Expense groups by functional category, sorted by converted total desc
/// * [summary] 
/// * [warnings] - Exchange rate warnings (e.g. missing rate for a currency)
@BuiltValue()
abstract class ExpensesByCategoryResponseDto implements Built<ExpensesByCategoryResponseDto, ExpensesByCategoryResponseDtoBuilder> {
  /// Period requested
  @BuiltValueField(wireName: r'period')
  String get period;

  /// Base currency for converted values
  @BuiltValueField(wireName: r'baseCurrency')
  String get baseCurrency;

  /// Expense groups by functional category, sorted by converted total desc
  @BuiltValueField(wireName: r'groups')
  BuiltList<CategoryGroupDto> get groups;

  @BuiltValueField(wireName: r'summary')
  ExpensesByCategorySummaryDto get summary;

  /// Exchange rate warnings (e.g. missing rate for a currency)
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ExchangeRateWarningDto>? get warnings;

  ExpensesByCategoryResponseDto._();

  factory ExpensesByCategoryResponseDto([void updates(ExpensesByCategoryResponseDtoBuilder b)]) = _$ExpensesByCategoryResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpensesByCategoryResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpensesByCategoryResponseDto> get serializer => _$ExpensesByCategoryResponseDtoSerializer();
}

class _$ExpensesByCategoryResponseDtoSerializer implements PrimitiveSerializer<ExpensesByCategoryResponseDto> {
  @override
  final Iterable<Type> types = const [ExpensesByCategoryResponseDto, _$ExpensesByCategoryResponseDto];

  @override
  final String wireName = r'ExpensesByCategoryResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpensesByCategoryResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(String),
    );
    yield r'baseCurrency';
    yield serializers.serialize(
      object.baseCurrency,
      specifiedType: const FullType(String),
    );
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(BuiltList, [FullType(CategoryGroupDto)]),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(ExpensesByCategorySummaryDto),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExpensesByCategoryResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpensesByCategoryResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
          break;
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CategoryGroupDto)]),
          ) as BuiltList<CategoryGroupDto>;
          result.groups.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpensesByCategorySummaryDto),
          ) as ExpensesByCategorySummaryDto;
          result.summary.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
          ) as BuiltList<ExchangeRateWarningDto>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExpensesByCategoryResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpensesByCategoryResponseDtoBuilder();
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

