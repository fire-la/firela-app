//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/balance_by_currency_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_group_dto.g.dart';

/// CategoryGroupDto
///
/// Properties:
/// * [category] - Functional category (account-path Group segment)
/// * [totalExpense] - Converted total expense in base currency
/// * [sharePct] - Share of grand total (0-100); 0 when grand total is 0
/// * [balanceByCurrency] - Raw (unconverted) expense per currency
/// * [convertedBalance] - Converted total in base currency (omitted when FX missing for all currencies in this category)
@BuiltValue()
abstract class CategoryGroupDto implements Built<CategoryGroupDto, CategoryGroupDtoBuilder> {
  /// Functional category (account-path Group segment)
  @BuiltValueField(wireName: r'category')
  String get category;

  /// Converted total expense in base currency
  @BuiltValueField(wireName: r'totalExpense')
  String get totalExpense;

  /// Share of grand total (0-100); 0 when grand total is 0
  @BuiltValueField(wireName: r'sharePct')
  num get sharePct;

  /// Raw (unconverted) expense per currency
  @BuiltValueField(wireName: r'balanceByCurrency')
  BuiltList<BalanceByCurrencyDto> get balanceByCurrency;

  /// Converted total in base currency (omitted when FX missing for all currencies in this category)
  @BuiltValueField(wireName: r'convertedBalance')
  String? get convertedBalance;

  CategoryGroupDto._();

  factory CategoryGroupDto([void updates(CategoryGroupDtoBuilder b)]) = _$CategoryGroupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryGroupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryGroupDto> get serializer => _$CategoryGroupDtoSerializer();
}

class _$CategoryGroupDtoSerializer implements PrimitiveSerializer<CategoryGroupDto> {
  @override
  final Iterable<Type> types = const [CategoryGroupDto, _$CategoryGroupDto];

  @override
  final String wireName = r'CategoryGroupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(String),
    );
    yield r'totalExpense';
    yield serializers.serialize(
      object.totalExpense,
      specifiedType: const FullType(String),
    );
    yield r'sharePct';
    yield serializers.serialize(
      object.sharePct,
      specifiedType: const FullType(num),
    );
    yield r'balanceByCurrency';
    yield serializers.serialize(
      object.balanceByCurrency,
      specifiedType: const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    if (object.convertedBalance != null) {
      yield r'convertedBalance';
      yield serializers.serialize(
        object.convertedBalance,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryGroupDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'totalExpense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalExpense = valueDes;
          break;
        case r'sharePct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.sharePct = valueDes;
          break;
        case r'balanceByCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.balanceByCurrency.replace(valueDes);
          break;
        case r'convertedBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.convertedBalance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryGroupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryGroupDtoBuilder();
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

