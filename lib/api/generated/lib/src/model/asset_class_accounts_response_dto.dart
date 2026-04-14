//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/asset_class_group_dto.dart';
import 'package:firela_api/src/model/asset_class_summary_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_class_accounts_response_dto.g.dart';

/// AssetClassAccountsResponseDto
///
/// Properties:
/// * [groups] - Account groups by asset class
/// * [summary]
@BuiltValue()
abstract class AssetClassAccountsResponseDto
    implements
        Built<AssetClassAccountsResponseDto,
            AssetClassAccountsResponseDtoBuilder> {
  /// Account groups by asset class
  @BuiltValueField(wireName: r'groups')
  BuiltList<AssetClassGroupDto> get groups;

  @BuiltValueField(wireName: r'summary')
  AssetClassSummaryDto get summary;

  AssetClassAccountsResponseDto._();

  factory AssetClassAccountsResponseDto(
          [void updates(AssetClassAccountsResponseDtoBuilder b)]) =
      _$AssetClassAccountsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetClassAccountsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetClassAccountsResponseDto> get serializer =>
      _$AssetClassAccountsResponseDtoSerializer();
}

class _$AssetClassAccountsResponseDtoSerializer
    implements PrimitiveSerializer<AssetClassAccountsResponseDto> {
  @override
  final Iterable<Type> types = const [
    AssetClassAccountsResponseDto,
    _$AssetClassAccountsResponseDto
  ];

  @override
  final String wireName = r'AssetClassAccountsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetClassAccountsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(BuiltList, [FullType(AssetClassGroupDto)]),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(AssetClassSummaryDto),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AssetClassAccountsResponseDto object, {
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
    required AssetClassAccountsResponseDtoBuilder result,
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
                const FullType(BuiltList, [FullType(AssetClassGroupDto)]),
          ) as BuiltList<AssetClassGroupDto>;
          result.groups.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssetClassSummaryDto),
          ) as AssetClassSummaryDto;
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
  AssetClassAccountsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetClassAccountsResponseDtoBuilder();
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
