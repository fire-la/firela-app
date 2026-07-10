//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/account_item_with_asset_class_dto.dart';
import 'package:firela_api/src/model/asset_class_group_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_asset_class_account_slice_dto.g.dart';

/// HoldingAssetClassAccountSliceDto
///
/// Properties:
/// * [accountId] - Account ID
/// * [accountPath] - Full account path
/// * [accountCurrency] - Currency of the holding with the largest converted base value; undefined when no holding is convertible
/// * [marketValueBase] - Account's market value in base currency (Σ converted holdings; grey bucket included)
/// * [shareOfTotalPct] - Share of the global total (0-100). 0 when globalTotal is zero (no NaN/Infinity).
/// * [groups] - Per-account asset-class breakdown
/// * [uncategorized] 
/// * [holdings] - Every holding row for this account (account ID in each row’s `id` field)
@BuiltValue()
abstract class HoldingAssetClassAccountSliceDto implements Built<HoldingAssetClassAccountSliceDto, HoldingAssetClassAccountSliceDtoBuilder> {
  /// Account ID
  @BuiltValueField(wireName: r'accountId')
  String get accountId;

  /// Full account path
  @BuiltValueField(wireName: r'accountPath')
  String get accountPath;

  /// Currency of the holding with the largest converted base value; undefined when no holding is convertible
  @BuiltValueField(wireName: r'accountCurrency')
  String? get accountCurrency;

  /// Account's market value in base currency (Σ converted holdings; grey bucket included)
  @BuiltValueField(wireName: r'marketValueBase')
  String get marketValueBase;

  /// Share of the global total (0-100). 0 when globalTotal is zero (no NaN/Infinity).
  @BuiltValueField(wireName: r'shareOfTotalPct')
  num get shareOfTotalPct;

  /// Per-account asset-class breakdown
  @BuiltValueField(wireName: r'groups')
  BuiltList<AssetClassGroupDto> get groups;

  @BuiltValueField(wireName: r'uncategorized')
  AssetClassGroupDto? get uncategorized;

  /// Every holding row for this account (account ID in each row’s `id` field)
  @BuiltValueField(wireName: r'holdings')
  BuiltList<AccountItemWithAssetClassDto> get holdings;

  HoldingAssetClassAccountSliceDto._();

  factory HoldingAssetClassAccountSliceDto([void updates(HoldingAssetClassAccountSliceDtoBuilder b)]) = _$HoldingAssetClassAccountSliceDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingAssetClassAccountSliceDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingAssetClassAccountSliceDto> get serializer => _$HoldingAssetClassAccountSliceDtoSerializer();
}

class _$HoldingAssetClassAccountSliceDtoSerializer implements PrimitiveSerializer<HoldingAssetClassAccountSliceDto> {
  @override
  final Iterable<Type> types = const [HoldingAssetClassAccountSliceDto, _$HoldingAssetClassAccountSliceDto];

  @override
  final String wireName = r'HoldingAssetClassAccountSliceDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingAssetClassAccountSliceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(String),
    );
    yield r'accountPath';
    yield serializers.serialize(
      object.accountPath,
      specifiedType: const FullType(String),
    );
    if (object.accountCurrency != null) {
      yield r'accountCurrency';
      yield serializers.serialize(
        object.accountCurrency,
        specifiedType: const FullType(String),
      );
    }
    yield r'marketValueBase';
    yield serializers.serialize(
      object.marketValueBase,
      specifiedType: const FullType(String),
    );
    yield r'shareOfTotalPct';
    yield serializers.serialize(
      object.shareOfTotalPct,
      specifiedType: const FullType(num),
    );
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(BuiltList, [FullType(AssetClassGroupDto)]),
    );
    if (object.uncategorized != null) {
      yield r'uncategorized';
      yield serializers.serialize(
        object.uncategorized,
        specifiedType: const FullType(AssetClassGroupDto),
      );
    }
    yield r'holdings';
    yield serializers.serialize(
      object.holdings,
      specifiedType: const FullType(BuiltList, [FullType(AccountItemWithAssetClassDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingAssetClassAccountSliceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingAssetClassAccountSliceDtoBuilder result,
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
        case r'accountPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountPath = valueDes;
          break;
        case r'accountCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountCurrency = valueDes;
          break;
        case r'marketValueBase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.marketValueBase = valueDes;
          break;
        case r'shareOfTotalPct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.shareOfTotalPct = valueDes;
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AssetClassGroupDto)]),
          ) as BuiltList<AssetClassGroupDto>;
          result.groups.replace(valueDes);
          break;
        case r'uncategorized':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssetClassGroupDto),
          ) as AssetClassGroupDto;
          result.uncategorized.replace(valueDes);
          break;
        case r'holdings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AccountItemWithAssetClassDto)]),
          ) as BuiltList<AccountItemWithAssetClassDto>;
          result.holdings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingAssetClassAccountSliceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingAssetClassAccountSliceDtoBuilder();
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

