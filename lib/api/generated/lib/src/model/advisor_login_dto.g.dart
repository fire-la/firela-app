// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor_login_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisorLoginDto extends AdvisorLoginDto {
  @override
  final String accessToken;

  factory _$AdvisorLoginDto([void Function(AdvisorLoginDtoBuilder)? updates]) =>
      (new AdvisorLoginDtoBuilder()..update(updates))._build();

  _$AdvisorLoginDto._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'AdvisorLoginDto', 'accessToken');
  }

  @override
  AdvisorLoginDto rebuild(void Function(AdvisorLoginDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisorLoginDtoBuilder toBuilder() =>
      new AdvisorLoginDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisorLoginDto && accessToken == other.accessToken;
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
    return (newBuiltValueToStringHelper(r'AdvisorLoginDto')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class AdvisorLoginDtoBuilder
    implements Builder<AdvisorLoginDto, AdvisorLoginDtoBuilder> {
  _$AdvisorLoginDto? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  AdvisorLoginDtoBuilder() {
    AdvisorLoginDto._defaults(this);
  }

  AdvisorLoginDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisorLoginDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisorLoginDto;
  }

  @override
  void update(void Function(AdvisorLoginDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvisorLoginDto build() => _build();

  _$AdvisorLoginDto _build() {
    final _$result = _$v ??
        new _$AdvisorLoginDto._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'AdvisorLoginDto', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
