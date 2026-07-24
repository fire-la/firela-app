//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reconciliation_compute_result_dto.g.dart';

/// ReconciliationComputeResultDto
///
/// Properties:
/// * [accountId] 
/// * [asOfDate] 
/// * [bookBalance] - System-computed book balance (decimal string).
/// * [actualBalance] - User-entered actual balance (decimal string).
/// * [currency] 
/// * [diff] - Diff = book − actual (decimal string).
/// * [tolerance] - Applied tolerance (decimal string).
/// * [withinTolerance] - true when |diff| ≤ tolerance.
/// * [suggestedAction] - Suggested next action: assert when within tolerance, pad otherwise.
@BuiltValue()
abstract class ReconciliationComputeResultDto implements Built<ReconciliationComputeResultDto, ReconciliationComputeResultDtoBuilder> {
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  @BuiltValueField(wireName: r'asOfDate')
  String get asOfDate;

  /// System-computed book balance (decimal string).
  @BuiltValueField(wireName: r'bookBalance')
  String get bookBalance;

  /// User-entered actual balance (decimal string).
  @BuiltValueField(wireName: r'actualBalance')
  String get actualBalance;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Diff = book − actual (decimal string).
  @BuiltValueField(wireName: r'diff')
  String get diff;

  /// Applied tolerance (decimal string).
  @BuiltValueField(wireName: r'tolerance')
  String get tolerance;

  /// true when |diff| ≤ tolerance.
  @BuiltValueField(wireName: r'withinTolerance')
  bool get withinTolerance;

  /// Suggested next action: assert when within tolerance, pad otherwise.
  @BuiltValueField(wireName: r'suggestedAction')
  ReconciliationComputeResultDtoSuggestedActionEnum get suggestedAction;
  // enum suggestedActionEnum {  assert,  pad,  };

  ReconciliationComputeResultDto._();

  factory ReconciliationComputeResultDto([void updates(ReconciliationComputeResultDtoBuilder b)]) = _$ReconciliationComputeResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReconciliationComputeResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReconciliationComputeResultDto> get serializer => _$ReconciliationComputeResultDtoSerializer();
}

class _$ReconciliationComputeResultDtoSerializer implements PrimitiveSerializer<ReconciliationComputeResultDto> {
  @override
  final Iterable<Type> types = const [ReconciliationComputeResultDto, _$ReconciliationComputeResultDto];

  @override
  final String wireName = r'ReconciliationComputeResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReconciliationComputeResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    yield r'asOfDate';
    yield serializers.serialize(
      object.asOfDate,
      specifiedType: const FullType(String),
    );
    yield r'bookBalance';
    yield serializers.serialize(
      object.bookBalance,
      specifiedType: const FullType(String),
    );
    yield r'actualBalance';
    yield serializers.serialize(
      object.actualBalance,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'diff';
    yield serializers.serialize(
      object.diff,
      specifiedType: const FullType(String),
    );
    yield r'tolerance';
    yield serializers.serialize(
      object.tolerance,
      specifiedType: const FullType(String),
    );
    yield r'withinTolerance';
    yield serializers.serialize(
      object.withinTolerance,
      specifiedType: const FullType(bool),
    );
    yield r'suggestedAction';
    yield serializers.serialize(
      object.suggestedAction,
      specifiedType: const FullType(ReconciliationComputeResultDtoSuggestedActionEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReconciliationComputeResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReconciliationComputeResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
          break;
        case r'asOfDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.asOfDate = valueDes;
          break;
        case r'bookBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bookBalance = valueDes;
          break;
        case r'actualBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.actualBalance = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'diff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.diff = valueDes;
          break;
        case r'tolerance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tolerance = valueDes;
          break;
        case r'withinTolerance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.withinTolerance = valueDes;
          break;
        case r'suggestedAction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReconciliationComputeResultDtoSuggestedActionEnum),
          ) as ReconciliationComputeResultDtoSuggestedActionEnum;
          result.suggestedAction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReconciliationComputeResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReconciliationComputeResultDtoBuilder();
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

class ReconciliationComputeResultDtoSuggestedActionEnum extends EnumClass {

  /// Suggested next action: assert when within tolerance, pad otherwise.
  @BuiltValueEnumConst(wireName: r'assert')
  static const ReconciliationComputeResultDtoSuggestedActionEnum assert_ = _$reconciliationComputeResultDtoSuggestedActionEnum_assert_;
  /// Suggested next action: assert when within tolerance, pad otherwise.
  @BuiltValueEnumConst(wireName: r'pad')
  static const ReconciliationComputeResultDtoSuggestedActionEnum pad = _$reconciliationComputeResultDtoSuggestedActionEnum_pad;

  static Serializer<ReconciliationComputeResultDtoSuggestedActionEnum> get serializer => _$reconciliationComputeResultDtoSuggestedActionEnumSerializer;

  const ReconciliationComputeResultDtoSuggestedActionEnum._(String name): super(name);

  static BuiltSet<ReconciliationComputeResultDtoSuggestedActionEnum> get values => _$reconciliationComputeResultDtoSuggestedActionEnumValues;
  static ReconciliationComputeResultDtoSuggestedActionEnum valueOf(String name) => _$reconciliationComputeResultDtoSuggestedActionEnumValueOf(name);
}

