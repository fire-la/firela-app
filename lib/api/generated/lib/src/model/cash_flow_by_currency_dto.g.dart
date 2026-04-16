// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_by_currency_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CashFlowByCurrencyDto extends CashFlowByCurrencyDto {
  @override
  final BuiltList<BalanceByCurrencyDto> income;
  @override
  final BuiltList<BalanceByCurrencyDto> expense;
  @override
  final BuiltList<BalanceByCurrencyDto> netSavings;

  factory _$CashFlowByCurrencyDto(
          [void Function(CashFlowByCurrencyDtoBuilder)? updates]) =>
      (new CashFlowByCurrencyDtoBuilder()..update(updates))._build();

  _$CashFlowByCurrencyDto._(
      {required this.income, required this.expense, required this.netSavings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        income, r'CashFlowByCurrencyDto', 'income');
    BuiltValueNullFieldError.checkNotNull(
        expense, r'CashFlowByCurrencyDto', 'expense');
    BuiltValueNullFieldError.checkNotNull(
        netSavings, r'CashFlowByCurrencyDto', 'netSavings');
  }

  @override
  CashFlowByCurrencyDto rebuild(
          void Function(CashFlowByCurrencyDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CashFlowByCurrencyDtoBuilder toBuilder() =>
      new CashFlowByCurrencyDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CashFlowByCurrencyDto &&
        income == other.income &&
        expense == other.expense &&
        netSavings == other.netSavings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, expense.hashCode);
    _$hash = $jc(_$hash, netSavings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CashFlowByCurrencyDto')
          ..add('income', income)
          ..add('expense', expense)
          ..add('netSavings', netSavings))
        .toString();
  }
}

class CashFlowByCurrencyDtoBuilder
    implements Builder<CashFlowByCurrencyDto, CashFlowByCurrencyDtoBuilder> {
  _$CashFlowByCurrencyDto? _$v;

  ListBuilder<BalanceByCurrencyDto>? _income;
  ListBuilder<BalanceByCurrencyDto> get income =>
      _$this._income ??= new ListBuilder<BalanceByCurrencyDto>();
  set income(ListBuilder<BalanceByCurrencyDto>? income) =>
      _$this._income = income;

  ListBuilder<BalanceByCurrencyDto>? _expense;
  ListBuilder<BalanceByCurrencyDto> get expense =>
      _$this._expense ??= new ListBuilder<BalanceByCurrencyDto>();
  set expense(ListBuilder<BalanceByCurrencyDto>? expense) =>
      _$this._expense = expense;

  ListBuilder<BalanceByCurrencyDto>? _netSavings;
  ListBuilder<BalanceByCurrencyDto> get netSavings =>
      _$this._netSavings ??= new ListBuilder<BalanceByCurrencyDto>();
  set netSavings(ListBuilder<BalanceByCurrencyDto>? netSavings) =>
      _$this._netSavings = netSavings;

  CashFlowByCurrencyDtoBuilder() {
    CashFlowByCurrencyDto._defaults(this);
  }

  CashFlowByCurrencyDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _income = $v.income.toBuilder();
      _expense = $v.expense.toBuilder();
      _netSavings = $v.netSavings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CashFlowByCurrencyDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CashFlowByCurrencyDto;
  }

  @override
  void update(void Function(CashFlowByCurrencyDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CashFlowByCurrencyDto build() => _build();

  _$CashFlowByCurrencyDto _build() {
    _$CashFlowByCurrencyDto _$result;
    try {
      _$result = _$v ??
          new _$CashFlowByCurrencyDto._(
              income: income.build(),
              expense: expense.build(),
              netSavings: netSavings.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'income';
        income.build();
        _$failedField = 'expense';
        expense.build();
        _$failedField = 'netSavings';
        netSavings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CashFlowByCurrencyDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
