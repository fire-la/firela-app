//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'currency_balance_dto.g.dart';

/// CurrencyBalanceDto
///
/// Properties:
/// * [currency] - ISO 4217 currency code
/// * [balance] - Balance amount
@BuiltValue()
abstract class CurrencyBalanceDto
    implements Built<CurrencyBalanceDto, CurrencyBalanceDtoBuilder> {
  /// ISO 4217 currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Balance amount
  @BuiltValueField(wireName: r'balance')
  String get balance;

  CurrencyBalanceDto._();

  factory CurrencyBalanceDto([void updates(CurrencyBalanceDtoBuilder b)]) =
      _$CurrencyBalanceDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurrencyBalanceDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrencyBalanceDto> get serializer =>
      _$CurrencyBalanceDtoSerializer();
}

class _$CurrencyBalanceDtoSerializer
    implements PrimitiveSerializer<CurrencyBalanceDto> {
  @override
  final Iterable<Type> types = const [CurrencyBalanceDto, _$CurrencyBalanceDto];

  @override
  final String wireName = r'CurrencyBalanceDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrencyBalanceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'balance';
    yield serializers.serialize(
      object.balance,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CurrencyBalanceDto object, {
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
    required CurrencyBalanceDtoBuilder result,
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
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.balance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CurrencyBalanceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurrencyBalanceDtoBuilder();
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
