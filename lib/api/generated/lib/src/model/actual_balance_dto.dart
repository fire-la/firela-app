//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actual_balance_dto.g.dart';

/// ActualBalanceDto
///
/// Properties:
/// * [amount] - Actual balance amount as a decimal string (preserves precision for tolerance inference).
/// * [ccy] - Currency code (ISO 4217 or commodity ticker).
@BuiltValue()
abstract class ActualBalanceDto implements Built<ActualBalanceDto, ActualBalanceDtoBuilder> {
  /// Actual balance amount as a decimal string (preserves precision for tolerance inference).
  @BuiltValueField(wireName: r'amount')
  String get amount;

  /// Currency code (ISO 4217 or commodity ticker).
  @BuiltValueField(wireName: r'ccy')
  String get ccy;

  ActualBalanceDto._();

  factory ActualBalanceDto([void updates(ActualBalanceDtoBuilder b)]) = _$ActualBalanceDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActualBalanceDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActualBalanceDto> get serializer => _$ActualBalanceDtoSerializer();
}

class _$ActualBalanceDtoSerializer implements PrimitiveSerializer<ActualBalanceDto> {
  @override
  final Iterable<Type> types = const [ActualBalanceDto, _$ActualBalanceDto];

  @override
  final String wireName = r'ActualBalanceDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActualBalanceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    yield r'ccy';
    yield serializers.serialize(
      object.ccy,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActualBalanceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActualBalanceDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'ccy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ccy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActualBalanceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActualBalanceDtoBuilder();
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

