//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posting.g.dart';

/// Posting
///
/// Properties:
/// * [id]
/// * [accountId]
/// * [accountName] - Full Beancount account path
/// * [units] - Decimal string for precision
/// * [currency]
/// * [costAmount]
/// * [costCurrency]
/// * [costDate]
/// * [priceAmount]
/// * [priceCurrency]
/// * [flag]
/// * [meta]
@BuiltValue()
abstract class Posting implements Built<Posting, PostingBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  /// Full Beancount account path
  @BuiltValueField(wireName: r'accountName')
  String? get accountName;

  /// Decimal string for precision
  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'currency')
  String? get currency;

  @BuiltValueField(wireName: r'costAmount')
  String? get costAmount;

  @BuiltValueField(wireName: r'costCurrency')
  String? get costCurrency;

  @BuiltValueField(wireName: r'costDate')
  Date? get costDate;

  @BuiltValueField(wireName: r'priceAmount')
  String? get priceAmount;

  @BuiltValueField(wireName: r'priceCurrency')
  String? get priceCurrency;

  @BuiltValueField(wireName: r'flag')
  String? get flag;

  @BuiltValueField(wireName: r'meta')
  BuiltMap<String, JsonObject?>? get meta;

  Posting._();

  factory Posting([void updates(PostingBuilder b)]) = _$Posting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Posting> get serializer => _$PostingSerializer();
}

class _$PostingSerializer implements PrimitiveSerializer<Posting> {
  @override
  final Iterable<Type> types = const [Posting, _$Posting];

  @override
  final String wireName = r'Posting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Posting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(
        object.accountId,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountName != null) {
      yield r'accountName';
      yield serializers.serialize(
        object.accountName,
        specifiedType: const FullType(String),
      );
    }
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
        specifiedType: const FullType(Date),
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
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Posting object, {
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
    required PostingBuilder result,
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
            specifiedType: const FullType(Date),
          ) as Date;
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
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Posting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostingBuilder();
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
