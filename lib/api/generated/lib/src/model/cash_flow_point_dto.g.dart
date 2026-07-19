// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_point_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CashFlowPointDto extends CashFlowPointDto {
  @override
  final String month;
  @override
  final String income;
  @override
  final String expense;
  @override
  final String netSavings;

  factory _$CashFlowPointDto(
          [void Function(CashFlowPointDtoBuilder)? updates]) =>
      (new CashFlowPointDtoBuilder()..update(updates))._build();

  _$CashFlowPointDto._(
      {required this.month,
      required this.income,
      required this.expense,
      required this.netSavings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(month, r'CashFlowPointDto', 'month');
    BuiltValueNullFieldError.checkNotNull(
        income, r'CashFlowPointDto', 'income');
    BuiltValueNullFieldError.checkNotNull(
        expense, r'CashFlowPointDto', 'expense');
    BuiltValueNullFieldError.checkNotNull(
        netSavings, r'CashFlowPointDto', 'netSavings');
  }

  @override
  CashFlowPointDto rebuild(void Function(CashFlowPointDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CashFlowPointDtoBuilder toBuilder() =>
      new CashFlowPointDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CashFlowPointDto &&
        month == other.month &&
        income == other.income &&
        expense == other.expense &&
        netSavings == other.netSavings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, expense.hashCode);
    _$hash = $jc(_$hash, netSavings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CashFlowPointDto')
          ..add('month', month)
          ..add('income', income)
          ..add('expense', expense)
          ..add('netSavings', netSavings))
        .toString();
  }
}

class CashFlowPointDtoBuilder
    implements Builder<CashFlowPointDto, CashFlowPointDtoBuilder> {
  _$CashFlowPointDto? _$v;

  String? _month;
  String? get month => _$this._month;
  set month(String? month) => _$this._month = month;

  String? _income;
  String? get income => _$this._income;
  set income(String? income) => _$this._income = income;

  String? _expense;
  String? get expense => _$this._expense;
  set expense(String? expense) => _$this._expense = expense;

  String? _netSavings;
  String? get netSavings => _$this._netSavings;
  set netSavings(String? netSavings) => _$this._netSavings = netSavings;

  CashFlowPointDtoBuilder() {
    CashFlowPointDto._defaults(this);
  }

  CashFlowPointDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _month = $v.month;
      _income = $v.income;
      _expense = $v.expense;
      _netSavings = $v.netSavings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CashFlowPointDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CashFlowPointDto;
  }

  @override
  void update(void Function(CashFlowPointDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CashFlowPointDto build() => _build();

  _$CashFlowPointDto _build() {
    final _$result = _$v ??
        new _$CashFlowPointDto._(
            month: BuiltValueNullFieldError.checkNotNull(
                month, r'CashFlowPointDto', 'month'),
            income: BuiltValueNullFieldError.checkNotNull(
                income, r'CashFlowPointDto', 'income'),
            expense: BuiltValueNullFieldError.checkNotNull(
                expense, r'CashFlowPointDto', 'expense'),
            netSavings: BuiltValueNullFieldError.checkNotNull(
                netSavings, r'CashFlowPointDto', 'netSavings'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
