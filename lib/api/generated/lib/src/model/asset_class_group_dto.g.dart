// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_class_group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_LIQUIDITY =
    const AssetClassGroupDtoAssetClassEnum._('LIQUIDITY');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_EQUITY =
    const AssetClassGroupDtoAssetClassEnum._('EQUITY');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_FIXED_INCOME =
    const AssetClassGroupDtoAssetClassEnum._('FIXED_INCOME');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_PRECIOUS_METALS =
    const AssetClassGroupDtoAssetClassEnum._('PRECIOUS_METALS');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_COMMODITY =
    const AssetClassGroupDtoAssetClassEnum._('COMMODITY');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_INSURANCE =
    const AssetClassGroupDtoAssetClassEnum._('INSURANCE');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_ALTERNATIVE_INVESTMENT =
    const AssetClassGroupDtoAssetClassEnum._('ALTERNATIVE_INVESTMENT');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_PERSONAL_ASSETS =
    const AssetClassGroupDtoAssetClassEnum._('PERSONAL_ASSETS');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_LIABILITY =
    const AssetClassGroupDtoAssetClassEnum._('LIABILITY');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_REAL_ESTATE =
    const AssetClassGroupDtoAssetClassEnum._('REAL_ESTATE');
const AssetClassGroupDtoAssetClassEnum
    _$assetClassGroupDtoAssetClassEnum_INDEX =
    const AssetClassGroupDtoAssetClassEnum._('INDEX');

AssetClassGroupDtoAssetClassEnum _$assetClassGroupDtoAssetClassEnumValueOf(
    String name) {
  switch (name) {
    case 'LIQUIDITY':
      return _$assetClassGroupDtoAssetClassEnum_LIQUIDITY;
    case 'EQUITY':
      return _$assetClassGroupDtoAssetClassEnum_EQUITY;
    case 'FIXED_INCOME':
      return _$assetClassGroupDtoAssetClassEnum_FIXED_INCOME;
    case 'PRECIOUS_METALS':
      return _$assetClassGroupDtoAssetClassEnum_PRECIOUS_METALS;
    case 'COMMODITY':
      return _$assetClassGroupDtoAssetClassEnum_COMMODITY;
    case 'INSURANCE':
      return _$assetClassGroupDtoAssetClassEnum_INSURANCE;
    case 'ALTERNATIVE_INVESTMENT':
      return _$assetClassGroupDtoAssetClassEnum_ALTERNATIVE_INVESTMENT;
    case 'PERSONAL_ASSETS':
      return _$assetClassGroupDtoAssetClassEnum_PERSONAL_ASSETS;
    case 'LIABILITY':
      return _$assetClassGroupDtoAssetClassEnum_LIABILITY;
    case 'REAL_ESTATE':
      return _$assetClassGroupDtoAssetClassEnum_REAL_ESTATE;
    case 'INDEX':
      return _$assetClassGroupDtoAssetClassEnum_INDEX;
    default:
      return _$assetClassGroupDtoAssetClassEnum_INDEX;
  }
}

final BuiltSet<AssetClassGroupDtoAssetClassEnum>
    _$assetClassGroupDtoAssetClassEnumValues = new BuiltSet<
        AssetClassGroupDtoAssetClassEnum>(const <AssetClassGroupDtoAssetClassEnum>[
  _$assetClassGroupDtoAssetClassEnum_LIQUIDITY,
  _$assetClassGroupDtoAssetClassEnum_EQUITY,
  _$assetClassGroupDtoAssetClassEnum_FIXED_INCOME,
  _$assetClassGroupDtoAssetClassEnum_PRECIOUS_METALS,
  _$assetClassGroupDtoAssetClassEnum_COMMODITY,
  _$assetClassGroupDtoAssetClassEnum_INSURANCE,
  _$assetClassGroupDtoAssetClassEnum_ALTERNATIVE_INVESTMENT,
  _$assetClassGroupDtoAssetClassEnum_PERSONAL_ASSETS,
  _$assetClassGroupDtoAssetClassEnum_LIABILITY,
  _$assetClassGroupDtoAssetClassEnum_REAL_ESTATE,
  _$assetClassGroupDtoAssetClassEnum_INDEX,
]);

Serializer<AssetClassGroupDtoAssetClassEnum>
    _$assetClassGroupDtoAssetClassEnumSerializer =
    new _$AssetClassGroupDtoAssetClassEnumSerializer();

