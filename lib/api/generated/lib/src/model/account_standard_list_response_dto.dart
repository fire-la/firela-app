//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/account_standard_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_standard_list_response_dto.g.dart';

/// AccountStandardListResponseDto
///
/// Properties:
/// * [items] - Array of account templates
/// * [total] - Total number of account templates
/// * [region] - Region code
@BuiltValue()
abstract class AccountStandardListResponseDto
    implements
        Built<AccountStandardListResponseDto,
            AccountStandardListResponseDtoBuilder> {
  /// Array of account templates
  @BuiltValueField(wireName: r'items')
  BuiltList<AccountStandardResponseDto> get items;

  /// Total number of account templates
  @BuiltValueField(wireName: r'total')
  num get total;

  /// Region code
  @BuiltValueField(wireName: r'region')
  String get region;

  AccountStandardListResponseDto._();

  factory AccountStandardListResponseDto(
          [void updates(AccountStandardListResponseDtoBuilder b)]) =
      _$AccountStandardListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountStandardListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountStandardListResponseDto> get serializer =>
      _$AccountStandardListResponseDtoSerializer();
}

class _$AccountStandardListResponseDtoSerializer
    implements PrimitiveSerializer<AccountStandardListResponseDto> {
  @override
  final Iterable<Type> types = const [
    AccountStandardListResponseDto,
    _$AccountStandardListResponseDto
  ];

  @override
  final String wireName = r'AccountStandardListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountStandardListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(AccountStandardResponseDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountStandardListResponseDto object, {
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
    required AccountStandardListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(AccountStandardResponseDto)]),
          ) as BuiltList<AccountStandardResponseDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.region = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountStandardListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountStandardListResponseDtoBuilder();
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
