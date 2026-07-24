//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reconciliation_record_dto.g.dart';

/// ReconciliationRecordDto
///
/// Properties:
/// * [id] 
/// * [accountId] 
/// * [date] 
/// * [amount] - Asserted (actual) amount.
/// * [currency] 
/// * [tolerance] 
/// * [diffAmount] - book − actual.
/// * [diffCurrency] 
/// * [createdAt] 
@BuiltValue()
abstract class ReconciliationRecordDto implements Built<ReconciliationRecordDto, ReconciliationRecordDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  @BuiltValueField(wireName: r'date')
  String get date;

  /// Asserted (actual) amount.
  @BuiltValueField(wireName: r'amount')
  String get amount;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'tolerance')
  String? get tolerance;

  /// book − actual.
  @BuiltValueField(wireName: r'diffAmount')
  String? get diffAmount;

  @BuiltValueField(wireName: r'diffCurrency')
  String? get diffCurrency;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  ReconciliationRecordDto._();

  factory ReconciliationRecordDto([void updates(ReconciliationRecordDtoBuilder b)]) = _$ReconciliationRecordDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReconciliationRecordDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReconciliationRecordDto> get serializer => _$ReconciliationRecordDtoSerializer();
}

class _$ReconciliationRecordDtoSerializer implements PrimitiveSerializer<ReconciliationRecordDto> {
  @override
  final Iterable<Type> types = const [ReconciliationRecordDto, _$ReconciliationRecordDto];

  @override
  final String wireName = r'ReconciliationRecordDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReconciliationRecordDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
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
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.tolerance != null) {
      yield r'tolerance';
      yield serializers.serialize(
        object.tolerance,
        specifiedType: const FullType(String),
      );
    }
    if (object.diffAmount != null) {
      yield r'diffAmount';
      yield serializers.serialize(
        object.diffAmount,
        specifiedType: const FullType(String),
      );
    }
    if (object.diffCurrency != null) {
      yield r'diffCurrency';
      yield serializers.serialize(
        object.diffCurrency,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReconciliationRecordDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReconciliationRecordDtoBuilder result,
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
        case r'tolerance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tolerance = valueDes;
          break;
        case r'diffAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.diffAmount = valueDes;
          break;
        case r'diffCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.diffCurrency = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReconciliationRecordDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReconciliationRecordDtoBuilder();
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

