//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posting_detail_dto.g.dart';

/// PostingDetailDto
///
/// Properties:
/// * [id] - Posting ID
/// * [accountId] - Account ID
/// * [accountName] - Account name
/// * [units] - Amount (may be null if interpolated)
/// * [currency] - Currency
/// * [costAmount] - Cost amount
/// * [costCurrency] - Cost currency
/// * [costDate] - Cost date
/// * [priceAmount] - Price amount
/// * [priceCurrency] - Price currency
/// * [flag] - Posting flag
/// * [meta] - Posting metadata
@BuiltValue()
abstract class PostingDetailDto
    implements Built<PostingDetailDto, PostingDetailDtoBuilder> {
  /// Posting ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Account ID
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  /// Account name
  @BuiltValueField(wireName: r'accountName')
  String get accountName;

  /// Amount (may be null if interpolated)
  @BuiltValueField(wireName: r'units')
  String? get units;

  /// Currency
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Cost amount
  @BuiltValueField(wireName: r'costAmount')
  String? get costAmount;

  /// Cost currency
  @BuiltValueField(wireName: r'costCurrency')
  String? get costCurrency;

  /// Cost date
  @BuiltValueField(wireName: r'costDate')
  String? get costDate;

  /// Price amount
  @BuiltValueField(wireName: r'priceAmount')
  String? get priceAmount;

  /// Price currency
  @BuiltValueField(wireName: r'priceCurrency')
  String? get priceCurrency;

  /// Posting flag
  @BuiltValueField(wireName: r'flag')
  String? get flag;

  /// Posting metadata
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  PostingDetailDto._();

  factory PostingDetailDto([void updates(PostingDetailDtoBuilder b)]) =
      _$PostingDetailDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostingDetailDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostingDetailDto> get serializer =>
      _$PostingDetailDtoSerializer();
}

class _$PostingDetailDtoSerializer
    implements PrimitiveSerializer<PostingDetailDto> {
  @override
  final Iterable<Type> types = const [PostingDetailDto, _$PostingDetailDto];

  @override
  final String wireName = r'PostingDetailDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostingDetailDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    yield r'accountName';
    yield serializers.serialize(
      object.accountName,
      specifiedType: const FullType(String),
    );
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(String),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.costAmount != null) {
      yield r'costAmount';
      yield serializers.serialize(
        object.costAmount,
        specifiedType: const FullType(String),
      );
    }
    if (object.costCurrency != null) {
      yield r'costCurrency';
      yield serializers.serialize(
        object.costCurrency,
        specifiedType: const FullType(String),
      );
    }
    if (object.costDate != null) {
      yield r'costDate';
      yield serializers.serialize(
        object.costDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.priceAmount != null) {
      yield r'priceAmount';
      yield serializers.serialize(
        object.priceAmount,
        specifiedType: const FullType(String),
      );
    }
    if (object.priceCurrency != null) {
      yield r'priceCurrency';
      yield serializers.serialize(
        object.priceCurrency,
        specifiedType: const FullType(String),
      );
    }
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(String),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostingDetailDto object, {
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
    required PostingDetailDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
          break;
        case r'accountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountName = valueDes;
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.units = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'costAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.costAmount = valueDes;
          break;
        case r'costCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.costCurrency = valueDes;
          break;
        case r'costDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.costDate = valueDes;
          break;
        case r'priceAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.priceAmount = valueDes;
          break;
        case r'priceCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.priceCurrency = valueDes;
          break;
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.flag = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostingDetailDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostingDetailDtoBuilder();
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
