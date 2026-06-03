// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converted_cash_flow_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConvertedCashFlowDto extends ConvertedCashFlowDto {
  @override
  final String baseCurrency;
  @override
  final String income;
  @override
  final String expense;
  @override
  final String netSavings;
  @override
  final JsonObject exchangeRates;

  factory _$ConvertedCashFlowDto(
          [void Function(ConvertedCashFlowDtoBuilder)? updates]) =>
      (new ConvertedCashFlowDtoBuilder()..update(updates))._build();

  _$ConvertedCashFlowDto._(
      {required this.baseCurrency,
      required this.income,
      required this.expense,
      required this.netSavings,
      required this.exchangeRates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        baseCurrency, r'ConvertedCashFlowDto', 'baseCurrency');
    BuiltValueNullFieldError.checkNotNull(
        income, r'ConvertedCashFlowDto', 'income');
    BuiltValueNullFieldError.checkNotNull(
        expense, r'ConvertedCashFlowDto', 'expense');
    BuiltValueNullFieldError.checkNotNull(
        netSavings, r'ConvertedCashFlowDto', 'netSavings');
    BuiltValueNullFieldError.checkNotNull(
        exchangeRates, r'ConvertedCashFlowDto', 'exchangeRates');
  }

  @override
  ConvertedCashFlowDto rebuild(
          void Function(ConvertedCashFlowDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConvertedCashFlowDtoBuilder toBuilder() =>
      new ConvertedCashFlowDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConvertedCashFlowDto &&
        baseCurrency == other.baseCurrency &&
        income == other.income &&
        expense == other.expense &&
        netSavings == other.netSavings &&
        exchangeRates == other.exchangeRates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, expense.hashCode);
    _$hash = $jc(_$hash, netSavings.hashCode);
    _$hash = $jc(_$hash, exchangeRates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConvertedCashFlowDto')
          ..add('baseCurrency', baseCurrency)
          ..add('income', income)
          ..add('expense', expense)
          ..add('netSavings', netSavings)
          ..add('exchangeRates', exchangeRates))
        .toString();
  }
}

class ConvertedCashFlowDtoBuilder
    implements Builder<ConvertedCashFlowDto, ConvertedCashFlowDtoBuilder> {
  _$ConvertedCashFlowDto? _$v;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  String? _income;
  String? get income => _$this._income;
  set income(String? income) => _$this._income = income;

  String? _expense;
  String? get expense => _$this._expense;
  set expense(String? expense) => _$this._expense = expense;

  String? _netSavings;
  String? get netSavings => _$this._netSavings;
  set netSavings(String? netSavings) => _$this._netSavings = netSavings;

  JsonObject? _exchangeRates;
  JsonObject? get exchangeRates => _$this._exchangeRates;
  set exchangeRates(JsonObject? exchangeRates) =>
      _$this._exchangeRates = exchangeRates;

  ConvertedCashFlowDtoBuilder() {
    ConvertedCashFlowDto._defaults(this);
  }

  ConvertedCashFlowDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseCurrency = $v.baseCurrency;
      _income = $v.income;
      _expense = $v.expense;
      _netSavings = $v.netSavings;
      _exchangeRates = $v.exchangeRates;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConvertedCashFlowDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConvertedCashFlowDto;
  }

  @override
  void update(void Function(ConvertedCashFlowDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConvertedCashFlowDto build() => _build();

  _$ConvertedCashFlowDto _build() {
    final _$result = _$v ??
        new _$ConvertedCashFlowDto._(
            baseCurrency: BuiltValueNullFieldError.checkNotNull(
                baseCurrency, r'ConvertedCashFlowDto', 'baseCurrency'),
            income: BuiltValueNullFieldError.checkNotNull(
                income, r'ConvertedCashFlowDto', 'income'),
            expense: BuiltValueNullFieldError.checkNotNull(
                expense, r'ConvertedCashFlowDto', 'expense'),
            netSavings: BuiltValueNullFieldError.checkNotNull(
                netSavings, r'ConvertedCashFlowDto', 'netSavings'),
            exchangeRates: BuiltValueNullFieldError.checkNotNull(
                exchangeRates, r'ConvertedCashFlowDto', 'exchangeRates'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
