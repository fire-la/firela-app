//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/holding_asset_class_account_slice_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/asset_class_accounts_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_asset_class_cross_account_response_dto.g.dart';

/// HoldingAssetClassCrossAccountResponseDto
///
/// Properties:
/// * [global] 
/// * [byAccount] - Per-account slices
@BuiltValue()
abstract class HoldingAssetClassCrossAccountResponseDto implements Built<HoldingAssetClassCrossAccountResponseDto, HoldingAssetClassCrossAccountResponseDtoBuilder> {
  @BuiltValueField(wireName: r'global')
  AssetClassAccountsResponseDto get global;

  /// Per-account slices
  @BuiltValueField(wireName: r'byAccount')
  BuiltList<HoldingAssetClassAccountSliceDto> get byAccount;

  HoldingAssetClassCrossAccountResponseDto._();

  factory HoldingAssetClassCrossAccountResponseDto([void updates(HoldingAssetClassCrossAccountResponseDtoBuilder b)]) = _$HoldingAssetClassCrossAccountResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingAssetClassCrossAccountResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingAssetClassCrossAccountResponseDto> get serializer => _$HoldingAssetClassCrossAccountResponseDtoSerializer();
}

class _$HoldingAssetClassCrossAccountResponseDtoSerializer implements PrimitiveSerializer<HoldingAssetClassCrossAccountResponseDto> {
  @override
  final Iterable<Type> types = const [HoldingAssetClassCrossAccountResponseDto, _$HoldingAssetClassCrossAccountResponseDto];

  @override
  final String wireName = r'HoldingAssetClassCrossAccountResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingAssetClassCrossAccountResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'global';
    yield serializers.serialize(
      object.global,
      specifiedType: const FullType(AssetClassAccountsResponseDto),
    );
    yield r'byAccount';
    yield serializers.serialize(
      object.byAccount,
      specifiedType: const FullType(BuiltList, [FullType(HoldingAssetClassAccountSliceDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingAssetClassCrossAccountResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingAssetClassCrossAccountResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'global':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssetClassAccountsResponseDto),
          ) as AssetClassAccountsResponseDto;
          result.global.replace(valueDes);
          break;
        case r'byAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HoldingAssetClassAccountSliceDto)]),
          ) as BuiltList<HoldingAssetClassAccountSliceDto>;
          result.byAccount.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingAssetClassCrossAccountResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingAssetClassCrossAccountResponseDtoBuilder();
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

