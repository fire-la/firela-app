//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_transaction_info_dto.g.dart';

/// NlpTransactionInfoDto
///
/// Properties:
/// * [id] - Transaction ID
/// * [date] - Transaction date (ISO format)
/// * [amount] - Transaction amount
/// * [currency] - Currency code
/// * [payee] - Payee name
/// * [narration] - Transaction narration
/// * [warning] - Warning message for special transaction scenarios (e.g., cross-currency settlement)
@BuiltValue()
abstract class NlpTransactionInfoDto
    implements Built<NlpTransactionInfoDto, NlpTransactionInfoDtoBuilder> {
  /// Transaction ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Transaction date (ISO format)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Transaction amount
  @BuiltValueField(wireName: r'amount')
  num get amount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Transaction narration
  @BuiltValueField(wireName: r'narration')
  String? get narration;

  /// Warning message for special transaction scenarios (e.g., cross-currency settlement)
  @BuiltValueField(wireName: r'warning')
  String? get warning;

  NlpTransactionInfoDto._();

  factory NlpTransactionInfoDto(
      [void updates(NlpTransactionInfoDtoBuilder b)]) = _$NlpTransactionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpTransactionInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpTransactionInfoDto> get serializer =>
      _$NlpTransactionInfoDtoSerializer();
}

class _$NlpTransactionInfoDtoSerializer
    implements PrimitiveSerializer<NlpTransactionInfoDto> {
  @override
  final Iterable<Type> types = const [
    NlpTransactionInfoDto,
    _$NlpTransactionInfoDto
  ];

  @override
  final String wireName = r'NlpTransactionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpTransactionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    if (object.narration != null) {
      yield r'narration';
      yield serializers.serialize(
        object.narration,
        specifiedType: const FullType(String),
      );
    }
    if (object.warning != null) {
      yield r'warning';
      yield serializers.serialize(
        object.warning,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpTransactionInfoDto object, {
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
    required NlpTransactionInfoDtoBuilder result,
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
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.warning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpTransactionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpTransactionInfoDtoBuilder();
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
