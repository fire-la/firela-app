// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'net_worth_by_currency_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetWorthByCurrencyDto extends NetWorthByCurrencyDto {
  @override
  final BuiltList<BalanceByCurrencyDto> netWorth;
  @override
  final BuiltList<BalanceByCurrencyDto> assets;
  @override
  final BuiltList<BalanceByCurrencyDto> liabilities;

  factory _$NetWorthByCurrencyDto(
          [void Function(NetWorthByCurrencyDtoBuilder)? updates]) =>
      (new NetWorthByCurrencyDtoBuilder()..update(updates))._build();

  _$NetWorthByCurrencyDto._(
      {required this.netWorth, required this.assets, required this.liabilities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        netWorth, r'NetWorthByCurrencyDto', 'netWorth');
    BuiltValueNullFieldError.checkNotNull(
        assets, r'NetWorthByCurrencyDto', 'assets');
    BuiltValueNullFieldError.checkNotNull(
        liabilities, r'NetWorthByCurrencyDto', 'liabilities');
  }

  @override
  NetWorthByCurrencyDto rebuild(
          void Function(NetWorthByCurrencyDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetWorthByCurrencyDtoBuilder toBuilder() =>
      new NetWorthByCurrencyDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetWorthByCurrencyDto &&
        netWorth == other.netWorth &&
        assets == other.assets &&
        liabilities == other.liabilities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, netWorth.hashCode);
    _$hash = $jc(_$hash, assets.hashCode);
    _$hash = $jc(_$hash, liabilities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NetWorthByCurrencyDto')
          ..add('netWorth', netWorth)
          ..add('assets', assets)
          ..add('liabilities', liabilities))
        .toString();
  }
}

class NetWorthByCurrencyDtoBuilder
    implements Builder<NetWorthByCurrencyDto, NetWorthByCurrencyDtoBuilder> {
  _$NetWorthByCurrencyDto? _$v;

  ListBuilder<BalanceByCurrencyDto>? _netWorth;
  ListBuilder<BalanceByCurrencyDto> get netWorth =>
      _$this._netWorth ??= new ListBuilder<BalanceByCurrencyDto>();
  set netWorth(ListBuilder<BalanceByCurrencyDto>? netWorth) =>
      _$this._netWorth = netWorth;

  ListBuilder<BalanceByCurrencyDto>? _assets;
  ListBuilder<BalanceByCurrencyDto> get assets =>
      _$this._assets ??= new ListBuilder<BalanceByCurrencyDto>();
  set assets(ListBuilder<BalanceByCurrencyDto>? assets) =>
      _$this._assets = assets;

  ListBuilder<BalanceByCurrencyDto>? _liabilities;
  ListBuilder<BalanceByCurrencyDto> get liabilities =>
      _$this._liabilities ??= new ListBuilder<BalanceByCurrencyDto>();
  set liabilities(ListBuilder<BalanceByCurrencyDto>? liabilities) =>
      _$this._liabilities = liabilities;

  NetWorthByCurrencyDtoBuilder() {
    NetWorthByCurrencyDto._defaults(this);
  }

  NetWorthByCurrencyDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _netWorth = $v.netWorth.toBuilder();
      _assets = $v.assets.toBuilder();
      _liabilities = $v.liabilities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetWorthByCurrencyDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetWorthByCurrencyDto;
  }

  @override
  void update(void Function(NetWorthByCurrencyDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetWorthByCurrencyDto build() => _build();

  _$NetWorthByCurrencyDto _build() {
    _$NetWorthByCurrencyDto _$result;
    try {
      _$result = _$v ??
          new _$NetWorthByCurrencyDto._(
              netWorth: netWorth.build(),
              assets: assets.build(),
              liabilities: liabilities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'netWorth';
        netWorth.build();
        _$failedField = 'assets';
        assets.build();
        _$failedField = 'liabilities';
        liabilities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetWorthByCurrencyDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
