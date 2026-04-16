// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anonymous_login_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnonymousLoginDto extends AnonymousLoginDto {
  @override
  final String accessToken;

  factory _$AnonymousLoginDto(
          [void Function(AnonymousLoginDtoBuilder)? updates]) =>
      (new AnonymousLoginDtoBuilder()..update(updates))._build();

  _$AnonymousLoginDto._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'AnonymousLoginDto', 'accessToken');
  }

  @override
  AnonymousLoginDto rebuild(void Function(AnonymousLoginDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnonymousLoginDtoBuilder toBuilder() =>
      new AnonymousLoginDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnonymousLoginDto && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnonymousLoginDto')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class AnonymousLoginDtoBuilder
    implements Builder<AnonymousLoginDto, AnonymousLoginDtoBuilder> {
  _$AnonymousLoginDto? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  AnonymousLoginDtoBuilder() {
    AnonymousLoginDto._defaults(this);
  }

  AnonymousLoginDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnonymousLoginDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnonymousLoginDto;
  }

  @override
  void update(void Function(AnonymousLoginDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnonymousLoginDto build() => _build();

  _$AnonymousLoginDto _build() {
    final _$result = _$v ??
        new _$AnonymousLoginDto._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'AnonymousLoginDto', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