class _$AssetClassGroupDtoAssetClassEnumSerializer
    implements PrimitiveSerializer<AssetClassGroupDtoAssetClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LIQUIDITY': 'LIQUIDITY',
    'EQUITY': 'EQUITY',
    'FIXED_INCOME': 'FIXED_INCOME',
    'PRECIOUS_METALS': 'PRECIOUS_METALS',
    'COMMODITY': 'COMMODITY',
    'INSURANCE': 'INSURANCE',
    'ALTERNATIVE_INVESTMENT': 'ALTERNATIVE_INVESTMENT',
    'PERSONAL_ASSETS': 'PERSONAL_ASSETS',
    'LIABILITY': 'LIABILITY',
    'REAL_ESTATE': 'REAL_ESTATE',
    'INDEX': 'INDEX',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LIQUIDITY': 'LIQUIDITY',
    'EQUITY': 'EQUITY',
    'FIXED_INCOME': 'FIXED_INCOME',
    'PRECIOUS_METALS': 'PRECIOUS_METALS',
    'COMMODITY': 'COMMODITY',
    'INSURANCE': 'INSURANCE',
    'ALTERNATIVE_INVESTMENT': 'ALTERNATIVE_INVESTMENT',
    'PERSONAL_ASSETS': 'PERSONAL_ASSETS',
    'LIABILITY': 'LIABILITY',
    'REAL_ESTATE': 'REAL_ESTATE',
    'INDEX': 'INDEX',
  };

  @override
  final Iterable<Type> types = const <Type>[AssetClassGroupDtoAssetClassEnum];
  @override
  final String wireName = 'AssetClassGroupDtoAssetClassEnum';

  @override
  Object serialize(
          Serializers serializers, AssetClassGroupDtoAssetClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AssetClassGroupDtoAssetClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssetClassGroupDtoAssetClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AssetClassGroupDto extends AssetClassGroupDto {
  @override
  final AssetClassGroupDtoAssetClassEnum assetClass;
  @override
  final BuiltList<AccountItemWithAssetClassDto> accounts;
  @override
  final BuiltList<BalanceByCurrencyDto> balanceByCurrency;
  @override
  final String? assetSubClass;
  @override
  final String? convertedBalance;

  factory _$AssetClassGroupDto(
          [void Function(AssetClassGroupDtoBuilder)? updates]) =>
      (new AssetClassGroupDtoBuilder()..update(updates))._build();

  _$AssetClassGroupDto._(
      {required this.assetClass,
      required this.accounts,
      required this.balanceByCurrency,
      this.assetSubClass,
      this.convertedBalance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        assetClass, r'AssetClassGroupDto', 'assetClass');
    BuiltValueNullFieldError.checkNotNull(
        accounts, r'AssetClassGroupDto', 'accounts');
    BuiltValueNullFieldError.checkNotNull(
        balanceByCurrency, r'AssetClassGroupDto', 'balanceByCurrency');
  }

  @override
  AssetClassGroupDto rebuild(
          void Function(AssetClassGroupDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetClassGroupDtoBuilder toBuilder() =>
      new AssetClassGroupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetClassGroupDto &&
        assetClass == other.assetClass &&
        accounts == other.accounts &&
        balanceByCurrency == other.balanceByCurrency &&
        assetSubClass == other.assetSubClass &&
        convertedBalance == other.convertedBalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, balanceByCurrency.hashCode);
    _$hash = $jc(_$hash, assetSubClass.hashCode);
    _$hash = $jc(_$hash, convertedBalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetClassGroupDto')
          ..add('assetClass', assetClass)
          ..add('accounts', accounts)
          ..add('balanceByCurrency', balanceByCurrency)
          ..add('assetSubClass', assetSubClass)
          ..add('convertedBalance', convertedBalance))
        .toString();
  }
}

class AssetClassGroupDtoBuilder
    implements Builder<AssetClassGroupDto, AssetClassGroupDtoBuilder> {
  _$AssetClassGroupDto? _$v;

  AssetClassGroupDtoAssetClassEnum? _assetClass;
  AssetClassGroupDtoAssetClassEnum? get assetClass => _$this._assetClass;
  set assetClass(AssetClassGroupDtoAssetClassEnum? assetClass) =>
      _$this._assetClass = assetClass;

  ListBuilder<AccountItemWithAssetClassDto>? _accounts;
  ListBuilder<AccountItemWithAssetClassDto> get accounts =>
      _$this._accounts ??= new ListBuilder<AccountItemWithAssetClassDto>();
  set accounts(ListBuilder<AccountItemWithAssetClassDto>? accounts) =>
      _$this._accounts = accounts;

  ListBuilder<BalanceByCurrencyDto>? _balanceByCurrency;
  ListBuilder<BalanceByCurrencyDto> get balanceByCurrency =>
      _$this._balanceByCurrency ??= new ListBuilder<BalanceByCurrencyDto>();
  set balanceByCurrency(ListBuilder<BalanceByCurrencyDto>? balanceByCurrency) =>
      _$this._balanceByCurrency = balanceByCurrency;

  String? _assetSubClass;
  String? get assetSubClass => _$this._assetSubClass;
  set assetSubClass(String? assetSubClass) =>
      _$this._assetSubClass = assetSubClass;

  String? _convertedBalance;
  String? get convertedBalance => _$this._convertedBalance;
  set convertedBalance(String? convertedBalance) =>
      _$this._convertedBalance = convertedBalance;

  AssetClassGroupDtoBuilder() {
    AssetClassGroupDto._defaults(this);
  }

  AssetClassGroupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetClass = $v.assetClass;
      _accounts = $v.accounts.toBuilder();
      _balanceByCurrency = $v.balanceByCurrency.toBuilder();
      _assetSubClass = $v.assetSubClass;
      _convertedBalance = $v.convertedBalance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetClassGroupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssetClassGroupDto;
  }

  @override
  void update(void Function(AssetClassGroupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetClassGroupDto build() => _build();

  _$AssetClassGroupDto _build() {
    _$AssetClassGroupDto _$result;
    try {
      _$result = _$v ??
          new _$AssetClassGroupDto._(
              assetClass: BuiltValueNullFieldError.checkNotNull(
                  assetClass, r'AssetClassGroupDto', 'assetClass'),
              accounts: accounts.build(),
              balanceByCurrency: balanceByCurrency.build(),
              assetSubClass: assetSubClass,
              convertedBalance: convertedBalance);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
        _$failedField = 'balanceByCurrency';
        balanceByCurrency.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssetClassGroupDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
