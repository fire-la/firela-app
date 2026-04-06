//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multi_currency_balance_response.g.dart';

/// MultiCurrencyBalanceResponse
///
/// Properties:
/// * [account]
/// * [balances] - Map of currency to balance (decimal strings)
/// * [date]
@BuiltValue()
abstract class MultiCurrencyBalanceResponse
    implements
        Built<MultiCurrencyBalanceResponse,
            MultiCurrencyBalanceResponseBuilder> {
  @BuiltValueField(wireName: r'account')
  String get account;

  /// Map of currency to balance (decimal strings)
  @BuiltValueField(wireName: r'balances')
  BuiltMap<String, String> get balances;

  @BuiltValueField(wireName: r'date')
  Date get date;

  MultiCurrencyBalanceResponse._();

  factory MultiCurrencyBalanceResponse(
          [void updates(MultiCurrencyBalanceResponseBuilder b)]) =
      _$MultiCurrencyBalanceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultiCurrencyBalanceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultiCurrencyBalanceResponse> get serializer =>
      _$MultiCurrencyBalanceResponseSerializer();
}

class _$MultiCurrencyBalanceResponseSerializer
    implements PrimitiveSerializer<MultiCurrencyBalanceResponse> {
  @override
  final Iterable<Type> types = const [
    MultiCurrencyBalanceResponse,
    _$MultiCurrencyBalanceResponse
  ];

  @override
  final String wireName = r'MultiCurrencyBalanceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultiCurrencyBalanceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(String),
    );
    yield r'balances';
    yield serializers.serialize(
      object.balances,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MultiCurrencyBalanceResponse object, {
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
    required MultiCurrencyBalanceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.account = valueDes;
          break;
        case r'balances':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.balances.replace(valueDes);
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MultiCurrencyBalanceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultiCurrencyBalanceResponseBuilder();
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
