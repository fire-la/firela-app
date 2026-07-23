//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/account_exchange_rate_warning_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'accounts_summary_dto.g.dart';

/// AccountsSummaryDto
///
/// Properties:
/// * [totalAccounts] - Total number of accounts
/// * [totalPlatforms] - Total number of platforms
/// * [baseCurrency] - Base currency for conversion
/// * [warnings] - Per-account exchange rate warnings
@BuiltValue()
abstract class AccountsSummaryDto implements Built<AccountsSummaryDto, AccountsSummaryDtoBuilder> {
  /// Total number of accounts
  @BuiltValueField(wireName: r'totalAccounts')
  num get totalAccounts;

  /// Total number of platforms
  @BuiltValueField(wireName: r'totalPlatforms')
  num get totalPlatforms;

  /// Base currency for conversion
  @BuiltValueField(wireName: r'baseCurrency')
  String get baseCurrency;

  /// Per-account exchange rate warnings
  @BuiltValueField(wireName: r'warnings')
  BuiltList<AccountExchangeRateWarningDto>? get warnings;

  AccountsSummaryDto._();

  factory AccountsSummaryDto([void updates(AccountsSummaryDtoBuilder b)]) = _$AccountsSummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountsSummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountsSummaryDto> get serializer => _$AccountsSummaryDtoSerializer();
}

class _$AccountsSummaryDtoSerializer implements PrimitiveSerializer<AccountsSummaryDto> {
  @override
  final Iterable<Type> types = const [AccountsSummaryDto, _$AccountsSummaryDto];

  @override
  final String wireName = r'AccountsSummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountsSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totalAccounts';
    yield serializers.serialize(
      object.totalAccounts,
      specifiedType: const FullType(num),
    );
    yield r'totalPlatforms';
    yield serializers.serialize(
      object.totalPlatforms,
      specifiedType: const FullType(num),
    );
    yield r'baseCurrency';
    yield serializers.serialize(
      object.baseCurrency,
      specifiedType: const FullType(String),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(AccountExchangeRateWarningDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountsSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountsSummaryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalAccounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalAccounts = valueDes;
          break;
        case r'totalPlatforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalPlatforms = valueDes;
          break;
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AccountExchangeRateWarningDto)]),
          ) as BuiltList<AccountExchangeRateWarningDto>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountsSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountsSummaryDtoBuilder();
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

