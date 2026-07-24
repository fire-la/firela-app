// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pad_reconciliation_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PadReconciliationDto extends PadReconciliationDto {
  @override
  final String accountId;
  @override
  final String asOfDate;
  @override
  final ActualBalanceDto actualBalance;
  @override
  final String? sourceAccount;

  factory _$PadReconciliationDto(
          [void Function(PadReconciliationDtoBuilder)? updates]) =>
      (new PadReconciliationDtoBuilder()..update(updates))._build();

  _$PadReconciliationDto._(
      {required this.accountId,
      required this.asOfDate,
      required this.actualBalance,
      this.sourceAccount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'PadReconciliationDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        asOfDate, r'PadReconciliationDto', 'asOfDate');
    BuiltValueNullFieldError.checkNotNull(
        actualBalance, r'PadReconciliationDto', 'actualBalance');
  }

  @override
  PadReconciliationDto rebuild(
          void Function(PadReconciliationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PadReconciliationDtoBuilder toBuilder() =>
      new PadReconciliationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PadReconciliationDto &&
        accountId == other.accountId &&
        asOfDate == other.asOfDate &&
        actualBalance == other.actualBalance &&
        sourceAccount == other.sourceAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, asOfDate.hashCode);
    _$hash = $jc(_$hash, actualBalance.hashCode);
    _$hash = $jc(_$hash, sourceAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PadReconciliationDto')
          ..add('accountId', accountId)
          ..add('asOfDate', asOfDate)
          ..add('actualBalance', actualBalance)
          ..add('sourceAccount', sourceAccount))
        .toString();
  }
}

class PadReconciliationDtoBuilder
    implements Builder<PadReconciliationDto, PadReconciliationDtoBuilder> {
  _$PadReconciliationDto? _$v;

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

  String? _sourceAccount;
  String? get sourceAccount => _$this._sourceAccount;
  set sourceAccount(String? sourceAccount) =>
      _$this._sourceAccount = sourceAccount;

  PadReconciliationDtoBuilder() {
    PadReconciliationDto._defaults(this);
  }

  PadReconciliationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _asOfDate = $v.asOfDate;
      _actualBalance = $v.actualBalance.toBuilder();
      _sourceAccount = $v.sourceAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PadReconciliationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PadReconciliationDto;
  }

  @override
  void update(void Function(PadReconciliationDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PadReconciliationDto build() => _build();

  _$PadReconciliationDto _build() {
    _$PadReconciliationDto _$result;
    try {
      _$result = _$v ??
          new _$PadReconciliationDto._(
              accountId: BuiltValueNullFieldError.checkNotNull(
                  accountId, r'PadReconciliationDto', 'accountId'),
              asOfDate: BuiltValueNullFieldError.checkNotNull(
                  asOfDate, r'PadReconciliationDto', 'asOfDate'),
              actualBalance: actualBalance.build(),
              sourceAccount: sourceAccount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actualBalance';
        actualBalance.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PadReconciliationDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
