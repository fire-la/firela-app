//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_price_request.g.dart';

/// CreatePriceRequest
///
/// Properties:
/// * [currency] - Base currency (e.g., \"USD\")
/// * [quoteCurrency] - Quote currency (e.g., \"CNY\")
/// * [amount] - Exchange rate
/// * [date]
/// * [metadata]
@BuiltValue()
abstract class CreatePriceRequest
    implements Built<CreatePriceRequest, CreatePriceRequestBuilder> {
  /// Base currency (e.g., \"USD\")
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Quote currency (e.g., \"CNY\")
  @BuiltValueField(wireName: r'quoteCurrency')
  String get quoteCurrency;

  /// Exchange rate
  @BuiltValueField(wireName: r'amount')
  num get amount;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  CreatePriceRequest._();

  factory CreatePriceRequest([void updates(CreatePriceRequestBuilder b)]) =
      _$CreatePriceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePriceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePriceRequest> get serializer =>
      _$CreatePriceRequestSerializer();
}

class _$CreatePriceRequestSerializer
    implements PrimitiveSerializer<CreatePriceRequest> {
  @override
  final Iterable<Type> types = const [CreatePriceRequest, _$CreatePriceRequest];

  @override
  final String wireName = r'CreatePriceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePriceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'quoteCurrency';
    yield serializers.serialize(
      object.quoteCurrency,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePriceRequest object, {
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
    required CreatePriceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'quoteCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quoteCurrency = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePriceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePriceRequestBuilder();
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
