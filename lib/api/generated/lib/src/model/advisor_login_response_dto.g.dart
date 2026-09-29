// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor_login_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisorLoginResponseDto extends AdvisorLoginResponseDto {
  @override
  final String authToken;

  factory _$AdvisorLoginResponseDto(
          [void Function(AdvisorLoginResponseDtoBuilder)? updates]) =>
      (new AdvisorLoginResponseDtoBuilder()..update(updates))._build();

  _$AdvisorLoginResponseDto._({required this.authToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authToken, r'AdvisorLoginResponseDto', 'authToken');
  }

  @override
  AdvisorLoginResponseDto rebuild(
          void Function(AdvisorLoginResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisorLoginResponseDtoBuilder toBuilder() =>
      new AdvisorLoginResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisorLoginResponseDto && authToken == other.authToken;
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
    return (newBuiltValueToStringHelper(r'AdvisorLoginResponseDto')
          ..add('authToken', authToken))
        .toString();
  }
}

class AdvisorLoginResponseDtoBuilder
    implements
        Builder<AdvisorLoginResponseDto, AdvisorLoginResponseDtoBuilder> {
  _$AdvisorLoginResponseDto? _$v;

  String? _authToken;
  String? get authToken => _$this._authToken;
  set authToken(String? authToken) => _$this._authToken = authToken;

  AdvisorLoginResponseDtoBuilder() {
    AdvisorLoginResponseDto._defaults(this);
  }

  AdvisorLoginResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authToken = $v.authToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisorLoginResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisorLoginResponseDto;
  }

  @override
  void update(void Function(AdvisorLoginResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvisorLoginResponseDto build() => _build();

  _$AdvisorLoginResponseDto _build() {
    final _$result = _$v ??
        new _$AdvisorLoginResponseDto._(
            authToken: BuiltValueNullFieldError.checkNotNull(
                authToken, r'AdvisorLoginResponseDto', 'authToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
