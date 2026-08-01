//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'opening_balance_result_dto.g.dart';

/// OpeningBalanceResultDto
///
/// Properties:
/// * [transactionId] - Created opening-balance transaction id.
@BuiltValue()
abstract class OpeningBalanceResultDto implements Built<OpeningBalanceResultDto, OpeningBalanceResultDtoBuilder> {
  /// Created opening-balance transaction id.
  @BuiltValueField(wireName: r'transactionId')
  String get transactionId;

  OpeningBalanceResultDto._();

  factory OpeningBalanceResultDto([void updates(OpeningBalanceResultDtoBuilder b)]) = _$OpeningBalanceResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OpeningBalanceResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OpeningBalanceResultDto> get serializer => _$OpeningBalanceResultDtoSerializer();
}

class _$OpeningBalanceResultDtoSerializer implements PrimitiveSerializer<OpeningBalanceResultDto> {
  @override
  final Iterable<Type> types = const [OpeningBalanceResultDto, _$OpeningBalanceResultDto];

  @override
  final String wireName = r'OpeningBalanceResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OpeningBalanceResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transactionId';
    yield serializers.serialize(
      object.transactionId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OpeningBalanceResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OpeningBalanceResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transactionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OpeningBalanceResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpeningBalanceResultDtoBuilder();
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

