// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anonymous_login_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnonymousLoginResponseDto extends AnonymousLoginResponseDto {
  @override
  final String authToken;

  factory _$AnonymousLoginResponseDto(
          [void Function(AnonymousLoginResponseDtoBuilder)? updates]) =>
      (new AnonymousLoginResponseDtoBuilder()..update(updates))._build();

  _$AnonymousLoginResponseDto._({required this.authToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authToken, r'AnonymousLoginResponseDto', 'authToken');
  }

  @override
  AnonymousLoginResponseDto rebuild(
          void Function(AnonymousLoginResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnonymousLoginResponseDtoBuilder toBuilder() =>
      new AnonymousLoginResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnonymousLoginResponseDto && authToken == other.authToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnonymousLoginResponseDto')
          ..add('authToken', authToken))
        .toString();
  }
}

class AnonymousLoginResponseDtoBuilder
    implements
        Builder<AnonymousLoginResponseDto, AnonymousLoginResponseDtoBuilder> {
  _$AnonymousLoginResponseDto? _$v;

  String? _authToken;
  String? get authToken => _$this._authToken;
  set authToken(String? authToken) => _$this._authToken = authToken;

  AnonymousLoginResponseDtoBuilder() {
    AnonymousLoginResponseDto._defaults(this);
  }

  AnonymousLoginResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authToken = $v.authToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnonymousLoginResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnonymousLoginResponseDto;
  }

  @override
  void update(void Function(AnonymousLoginResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnonymousLoginResponseDto build() => _build();

  _$AnonymousLoginResponseDto _build() {
    final _$result = _$v ??
        new _$AnonymousLoginResponseDto._(
            authToken: BuiltValueNullFieldError.checkNotNull(
                authToken, r'AnonymousLoginResponseDto', 'authToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
