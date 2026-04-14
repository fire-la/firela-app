//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/transaction_rule_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_rule_list_response_dto.g.dart';

/// TransactionRuleListResponseDto
///
/// Properties:
/// * [data]
/// * [total] - Total count of rules
/// * [limit] - Results per page
/// * [offset] - Pagination offset
@BuiltValue()
abstract class TransactionRuleListResponseDto
    implements
        Built<TransactionRuleListResponseDto,
            TransactionRuleListResponseDtoBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<TransactionRuleResponseDto> get data;

  /// Total count of rules
  @BuiltValueField(wireName: r'total')
  num get total;

  /// Results per page
  @BuiltValueField(wireName: r'limit')
  num get limit;

  /// Pagination offset
  @BuiltValueField(wireName: r'offset')
  num get offset;

  TransactionRuleListResponseDto._();

  factory TransactionRuleListResponseDto(
          [void updates(TransactionRuleListResponseDtoBuilder b)]) =
      _$TransactionRuleListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionRuleListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionRuleListResponseDto> get serializer =>
      _$TransactionRuleListResponseDtoSerializer();
}

class _$TransactionRuleListResponseDtoSerializer
    implements PrimitiveSerializer<TransactionRuleListResponseDto> {
  @override
  final Iterable<Type> types = const [
    TransactionRuleListResponseDto,
    _$TransactionRuleListResponseDto
  ];

  @override
  final String wireName = r'TransactionRuleListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionRuleListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType:
          const FullType(BuiltList, [FullType(TransactionRuleResponseDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(num),
    );
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionRuleListResponseDto object, {
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
    required TransactionRuleListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(TransactionRuleResponseDto)]),
          ) as BuiltList<TransactionRuleResponseDto>;
          result.data.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.limit = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.offset = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransactionRuleListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionRuleListResponseDtoBuilder();
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
