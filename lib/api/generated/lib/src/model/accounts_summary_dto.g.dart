// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountsSummaryDto extends AccountsSummaryDto {
  @override
  final num totalAccounts;
  @override
  final num totalPlatforms;

  factory _$AccountsSummaryDto(
          [void Function(AccountsSummaryDtoBuilder)? updates]) =>
      (new AccountsSummaryDtoBuilder()..update(updates))._build();

  _$AccountsSummaryDto._(
      {required this.totalAccounts, required this.totalPlatforms})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalAccounts, r'AccountsSummaryDto', 'totalAccounts');
    BuiltValueNullFieldError.checkNotNull(
        totalPlatforms, r'AccountsSummaryDto', 'totalPlatforms');
  }

  @override
  AccountsSummaryDto rebuild(
          void Function(AccountsSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountsSummaryDtoBuilder toBuilder() =>
      new AccountsSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountsSummaryDto &&
        totalAccounts == other.totalAccounts &&
        totalPlatforms == other.totalPlatforms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalAccounts.hashCode);
    _$hash = $jc(_$hash, totalPlatforms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountsSummaryDto')
          ..add('totalAccounts', totalAccounts)
          ..add('totalPlatforms', totalPlatforms))
        .toString();
  }
}

class AccountsSummaryDtoBuilder
    implements Builder<AccountsSummaryDto, AccountsSummaryDtoBuilder> {
  _$AccountsSummaryDto? _$v;

  num? _totalAccounts;
  num? get totalAccounts => _$this._totalAccounts;
  set totalAccounts(num? totalAccounts) =>
      _$this._totalAccounts = totalAccounts;

  num? _totalPlatforms;
  num? get totalPlatforms => _$this._totalPlatforms;
  set totalPlatforms(num? totalPlatforms) =>
      _$this._totalPlatforms = totalPlatforms;

  AccountsSummaryDtoBuilder() {
    AccountsSummaryDto._defaults(this);
  }

  AccountsSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalAccounts = $v.totalAccounts;
      _totalPlatforms = $v.totalPlatforms;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountsSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountsSummaryDto;
  }

  @override
  void update(void Function(AccountsSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountsSummaryDto build() => _build();

  _$AccountsSummaryDto _build() {
    final _$result = _$v ??
        new _$AccountsSummaryDto._(
            totalAccounts: BuiltValueNullFieldError.checkNotNull(
                totalAccounts, r'AccountsSummaryDto', 'totalAccounts'),
            totalPlatforms: BuiltValueNullFieldError.checkNotNull(
                totalPlatforms, r'AccountsSummaryDto', 'totalPlatforms'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
