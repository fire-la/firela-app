// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compute_reconciliation_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComputeReconciliationDto extends ComputeReconciliationDto {
  @override
  final String accountId;
  @override
  final String asOfDate;
  @override
  final ActualBalanceDto actualBalance;

  factory _$ComputeReconciliationDto(
          [void Function(ComputeReconciliationDtoBuilder)? updates]) =>
      (new ComputeReconciliationDtoBuilder()..update(updates))._build();

  _$ComputeReconciliationDto._(
      {required this.accountId,
      required this.asOfDate,
      required this.actualBalance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'ComputeReconciliationDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        asOfDate, r'ComputeReconciliationDto', 'asOfDate');
    BuiltValueNullFieldError.checkNotNull(
        actualBalance, r'ComputeReconciliationDto', 'actualBalance');
  }

  @override
  ComputeReconciliationDto rebuild(
          void Function(ComputeReconciliationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComputeReconciliationDtoBuilder toBuilder() =>
      new ComputeReconciliationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComputeReconciliationDto &&
        accountId == other.accountId &&
        asOfDate == other.asOfDate &&
        actualBalance == other.actualBalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, asOfDate.hashCode);
    _$hash = $jc(_$hash, actualBalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComputeReconciliationDto')
          ..add('accountId', accountId)
          ..add('asOfDate', asOfDate)
          ..add('actualBalance', actualBalance))
        .toString();
  }
}

class ComputeReconciliationDtoBuilder
    implements
        Builder<ComputeReconciliationDto, ComputeReconciliationDtoBuilder> {
  _$ComputeReconciliationDto? _$v;

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

  ComputeReconciliationDtoBuilder() {
    ComputeReconciliationDto._defaults(this);
  }

  ComputeReconciliationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _asOfDate = $v.asOfDate;
      _actualBalance = $v.actualBalance.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComputeReconciliationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComputeReconciliationDto;
  }

  @override
  void update(void Function(ComputeReconciliationDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComputeReconciliationDto build() => _build();

  _$ComputeReconciliationDto _build() {
    _$ComputeReconciliationDto _$result;
    try {
      _$result = _$v ??
          new _$ComputeReconciliationDto._(
              accountId: BuiltValueNullFieldError.checkNotNull(
                  accountId, r'ComputeReconciliationDto', 'accountId'),
              asOfDate: BuiltValueNullFieldError.checkNotNull(
                  asOfDate, r'ComputeReconciliationDto', 'asOfDate'),
              actualBalance: actualBalance.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actualBalance';
        actualBalance.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComputeReconciliationDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
