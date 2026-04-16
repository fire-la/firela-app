//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_source_transaction_dto.g.dart';

/// NlpSourceTransactionDto
///
/// Properties:
/// * [date] - Transaction date (ISO format)
/// * [amount] - Amount as string
/// * [currency] - Currency code
/// * [narration] - Transaction narration
/// * [payee] - Payee name
@BuiltValue()
abstract class NlpSourceTransactionDto
    implements Built<NlpSourceTransactionDto, NlpSourceTransactionDtoBuilder> {
  /// Transaction date (ISO format)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Amount as string
  @BuiltValueField(wireName: r'amount')
  String get amount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Transaction narration
  @BuiltValueField(wireName: r'narration')
  String get narration;

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  NlpSourceTransactionDto._();

  factory NlpSourceTransactionDto(
          [void updates(NlpSourceTransactionDtoBuilder b)]) =
      _$NlpSourceTransactionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpSourceTransactionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpSourceTransactionDto> get serializer =>
      _$NlpSourceTransactionDtoSerializer();
}

class _$NlpSourceTransactionDtoSerializer
    implements PrimitiveSerializer<NlpSourceTransactionDto> {
  @override
  final Iterable<Type> types = const [
    NlpSourceTransactionDto,
    _$NlpSourceTransactionDto
  ];

  @override
  final String wireName = r'NlpSourceTransactionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpSourceTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpSourceTransactionDto object, {
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
    required NlpSourceTransactionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpSourceTransactionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpSourceTransactionDtoBuilder();
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
