//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_rate_warning_dto.g.dart';

/// ExchangeRateWarningDto
///
/// Properties:
/// * [type] - Warning type
/// * [currency] - Currency without exchange rate
/// * [totalAmount] - Total amount affected
@BuiltValue()
abstract class ExchangeRateWarningDto
    implements Built<ExchangeRateWarningDto, ExchangeRateWarningDtoBuilder> {
  /// Warning type
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Currency without exchange rate
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Total amount affected
  @BuiltValueField(wireName: r'totalAmount')
  String get totalAmount;

  ExchangeRateWarningDto._();

  factory ExchangeRateWarningDto(
          [void updates(ExchangeRateWarningDtoBuilder b)]) =
      _$ExchangeRateWarningDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExchangeRateWarningDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExchangeRateWarningDto> get serializer =>
      _$ExchangeRateWarningDtoSerializer();
}

class _$ExchangeRateWarningDtoSerializer
    implements PrimitiveSerializer<ExchangeRateWarningDto> {
  @override
  final Iterable<Type> types = const [
    ExchangeRateWarningDto,
    _$ExchangeRateWarningDto
  ];

  @override
  final String wireName = r'ExchangeRateWarningDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExchangeRateWarningDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExchangeRateWarningDto object, {
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
    required ExchangeRateWarningDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExchangeRateWarningDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExchangeRateWarningDtoBuilder();
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
