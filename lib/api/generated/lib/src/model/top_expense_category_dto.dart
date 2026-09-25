//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'top_expense_category_dto.g.dart';

/// TopExpenseCategoryDto
///
/// Properties:
/// * [category] - Account-path leaf key (last path segment)
/// * [totalExpense] - Converted total for this category in CNY (convertible currencies only)
@BuiltValue()
abstract class TopExpenseCategoryDto implements Built<TopExpenseCategoryDto, TopExpenseCategoryDtoBuilder> {
  /// Account-path leaf key (last path segment)
  @BuiltValueField(wireName: r'category')
  String get category;

  /// Converted total for this category in CNY (convertible currencies only)
  @BuiltValueField(wireName: r'totalExpense')
  String get totalExpense;

  TopExpenseCategoryDto._();

  factory TopExpenseCategoryDto([void updates(TopExpenseCategoryDtoBuilder b)]) = _$TopExpenseCategoryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TopExpenseCategoryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TopExpenseCategoryDto> get serializer => _$TopExpenseCategoryDtoSerializer();
}

class _$TopExpenseCategoryDtoSerializer implements PrimitiveSerializer<TopExpenseCategoryDto> {
  @override
  final Iterable<Type> types = const [TopExpenseCategoryDto, _$TopExpenseCategoryDto];

  @override
  final String wireName = r'TopExpenseCategoryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TopExpenseCategoryDto object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    TopExpenseCategoryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TopExpenseCategoryDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TopExpenseCategoryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TopExpenseCategoryDtoBuilder();
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

