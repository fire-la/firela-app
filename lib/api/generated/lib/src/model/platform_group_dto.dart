//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/account_item_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/balance_by_currency_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_group_dto.g.dart';

/// PlatformGroupDto
///
/// Properties:
/// * [platformId] - Platform ID
/// * [platformName] - Platform display name
/// * [accounts] - Accounts within this platform
/// * [totalBalance] - FX-converted total balance in base currency
/// * [balanceByCurrency] - Raw (unconverted) balances grouped by currency
/// * [convertedBalance] - Converted balance in base currency (omitted when no currency is convertible)
/// * [sharePct] - Share of the grand converted total (0-100); 0 when grand total is 0
@BuiltValue()
abstract class PlatformGroupDto implements Built<PlatformGroupDto, PlatformGroupDtoBuilder> {
  /// Platform ID
  @BuiltValueField(wireName: r'platformId')
  String get platformId;

  /// Platform display name
  @BuiltValueField(wireName: r'platformName')
  String get platformName;

  /// Accounts within this platform
  @BuiltValueField(wireName: r'accounts')
  BuiltList<AccountItemDto> get accounts;

  /// FX-converted total balance in base currency
  @BuiltValueField(wireName: r'totalBalance')
  String get totalBalance;

  /// Raw (unconverted) balances grouped by currency
  @BuiltValueField(wireName: r'balanceByCurrency')
  BuiltList<BalanceByCurrencyDto> get balanceByCurrency;

  /// Converted balance in base currency (omitted when no currency is convertible)
  @BuiltValueField(wireName: r'convertedBalance')
  String? get convertedBalance;

  /// Share of the grand converted total (0-100); 0 when grand total is 0
  @BuiltValueField(wireName: r'sharePct')
  num get sharePct;

  PlatformGroupDto._();

  factory PlatformGroupDto([void updates(PlatformGroupDtoBuilder b)]) = _$PlatformGroupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformGroupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformGroupDto> get serializer => _$PlatformGroupDtoSerializer();
}

class _$PlatformGroupDtoSerializer implements PrimitiveSerializer<PlatformGroupDto> {
  @override
  final Iterable<Type> types = const [PlatformGroupDto, _$PlatformGroupDto];

  @override
  final String wireName = r'PlatformGroupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platformId';
    yield serializers.serialize(
      object.platformId,
      specifiedType: const FullType(String),
    );
    yield r'platformName';
    yield serializers.serialize(
      object.platformName,
      specifiedType: const FullType(String),
    );
    yield r'accounts';
    yield serializers.serialize(
      object.accounts,
      specifiedType: const FullType(BuiltList, [FullType(AccountItemDto)]),
    );
    yield r'totalBalance';
    yield serializers.serialize(
      object.totalBalance,
      specifiedType: const FullType(String),
    );
    yield r'balanceByCurrency';
    yield serializers.serialize(
      object.balanceByCurrency,
      specifiedType: const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    if (object.convertedBalance != null) {
      yield r'convertedBalance';
      yield serializers.serialize(
        object.convertedBalance,
        specifiedType: const FullType(String),
      );
    }
    yield r'sharePct';
    yield serializers.serialize(
      object.sharePct,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformGroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlatformGroupDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platformId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platformId = valueDes;
          break;
        case r'platformName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platformName = valueDes;
          break;
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AccountItemDto)]),
          ) as BuiltList<AccountItemDto>;
          result.accounts.replace(valueDes);
          break;
        case r'totalBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalBalance = valueDes;
          break;
        case r'balanceByCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.balanceByCurrency.replace(valueDes);
          break;
        case r'convertedBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.convertedBalance = valueDes;
          break;
        case r'sharePct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.sharePct = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformGroupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformGroupDtoBuilder();
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

