// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_trend_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CashFlowTrendSummaryDto extends CashFlowTrendSummaryDto {
  @override
  final String totalIncome;
  @override
  final String totalExpense;
  @override
  final String totalNetSavings;
  @override
  final String averageMonthlyNetSavings;

  factory _$CashFlowTrendSummaryDto(
          [void Function(CashFlowTrendSummaryDtoBuilder)? updates]) =>
      (new CashFlowTrendSummaryDtoBuilder()..update(updates))._build();

  _$CashFlowTrendSummaryDto._(
      {required this.totalIncome,
      required this.totalExpense,
      required this.totalNetSavings,
      required this.averageMonthlyNetSavings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalIncome, r'CashFlowTrendSummaryDto', 'totalIncome');
    BuiltValueNullFieldError.checkNotNull(
        totalExpense, r'CashFlowTrendSummaryDto', 'totalExpense');
    BuiltValueNullFieldError.checkNotNull(
        totalNetSavings, r'CashFlowTrendSummaryDto', 'totalNetSavings');
    BuiltValueNullFieldError.checkNotNull(averageMonthlyNetSavings,
        r'CashFlowTrendSummaryDto', 'averageMonthlyNetSavings');
  }

  @override
  CashFlowTrendSummaryDto rebuild(
          void Function(CashFlowTrendSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CashFlowTrendSummaryDtoBuilder toBuilder() =>
      new CashFlowTrendSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CashFlowTrendSummaryDto &&
        totalIncome == other.totalIncome &&
        totalExpense == other.totalExpense &&
        totalNetSavings == other.totalNetSavings &&
        averageMonthlyNetSavings == other.averageMonthlyNetSavings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalIncome.hashCode);
    _$hash = $jc(_$hash, totalExpense.hashCode);
    _$hash = $jc(_$hash, totalNetSavings.hashCode);
    _$hash = $jc(_$hash, averageMonthlyNetSavings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CashFlowTrendSummaryDto')
          ..add('totalIncome', totalIncome)
          ..add('totalExpense', totalExpense)
          ..add('totalNetSavings', totalNetSavings)
          ..add('averageMonthlyNetSavings', averageMonthlyNetSavings))
        .toString();
  }
}

class CashFlowTrendSummaryDtoBuilder
    implements
        Builder<CashFlowTrendSummaryDto, CashFlowTrendSummaryDtoBuilder> {
  _$CashFlowTrendSummaryDto? _$v;

  String? _totalIncome;
  String? get totalIncome => _$this._totalIncome;
  set totalIncome(String? totalIncome) => _$this._totalIncome = totalIncome;

  String? _totalExpense;
  String? get totalExpense => _$this._totalExpense;
  set totalExpense(String? totalExpense) => _$this._totalExpense = totalExpense;

  String? _totalNetSavings;
  String? get totalNetSavings => _$this._totalNetSavings;
  set totalNetSavings(String? totalNetSavings) =>
      _$this._totalNetSavings = totalNetSavings;

  String? _averageMonthlyNetSavings;
  String? get averageMonthlyNetSavings => _$this._averageMonthlyNetSavings;
  set averageMonthlyNetSavings(String? averageMonthlyNetSavings) =>
      _$this._averageMonthlyNetSavings = averageMonthlyNetSavings;

  CashFlowTrendSummaryDtoBuilder() {
    CashFlowTrendSummaryDto._defaults(this);
  }

  CashFlowTrendSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalIncome = $v.totalIncome;
      _totalExpense = $v.totalExpense;
      _totalNetSavings = $v.totalNetSavings;
      _averageMonthlyNetSavings = $v.averageMonthlyNetSavings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CashFlowTrendSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CashFlowTrendSummaryDto;
  }

  @override
  void update(void Function(CashFlowTrendSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CashFlowTrendSummaryDto build() => _build();

  _$CashFlowTrendSummaryDto _build() {
    final _$result = _$v ??
        new _$CashFlowTrendSummaryDto._(
            totalIncome: BuiltValueNullFieldError.checkNotNull(
                totalIncome, r'CashFlowTrendSummaryDto', 'totalIncome'),
            totalExpense: BuiltValueNullFieldError.checkNotNull(
                totalExpense, r'CashFlowTrendSummaryDto', 'totalExpense'),
            totalNetSavings: BuiltValueNullFieldError.checkNotNull(
                totalNetSavings, r'CashFlowTrendSummaryDto', 'totalNetSavings'),
            averageMonthlyNetSavings: BuiltValueNullFieldError.checkNotNull(
                averageMonthlyNetSavings,
                r'CashFlowTrendSummaryDto',
                'averageMonthlyNetSavings'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
