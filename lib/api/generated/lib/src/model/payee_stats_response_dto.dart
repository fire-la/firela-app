//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_stats_response_dto.g.dart';

/// PayeeStatsResponseDto
///
/// Properties:
/// * [payee] - Payee name
/// * [transactionCount] - Total transaction count
/// * [lastUsedAt] - Last used timestamp
@BuiltValue()
abstract class PayeeStatsResponseDto
    implements Built<PayeeStatsResponseDto, PayeeStatsResponseDtoBuilder> {
  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String get payee;

  /// Total transaction count
  @BuiltValueField(wireName: r'transactionCount')
  num get transactionCount;

  /// Last used timestamp
  @BuiltValueField(wireName: r'lastUsedAt')
  DateTime get lastUsedAt;

  PayeeStatsResponseDto._();

  factory PayeeStatsResponseDto(
      [void updates(PayeeStatsResponseDtoBuilder b)]) = _$PayeeStatsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeStatsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeStatsResponseDto> get serializer =>
      _$PayeeStatsResponseDtoSerializer();
}

class _$PayeeStatsResponseDtoSerializer
    implements PrimitiveSerializer<PayeeStatsResponseDto> {
  @override
  final Iterable<Type> types = const [
    PayeeStatsResponseDto,
    _$PayeeStatsResponseDto
  ];

  @override
  final String wireName = r'PayeeStatsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeStatsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'payee';
    yield serializers.serialize(
      object.payee,
      specifiedType: const FullType(String),
    );
    yield r'transactionCount';
    yield serializers.serialize(
      object.transactionCount,
      specifiedType: const FullType(num),
    );
    yield r'lastUsedAt';
    yield serializers.serialize(
      object.lastUsedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PayeeStatsResponseDto object, {
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
    required PayeeStatsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'transactionCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.transactionCount = valueDes;
          break;
        case r'lastUsedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUsedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayeeStatsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeStatsResponseDtoBuilder();
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
