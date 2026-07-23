// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionListSummaryDto extends TransactionListSummaryDto {
  @override
  final String totalAmount;
  @override
  final String currency;
  @override
  final BuiltList<BalanceByCurrencyDto> balanceByCurrency;
  @override
  final BuiltList<ExchangeRateWarningDto>? warnings;

  factory _$TransactionListSummaryDto(
          [void Function(TransactionListSummaryDtoBuilder)? updates]) =>
      (new TransactionListSummaryDtoBuilder()..update(updates))._build();

  _$TransactionListSummaryDto._(
      {required this.totalAmount,
      required this.currency,
      required this.balanceByCurrency,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalAmount, r'TransactionListSummaryDto', 'totalAmount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'TransactionListSummaryDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        balanceByCurrency, r'TransactionListSummaryDto', 'balanceByCurrency');
  }

  @override
  TransactionListSummaryDto rebuild(
          void Function(TransactionListSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionListSummaryDtoBuilder toBuilder() =>
      new TransactionListSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionListSummaryDto &&
        totalAmount == other.totalAmount &&
        currency == other.currency &&
        balanceByCurrency == other.balanceByCurrency &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, balanceByCurrency.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionListSummaryDto')
          ..add('totalAmount', totalAmount)
          ..add('currency', currency)
          ..add('balanceByCurrency', balanceByCurrency)
          ..add('warnings', warnings))
        .toString();
  }
}

class TransactionListSummaryDtoBuilder
    implements
        Builder<TransactionListSummaryDto, TransactionListSummaryDtoBuilder> {
  _$TransactionListSummaryDto? _$v;

  String? _totalAmount;
  String? get totalAmount => _$this._totalAmount;
  set totalAmount(String? totalAmount) => _$this._totalAmount = totalAmount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ListBuilder<BalanceByCurrencyDto>? _balanceByCurrency;
  ListBuilder<BalanceByCurrencyDto> get balanceByCurrency =>
      _$this._balanceByCurrency ??= new ListBuilder<BalanceByCurrencyDto>();
  set balanceByCurrency(ListBuilder<BalanceByCurrencyDto>? balanceByCurrency) =>
      _$this._balanceByCurrency = balanceByCurrency;

  ListBuilder<ExchangeRateWarningDto>? _warnings;
  ListBuilder<ExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<ExchangeRateWarningDto>();
  set warnings(ListBuilder<ExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  TransactionListSummaryDtoBuilder() {
    TransactionListSummaryDto._defaults(this);
  }

  TransactionListSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalAmount = $v.totalAmount;
      _currency = $v.currency;
      _balanceByCurrency = $v.balanceByCurrency.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionListSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionListSummaryDto;
  }

  @override
  void update(void Function(TransactionListSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionListSummaryDto build() => _build();

  _$TransactionListSummaryDto _build() {
    _$TransactionListSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionListSummaryDto._(
              totalAmount: BuiltValueNullFieldError.checkNotNull(
                  totalAmount, r'TransactionListSummaryDto', 'totalAmount'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'TransactionListSummaryDto', 'currency'),
              balanceByCurrency: balanceByCurrency.build(),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'balanceByCurrency';
        balanceByCurrency.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionListSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
