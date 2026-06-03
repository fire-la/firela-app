// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CashFlowResponseDto extends CashFlowResponseDto {
  @override
  final String period;
  @override
  final String income;
  @override
  final String expense;
  @override
  final String netSavings;
  @override
  final String savingsRate;
  @override
  final String currency;
  @override
  final CashFlowByCurrencyDto? byCurrency;
  @override
  final ConvertedCashFlowDto? converted;
  @override
  final BuiltList<ExchangeRateWarningDto>? warnings;

  factory _$CashFlowResponseDto(
          [void Function(CashFlowResponseDtoBuilder)? updates]) =>
      (new CashFlowResponseDtoBuilder()..update(updates))._build();

  _$CashFlowResponseDto._(
      {required this.period,
      required this.income,
      required this.expense,
      required this.netSavings,
      required this.savingsRate,
      required this.currency,
      this.byCurrency,
      this.converted,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        period, r'CashFlowResponseDto', 'period');
    BuiltValueNullFieldError.checkNotNull(
        income, r'CashFlowResponseDto', 'income');
    BuiltValueNullFieldError.checkNotNull(
        expense, r'CashFlowResponseDto', 'expense');
    BuiltValueNullFieldError.checkNotNull(
        netSavings, r'CashFlowResponseDto', 'netSavings');
    BuiltValueNullFieldError.checkNotNull(
        savingsRate, r'CashFlowResponseDto', 'savingsRate');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'CashFlowResponseDto', 'currency');
  }

  @override
  CashFlowResponseDto rebuild(
          void Function(CashFlowResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CashFlowResponseDtoBuilder toBuilder() =>
      new CashFlowResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CashFlowResponseDto &&
        period == other.period &&
        income == other.income &&
        expense == other.expense &&
        netSavings == other.netSavings &&
        savingsRate == other.savingsRate &&
        currency == other.currency &&
        byCurrency == other.byCurrency &&
        converted == other.converted &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, expense.hashCode);
    _$hash = $jc(_$hash, netSavings.hashCode);
    _$hash = $jc(_$hash, savingsRate.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, byCurrency.hashCode);
    _$hash = $jc(_$hash, converted.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CashFlowResponseDto')
          ..add('period', period)
          ..add('income', income)
          ..add('expense', expense)
          ..add('netSavings', netSavings)
          ..add('savingsRate', savingsRate)
          ..add('currency', currency)
          ..add('byCurrency', byCurrency)
          ..add('converted', converted)
          ..add('warnings', warnings))
        .toString();
  }
}

class CashFlowResponseDtoBuilder
    implements Builder<CashFlowResponseDto, CashFlowResponseDtoBuilder> {
  _$CashFlowResponseDto? _$v;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _income;
  String? get income => _$this._income;
  set income(String? income) => _$this._income = income;

  String? _expense;
  String? get expense => _$this._expense;
  set expense(String? expense) => _$this._expense = expense;

  String? _netSavings;
  String? get netSavings => _$this._netSavings;
  set netSavings(String? netSavings) => _$this._netSavings = netSavings;

  String? _savingsRate;
  String? get savingsRate => _$this._savingsRate;
  set savingsRate(String? savingsRate) => _$this._savingsRate = savingsRate;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  CashFlowByCurrencyDtoBuilder? _byCurrency;
  CashFlowByCurrencyDtoBuilder get byCurrency =>
      _$this._byCurrency ??= new CashFlowByCurrencyDtoBuilder();
  set byCurrency(CashFlowByCurrencyDtoBuilder? byCurrency) =>
      _$this._byCurrency = byCurrency;

  ConvertedCashFlowDtoBuilder? _converted;
  ConvertedCashFlowDtoBuilder get converted =>
      _$this._converted ??= new ConvertedCashFlowDtoBuilder();
  set converted(ConvertedCashFlowDtoBuilder? converted) =>
      _$this._converted = converted;

  ListBuilder<ExchangeRateWarningDto>? _warnings;
  ListBuilder<ExchangeRateWarningDto> get warnings =>
      _$this._warnings ??= new ListBuilder<ExchangeRateWarningDto>();
  set warnings(ListBuilder<ExchangeRateWarningDto>? warnings) =>
      _$this._warnings = warnings;

  CashFlowResponseDtoBuilder() {
    CashFlowResponseDto._defaults(this);
  }

  CashFlowResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _income = $v.income;
      _expense = $v.expense;
      _netSavings = $v.netSavings;
      _savingsRate = $v.savingsRate;
      _currency = $v.currency;
      _byCurrency = $v.byCurrency?.toBuilder();
      _converted = $v.converted?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CashFlowResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CashFlowResponseDto;
  }

  @override
  void update(void Function(CashFlowResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CashFlowResponseDto build() => _build();

  _$CashFlowResponseDto _build() {
    _$CashFlowResponseDto _$result;
    try {
      _$result = _$v ??
          new _$CashFlowResponseDto._(
              period: BuiltValueNullFieldError.checkNotNull(
                  period, r'CashFlowResponseDto', 'period'),
              income: BuiltValueNullFieldError.checkNotNull(
                  income, r'CashFlowResponseDto', 'income'),
              expense: BuiltValueNullFieldError.checkNotNull(
                  expense, r'CashFlowResponseDto', 'expense'),
              netSavings: BuiltValueNullFieldError.checkNotNull(
                  netSavings, r'CashFlowResponseDto', 'netSavings'),
              savingsRate: BuiltValueNullFieldError.checkNotNull(
                  savingsRate, r'CashFlowResponseDto', 'savingsRate'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'CashFlowResponseDto', 'currency'),
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
            r'CashFlowResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
