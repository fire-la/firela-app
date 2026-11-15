// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_selection_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountSelectionDto extends AccountSelectionDto {
  @override
  final String? invalidAccount;
  @override
  final String? selectedAccount;

  factory _$AccountSelectionDto(
          [void Function(AccountSelectionDtoBuilder)? updates]) =>
      (new AccountSelectionDtoBuilder()..update(updates))._build();

  _$AccountSelectionDto._({this.invalidAccount, this.selectedAccount})
      : super._();

  @override
  AccountSelectionDto rebuild(
          void Function(AccountSelectionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountSelectionDtoBuilder toBuilder() =>
      new AccountSelectionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountSelectionDto &&
        invalidAccount == other.invalidAccount &&
        selectedAccount == other.selectedAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, invalidAccount.hashCode);
    _$hash = $jc(_$hash, selectedAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountSelectionDto')
          ..add('invalidAccount', invalidAccount)
          ..add('selectedAccount', selectedAccount))
        .toString();
  }
}

class AccountSelectionDtoBuilder
    implements Builder<AccountSelectionDto, AccountSelectionDtoBuilder> {
  _$AccountSelectionDto? _$v;

  String? _invalidAccount;
  String? get invalidAccount => _$this._invalidAccount;
  set invalidAccount(String? invalidAccount) =>
      _$this._invalidAccount = invalidAccount;

  String? _selectedAccount;
  String? get selectedAccount => _$this._selectedAccount;
  set selectedAccount(String? selectedAccount) =>
      _$this._selectedAccount = selectedAccount;

  AccountSelectionDtoBuilder() {
    AccountSelectionDto._defaults(this);
  }

  AccountSelectionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _invalidAccount = $v.invalidAccount;
      _selectedAccount = $v.selectedAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountSelectionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountSelectionDto;
  }

  @override
  void update(void Function(AccountSelectionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountSelectionDto build() => _build();

  _$AccountSelectionDto _build() {
    final _$result = _$v ??
        new _$AccountSelectionDto._(
            invalidAccount: invalidAccount, selectedAccount: selectedAccount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
