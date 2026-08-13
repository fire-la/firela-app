// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSettingsResponseDto extends UserSettingsResponseDto {
  @override
  final String? baseCurrency;

  factory _$UserSettingsResponseDto(
          [void Function(UserSettingsResponseDtoBuilder)? updates]) =>
      (new UserSettingsResponseDtoBuilder()..update(updates))._build();

  _$UserSettingsResponseDto._({this.baseCurrency}) : super._();

  @override
  UserSettingsResponseDto rebuild(
          void Function(UserSettingsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingsResponseDtoBuilder toBuilder() =>
      new UserSettingsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingsResponseDto &&
        baseCurrency == other.baseCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSettingsResponseDto')
          ..add('baseCurrency', baseCurrency))
        .toString();
  }
}

class UserSettingsResponseDtoBuilder
    implements
        Builder<UserSettingsResponseDto, UserSettingsResponseDtoBuilder> {
  _$UserSettingsResponseDto? _$v;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  UserSettingsResponseDtoBuilder() {
    UserSettingsResponseDto._defaults(this);
  }

  UserSettingsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseCurrency = $v.baseCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSettingsResponseDto;
  }

  @override
  void update(void Function(UserSettingsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingsResponseDto build() => _build();

  _$UserSettingsResponseDto _build() {
    final _$result =
        _$v ?? new _$UserSettingsResponseDto._(baseCurrency: baseCurrency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
