// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'net_worth_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetWorthResponseDto extends NetWorthResponseDto {
  @override
  final String netWorth;
  @override
  final String assets;
  @override
  final String liabilities;
  @override
  final String monthlyReturn;
  @override
  final String monthlyReturnPercentage;
  @override
  final String currency;
  @override
  final String asOf;
  @override
  final NetWorthByCurrencyDto? byCurrency;
  @override
  final ConvertedNetWorthDto? converted;
  @override
  final BuiltList<ExchangeRateWarningDto>? warnings;

  factory _$NetWorthResponseDto(
          [void Function(NetWorthResponseDtoBuilder)? updates]) =>
      (new NetWorthResponseDtoBuilder()..update(updates))._build();

  _$NetWorthResponseDto._(
      {required this.netWorth,
      required this.assets,
      required this.liabilities,
      required this.monthlyReturn,
      required this.monthlyReturnPercentage,
      required this.currency,
      required this.asOf,
      this.byCurrency,
      this.converted,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        netWorth, r'NetWorthResponseDto', 'netWorth');
    BuiltValueNullFieldError.checkNotNull(
        assets, r'NetWorthResponseDto', 'assets');
    BuiltValueNullFieldError.checkNotNull(
        liabilities, r'NetWorthResponseDto', 'liabilities');
    BuiltValueNullFieldError.checkNotNull(
        monthlyReturn, r'NetWorthResponseDto', 'monthlyReturn');
    BuiltValueNullFieldError.checkNotNull(monthlyReturnPercentage,
        r'NetWorthResponseDto', 'monthlyReturnPercentage');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'NetWorthResponseDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(asOf, r'NetWorthResponseDto', 'asOf');
  }

  @override
  NetWorthResponseDto rebuild(
          void Function(NetWorthResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetWorthResponseDtoBuilder toBuilder() =>
      new NetWorthResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetWorthResponseDto &&
        netWorth == other.netWorth &&
        assets == other.assets &&
        liabilities == other.liabilities &&
        monthlyReturn == other.monthlyReturn &&
        monthlyReturnPercentage == other.monthlyReturnPercentage &&
        currency == other.currency &&
        asOf == other.asOf &&
        byCurrency == other.byCurrency &&
        converted == other.converted &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, netWorth.hashCode);
    _$hash = $jc(_$hash, assets.hashCode);
    _$hash = $jc(_$hash, liabilities.hashCode);
    _$hash = $jc(_$hash, monthlyReturn.hashCode);
    _$hash = $jc(_$hash, monthlyReturnPercentage.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, byCurrency.hashCode);
    _$hash = $jc(_$hash, converted.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NetWorthResponseDto')
          ..add('netWorth', netWorth)
          ..add('assets', assets)
          ..add('liabilities', liabilities)
          ..add('monthlyReturn', monthlyReturn)
          ..add('monthlyReturnPercentage', monthlyReturnPercentage)
          ..add('currency', currency)
          ..add('asOf', asOf)
          ..add('byCurrency', byCurrency)
          ..add('converted', converted)
          ..add('warnings', warnings))
        .toString();
  }
}

class NetWorthResponseDtoBuilder
    implements Builder<NetWorthResponseDto, NetWorthResponseDtoBuilder> {
  _$NetWorthResponseDto? _$v;

  String? _netWorth;
  String? get netWorth => _$this._netWorth;
  set netWorth(String? netWorth) => _$this._netWorth = netWorth;

  String? _assets;
  String? get assets => _$this._assets;
  set assets(String? assets) => _$this._assets = assets;

  String? _liabilities;
  String? get liabilities => _$this._liabilities;
  set liabilities(String? liabilities) => _$this._liabilities = liabilities;

  String? _monthlyReturn;
  String? get monthlyReturn => _$this._monthlyReturn;
  set monthlyReturn(String? monthlyReturn) =>
      _$this._monthlyReturn = monthlyReturn;

  String? _monthlyReturnPercentage;
  String? get monthlyReturnPercentage => _$this._monthlyReturnPercentage;
  set monthlyReturnPercentage(String? monthlyReturnPercentage) =>
      _$this._monthlyReturnPercentage = monthlyReturnPercentage;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _asOf;
  String? get asOf => _$this._asOf;
  set asOf(String? asOf) => _$this._asOf = asOf;

  NetWorthByCurrencyDtoBuilder? _byCurrency;
  NetWorthByCurrencyDtoBuilder get byCurrency =>
      _$this._byCurrency ??= new NetWorthByCurrencyDtoBuilder();
  set byCurrency(NetWorthByCurrencyDtoBuilder? byCurrency) =>
      _$this._byCurrency = byCurrency;

  ConvertedNetWorthDtoBuilder? _converted;
  ConvertedNetWorthDtoBuilder get converted =>
      _$this._converted ??= new ConvertedNetWorthDtoBuilder();
  set converted(ConvertedNetWorthDtoBuilder? converted) =>
      _$this._converted = converted;

  ListBuilder<ExchangeRateWarningDto>? _warnings;
  ListBuilder<ExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<ExchangeRateWarningDto>();
  set warnings(ListBuilder<ExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  NetWorthResponseDtoBuilder() {
    NetWorthResponseDto._defaults(this);
  }

  NetWorthResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _netWorth = $v.netWorth;
      _assets = $v.assets;
      _liabilities = $v.liabilities;
      _monthlyReturn = $v.monthlyReturn;
      _monthlyReturnPercentage = $v.monthlyReturnPercentage;
      _currency = $v.currency;
      _asOf = $v.asOf;
      _byCurrency = $v.byCurrency?.toBuilder();
      _converted = $v.converted?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetWorthResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetWorthResponseDto;
  }

  @override
  void update(void Function(NetWorthResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetWorthResponseDto build() => _build();

  _$NetWorthResponseDto _build() {
    _$NetWorthResponseDto _$result;
    try {
      _$result = _$v ??
          new _$NetWorthResponseDto._(
              netWorth: BuiltValueNullFieldError.checkNotNull(
                  netWorth, r'NetWorthResponseDto', 'netWorth'),
              assets: BuiltValueNullFieldError.checkNotNull(
                  assets, r'NetWorthResponseDto', 'assets'),
              liabilities: BuiltValueNullFieldError.checkNotNull(
                  liabilities, r'NetWorthResponseDto', 'liabilities'),
              monthlyReturn: BuiltValueNullFieldError.checkNotNull(
                  monthlyReturn, r'NetWorthResponseDto', 'monthlyReturn'),
              monthlyReturnPercentage: BuiltValueNullFieldError.checkNotNull(
                  monthlyReturnPercentage,
                  r'NetWorthResponseDto',
                  'monthlyReturnPercentage'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'NetWorthResponseDto', 'currency'),
              asOf: BuiltValueNullFieldError.checkNotNull(
                  asOf, r'NetWorthResponseDto', 'asOf'),
              byCurrency: _byCurrency?.build(),
              converted: _converted?.build(),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byCurrency';
        _byCurrency?.build();
        _$failedField = 'converted';
        _converted?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetWorthResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
