// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnboardingDto extends OnboardingDto {
  @override
  final BuiltList<OnboardingAccountDto>? accounts;
  @override
  final bool? skipAssetRegistration;

  factory _$OnboardingDto([void Function(OnboardingDtoBuilder)? updates]) =>
      (new OnboardingDtoBuilder()..update(updates))._build();

  _$OnboardingDto._({this.accounts, this.skipAssetRegistration}) : super._();

  @override
  OnboardingDto rebuild(void Function(OnboardingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnboardingDtoBuilder toBuilder() => new OnboardingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnboardingDto &&
        accounts == other.accounts &&
        skipAssetRegistration == other.skipAssetRegistration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, skipAssetRegistration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OnboardingDto')
          ..add('accounts', accounts)
          ..add('skipAssetRegistration', skipAssetRegistration))
        .toString();
  }
}

class OnboardingDtoBuilder
    implements Builder<OnboardingDto, OnboardingDtoBuilder> {
  _$OnboardingDto? _$v;

  ListBuilder<OnboardingAccountDto>? _accounts;
  ListBuilder<OnboardingAccountDto> get accounts =>
      _$this._accounts ??= new ListBuilder<OnboardingAccountDto>();
  set accounts(ListBuilder<OnboardingAccountDto>? accounts) =>
      _$this._accounts = accounts;

  bool? _skipAssetRegistration;
  bool? get skipAssetRegistration => _$this._skipAssetRegistration;
  set skipAssetRegistration(bool? skipAssetRegistration) =>
      _$this._skipAssetRegistration = skipAssetRegistration;

  OnboardingDtoBuilder() {
    OnboardingDto._defaults(this);
  }

  OnboardingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts?.toBuilder();
      _skipAssetRegistration = $v.skipAssetRegistration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnboardingDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnboardingDto;
  }

  @override
  void update(void Function(OnboardingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OnboardingDto build() => _build();

  _$OnboardingDto _build() {
    _$OnboardingDto _$result;
    try {
      _$result = _$v ??
          new _$OnboardingDto._(
              accounts: _accounts?.build(),
              skipAssetRegistration: skipAssetRegistration);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        _accounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OnboardingDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
