//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/category_catalog_entry_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_catalog_list_response_dto.g.dart';

/// CategoryCatalogListResponseDto
///
/// Properties:
/// * [items] - Category entries (region-scoped, query-filtered)
/// * [total] - Total category entries for the region (before query filtering)
/// * [region] - Region code
@BuiltValue()
abstract class CategoryCatalogListResponseDto implements Built<CategoryCatalogListResponseDto, CategoryCatalogListResponseDtoBuilder> {
  /// Category entries (region-scoped, query-filtered)
  @BuiltValueField(wireName: r'items')
  BuiltList<CategoryCatalogEntryDto> get items;

  /// Total category entries for the region (before query filtering)
  @BuiltValueField(wireName: r'total')
  num get total;

  /// Region code
  @BuiltValueField(wireName: r'region')
  String get region;

  CategoryCatalogListResponseDto._();

  factory CategoryCatalogListResponseDto([void updates(CategoryCatalogListResponseDtoBuilder b)]) = _$CategoryCatalogListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryCatalogListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoryCatalogListResponseDto> get serializer => _$CategoryCatalogListResponseDtoSerializer();
}

class _$CategoryCatalogListResponseDtoSerializer implements PrimitiveSerializer<CategoryCatalogListResponseDto> {
  @override
  final Iterable<Type> types = const [CategoryCatalogListResponseDto, _$CategoryCatalogListResponseDto];

  @override
  final String wireName = r'CategoryCatalogListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoryCatalogListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(CategoryCatalogEntryDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CategoryCatalogListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoryCatalogListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CategoryCatalogEntryDto)]),
          ) as BuiltList<CategoryCatalogEntryDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.region = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CategoryCatalogListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryCatalogListResponseDtoBuilder();
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

