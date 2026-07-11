//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'amount_dto.g.dart';

/// AmountDto
///
/// Properties:
/// * [number] - Amount as decimal string (max 15 integer + 15 decimal digits)
/// * [currency] - Currency/commodity code
@BuiltValue()
abstract class AmountDto implements Built<AmountDto, AmountDtoBuilder> {
  /// Amount as decimal string (max 15 integer + 15 decimal digits)
  @BuiltValueField(wireName: r'number')
  String get number;

  /// Currency/commodity code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  AmountDto._();

  factory AmountDto([void updates(AmountDtoBuilder b)]) = _$AmountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AmountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AmountDto> get serializer => _$AmountDtoSerializer();
}

class _$AmountDtoSerializer implements PrimitiveSerializer<AmountDto> {
  @override
  final Iterable<Type> types = const [AmountDto, _$AmountDto];

  @override
  final String wireName = r'AmountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AmountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AmountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AmountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AmountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AmountDtoBuilder();
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

