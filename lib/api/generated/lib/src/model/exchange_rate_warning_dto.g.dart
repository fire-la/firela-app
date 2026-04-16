// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate_warning_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExchangeRateWarningDto extends ExchangeRateWarningDto {
  @override
  final String type;
  @override
  final String currency;
  @override
  final String totalAmount;

  factory _$ExchangeRateWarningDto(
          [void Function(ExchangeRateWarningDtoBuilder)? updates]) =>
      (new ExchangeRateWarningDtoBuilder()..update(updates))._build();

  _$ExchangeRateWarningDto._(
      {required this.type, required this.currency, required this.totalAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'ExchangeRateWarningDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'ExchangeRateWarningDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        totalAmount, r'ExchangeRateWarningDto', 'totalAmount');
  }

  @override
  ExchangeRateWarningDto rebuild(
          void Function(ExchangeRateWarningDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangeRateWarningDtoBuilder toBuilder() =>
      new ExchangeRateWarningDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangeRateWarningDto &&
        type == other.type &&
        currency == other.currency &&
        totalAmount == other.totalAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExchangeRateWarningDto')
          ..add('type', type)
          ..add('currency', currency)
          ..add('totalAmount', totalAmount))
        .toString();
  }
}

class ExchangeRateWarningDtoBuilder
    implements Builder<ExchangeRateWarningDto, ExchangeRateWarningDtoBuilder> {
  _$ExchangeRateWarningDto? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _totalAmount;
  String? get totalAmount => _$this._totalAmount;
  set totalAmount(String? totalAmount) => _$this._totalAmount = totalAmount;

  ExchangeRateWarningDtoBuilder() {
    ExchangeRateWarningDto._defaults(this);
  }

  ExchangeRateWarningDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _currency = $v.currency;
      _totalAmount = $v.totalAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangeRateWarningDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExchangeRateWarningDto;
  }

  @override
  void update(void Function(ExchangeRateWarningDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExchangeRateWarningDto build() => _build();

  _$ExchangeRateWarningDto _build() {
    final _$result = _$v ??
        new _$ExchangeRateWarningDto._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ExchangeRateWarningDto', 'type'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'ExchangeRateWarningDto', 'currency'),
            totalAmount: BuiltValueNullFieldError.checkNotNull(
                totalAmount, r'ExchangeRateWarningDto', 'totalAmount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
