//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/accounts_summary_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/platform_group_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'accounts_response_dto.g.dart';

/// AccountsResponseDto
///
/// Properties:
/// * [groups] - Account groups by platform
/// * [summary]
@BuiltValue()
abstract class AccountsResponseDto
    implements Built<AccountsResponseDto, AccountsResponseDtoBuilder> {
  /// Account groups by platform
  @BuiltValueField(wireName: r'groups')
  BuiltList<PlatformGroupDto> get groups;

  @BuiltValueField(wireName: r'summary')
  AccountsSummaryDto get summary;

  AccountsResponseDto._();

  factory AccountsResponseDto([void updates(AccountsResponseDtoBuilder b)]) =
      _$AccountsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountsResponseDto> get serializer =>
      _$AccountsResponseDtoSerializer();
}

class _$AccountsResponseDtoSerializer
    implements PrimitiveSerializer<AccountsResponseDto> {
  @override
  final Iterable<Type> types = const [
    AccountsResponseDto,
    _$AccountsResponseDto
  ];

  @override
  final String wireName = r'AccountsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(BuiltList, [FullType(PlatformGroupDto)]),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(AccountsSummaryDto),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountsResponseDto object, {
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
    required AccountsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PlatformGroupDto)]),
          ) as BuiltList<PlatformGroupDto>;
          result.groups.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountsSummaryDto),
          ) as AccountsSummaryDto;
          result.summary.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountsResponseDtoBuilder();
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
