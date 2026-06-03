// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignupDto extends SignupDto {
  @override
  final String? turnstileToken;

  factory _$SignupDto([void Function(SignupDtoBuilder)? updates]) =>
      (new SignupDtoBuilder()..update(updates))._build();

  _$SignupDto._({this.turnstileToken}) : super._();

  @override
  SignupDto rebuild(void Function(SignupDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupDtoBuilder toBuilder() => new SignupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupDto && turnstileToken == other.turnstileToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, turnstileToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignupDto')
          ..add('turnstileToken', turnstileToken))
        .toString();
  }
}

class SignupDtoBuilder implements Builder<SignupDto, SignupDtoBuilder> {
  _$SignupDto? _$v;

  String? _turnstileToken;
  String? get turnstileToken => _$this._turnstileToken;
  set turnstileToken(String? turnstileToken) =>
      _$this._turnstileToken = turnstileToken;

  SignupDtoBuilder() {
    SignupDto._defaults(this);
  }

  SignupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _turnstileToken = $v.turnstileToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignupDto;
  }

  @override
  void update(void Function(SignupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignupDto build() => _build();

  _$SignupDto _build() {
    final _$result = _$v ?? new _$SignupDto._(turnstileToken: turnstileToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
