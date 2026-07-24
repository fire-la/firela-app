// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assert_reconciliation_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssertReconciliationDto extends AssertReconciliationDto {
  @override
  final String accountId;
  @override
  final String asOfDate;
  @override
  final ActualBalanceDto actualBalance;
  @override
  final String? tolerance;

  factory _$AssertReconciliationDto(
          [void Function(AssertReconciliationDtoBuilder)? updates]) =>
      (new AssertReconciliationDtoBuilder()..update(updates))._build();

  _$AssertReconciliationDto._(
      {required this.accountId,
      required this.asOfDate,
      required this.actualBalance,
      this.tolerance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'AssertReconciliationDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        asOfDate, r'AssertReconciliationDto', 'asOfDate');
    BuiltValueNullFieldError.checkNotNull(
        actualBalance, r'AssertReconciliationDto', 'actualBalance');
  }

  @override
  AssertReconciliationDto rebuild(
          void Function(AssertReconciliationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssertReconciliationDtoBuilder toBuilder() =>
      new AssertReconciliationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssertReconciliationDto &&
        accountId == other.accountId &&
        asOfDate == other.asOfDate &&
        actualBalance == other.actualBalance &&
        tolerance == other.tolerance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, asOfDate.hashCode);
    _$hash = $jc(_$hash, actualBalance.hashCode);
    _$hash = $jc(_$hash, tolerance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssertReconciliationDto')
          ..add('accountId', accountId)
          ..add('asOfDate', asOfDate)
          ..add('actualBalance', actualBalance)
          ..add('tolerance', tolerance))
        .toString();
  }
}

class AssertReconciliationDtoBuilder
    implements
        Builder<AssertReconciliationDto, AssertReconciliationDtoBuilder> {
  _$AssertReconciliationDto? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _asOfDate;
  String? get asOfDate => _$this._asOfDate;
  set asOfDate(String? asOfDate) => _$this._asOfDate = asOfDate;

  ActualBalanceDtoBuilder? _actualBalance;
  ActualBalanceDtoBuilder get actualBalance =>
      _$this._actualBalance ??= new ActualBalanceDtoBuilder();
  set actualBalance(ActualBalanceDtoBuilder? actualBalance) =>
      _$this._actualBalance = actualBalance;

  String? _tolerance;
  String? get tolerance => _$this._tolerance;
  set tolerance(String? tolerance) => _$this._tolerance = tolerance;

  AssertReconciliationDtoBuilder() {
    AssertReconciliationDto._defaults(this);
  }

  AssertReconciliationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _asOfDate = $v.asOfDate;
      _actualBalance = $v.actualBalance.toBuilder();
      _tolerance = $v.tolerance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssertReconciliationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssertReconciliationDto;
  }

  @override
  void update(void Function(AssertReconciliationDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssertReconciliationDto build() => _build();

  _$AssertReconciliationDto _build() {
    _$AssertReconciliationDto _$result;
    try {
      _$result = _$v ??
          new _$AssertReconciliationDto._(
              accountId: BuiltValueNullFieldError.checkNotNull(
                  accountId, r'AssertReconciliationDto', 'accountId'),
              asOfDate: BuiltValueNullFieldError.checkNotNull(
                  asOfDate, r'AssertReconciliationDto', 'asOfDate'),
              actualBalance: actualBalance.build(),
              tolerance: tolerance);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actualBalance';
        actualBalance.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssertReconciliationDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
