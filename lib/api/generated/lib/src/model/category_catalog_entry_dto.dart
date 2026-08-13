//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_catalog_entry_dto.g.dart';

/// CategoryCatalogEntryDto
///
/// Properties:
/// * [slug] - Category slug (single source-of-truth)
/// * [scenario] - Display scenario group (maps to frontend picker _scenario)
/// * [icon] - Lucide icon name
/// * [regions] - Applicable regions ('*' = all, 'cn' = CN-only)
@BuiltValue()
abstract class CategoryCatalogEntryDto implements Built<CategoryCatalogEntryDto, CategoryCatalogEntryDtoBuilder> {
  /// Category slug (single source-of-truth)
  @BuiltValueField(wireName: r'slug')
  String get slug;

  /// Display scenario group (maps to frontend picker _scenario)
  @BuiltValueField(wireName: r'scenario')
  CategoryCatalogEntryDtoScenarioEnum get scenario;
  // enum scenarioEnum {  expense,  income,  investment,  banking,  transfer,  payment,  };

  /// Lucide icon name
  @BuiltValueField(wireName: r'icon')
  String get icon;

  /// Applicable regions ('*' = all, 'cn' = CN-only)
  @BuiltValueField(wireName: r'regions')
  BuiltList<String> get regions;

  CategoryCatalogEntryDto._();

  factory CategoryCatalogEntryDto([void updates(CategoryCatalogEntryDtoBuilder b)]) = _$CategoryCatalogEntryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryCatalogEntryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryCatalogEntryDto> get serializer => _$CategoryCatalogEntryDtoSerializer();
}

class _$CategoryCatalogEntryDtoSerializer implements PrimitiveSerializer<CategoryCatalogEntryDto> {
  @override
  final Iterable<Type> types = const [CategoryCatalogEntryDto, _$CategoryCatalogEntryDto];

  @override
  final String wireName = r'CategoryCatalogEntryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryCatalogEntryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'scenario';
    yield serializers.serialize(
      object.scenario,
      specifiedType: const FullType(CategoryCatalogEntryDtoScenarioEnum),
    );
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'regions';
    yield serializers.serialize(
      object.regions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryCatalogEntryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryCatalogEntryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'scenario':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CategoryCatalogEntryDtoScenarioEnum),
          ) as CategoryCatalogEntryDtoScenarioEnum;
          result.scenario = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'regions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.regions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryCatalogEntryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryCatalogEntryDtoBuilder();
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

class CategoryCatalogEntryDtoScenarioEnum extends EnumClass {

  /// Display scenario group (maps to frontend picker _scenario)
  @BuiltValueEnumConst(wireName: r'expense')
  static const CategoryCatalogEntryDtoScenarioEnum expense = _$categoryCatalogEntryDtoScenarioEnum_expense;
  /// Display scenario group (maps to frontend picker _scenario)
  @BuiltValueEnumConst(wireName: r'income')
  static const CategoryCatalogEntryDtoScenarioEnum income = _$categoryCatalogEntryDtoScenarioEnum_income;
  /// Display scenario group (maps to frontend picker _scenario)
  @BuiltValueEnumConst(wireName: r'investment')
  static const CategoryCatalogEntryDtoScenarioEnum investment = _$categoryCatalogEntryDtoScenarioEnum_investment;
  /// Display scenario group (maps to frontend picker _scenario)
  @BuiltValueEnumConst(wireName: r'banking')
  static const CategoryCatalogEntryDtoScenarioEnum banking = _$categoryCatalogEntryDtoScenarioEnum_banking;
  /// Display scenario group (maps to frontend picker _scenario)
  @BuiltValueEnumConst(wireName: r'transfer')
  static const CategoryCatalogEntryDtoScenarioEnum transfer = _$categoryCatalogEntryDtoScenarioEnum_transfer;
  /// Display scenario group (maps to frontend picker _scenario)
  @BuiltValueEnumConst(wireName: r'payment')
  static const CategoryCatalogEntryDtoScenarioEnum payment = _$categoryCatalogEntryDtoScenarioEnum_payment;

  static Serializer<CategoryCatalogEntryDtoScenarioEnum> get serializer => _$categoryCatalogEntryDtoScenarioEnumSerializer;

  const CategoryCatalogEntryDtoScenarioEnum._(String name): super(name);

  static BuiltSet<CategoryCatalogEntryDtoScenarioEnum> get values => _$categoryCatalogEntryDtoScenarioEnumValues;
  static CategoryCatalogEntryDtoScenarioEnum valueOf(String name) => _$categoryCatalogEntryDtoScenarioEnumValueOf(name);
}

