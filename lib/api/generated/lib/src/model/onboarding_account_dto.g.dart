// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnboardingAccountDto extends OnboardingAccountDto {
  @override
  final String path;
  @override
  final String currency;
  @override
  final String? openingBalance;
  @override
  final String? platformId;

  factory _$OnboardingAccountDto(
          [void Function(OnboardingAccountDtoBuilder)? updates]) =>
      (new OnboardingAccountDtoBuilder()..update(updates))._build();

  _$OnboardingAccountDto._(
      {required this.path,
      required this.currency,
      this.openingBalance,
      this.platformId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        path, r'OnboardingAccountDto', 'path');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'OnboardingAccountDto', 'currency');
  }

  @override
  OnboardingAccountDto rebuild(
          void Function(OnboardingAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnboardingAccountDtoBuilder toBuilder() =>
      new OnboardingAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnboardingAccountDto &&
        path == other.path &&
        currency == other.currency &&
        openingBalance == other.openingBalance &&
        platformId == other.platformId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, openingBalance.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OnboardingAccountDto')
          ..add('path', path)
          ..add('currency', currency)
          ..add('openingBalance', openingBalance)
          ..add('platformId', platformId))
        .toString();
  }
}

class OnboardingAccountDtoBuilder
    implements Builder<OnboardingAccountDto, OnboardingAccountDtoBuilder> {
  _$OnboardingAccountDto? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _openingBalance;
  String? get openingBalance => _$this._openingBalance;
  set openingBalance(String? openingBalance) =>
      _$this._openingBalance = openingBalance;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(String? platformId) => _$this._platformId = platformId;

  OnboardingAccountDtoBuilder() {
    OnboardingAccountDto._defaults(this);
  }

  OnboardingAccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _currency = $v.currency;
      _openingBalance = $v.openingBalance;
      _platformId = $v.platformId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnboardingAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnboardingAccountDto;
  }

  @override
  void update(void Function(OnboardingAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OnboardingAccountDto build() => _build();

  _$OnboardingAccountDto _build() {
    final _$result = _$v ??
        new _$OnboardingAccountDto._(
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'OnboardingAccountDto', 'path'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'OnboardingAccountDto', 'currency'),
            openingBalance: openingBalance,
            platformId: platformId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
