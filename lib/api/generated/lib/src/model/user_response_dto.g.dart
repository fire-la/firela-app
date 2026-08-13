// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResponseDto extends UserResponseDto {
  @override
  final String id;
  @override
  final String role;
  @override
  final BuiltList<String> permissions;
  @override
  final UserSettingsResponseDto settings;

  factory _$UserResponseDto([void Function(UserResponseDtoBuilder)? updates]) =>
      (new UserResponseDtoBuilder()..update(updates))._build();

  _$UserResponseDto._(
      {required this.id,
      required this.role,
      required this.permissions,
      required this.settings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'UserResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(role, r'UserResponseDto', 'role');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'UserResponseDto', 'permissions');
    BuiltValueNullFieldError.checkNotNull(
        settings, r'UserResponseDto', 'settings');
  }

  @override
  UserResponseDto rebuild(void Function(UserResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseDtoBuilder toBuilder() =>
      new UserResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponseDto &&
        id == other.id &&
        role == other.role &&
        permissions == other.permissions &&
        settings == other.settings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResponseDto')
          ..add('id', id)
          ..add('role', role)
          ..add('permissions', permissions)
          ..add('settings', settings))
        .toString();
  }
}

class UserResponseDtoBuilder
    implements Builder<UserResponseDto, UserResponseDtoBuilder> {
  _$UserResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= new ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  UserSettingsResponseDtoBuilder? _settings;
  UserSettingsResponseDtoBuilder get settings =>
      _$this._settings ??= new UserSettingsResponseDtoBuilder();
  set settings(UserSettingsResponseDtoBuilder? settings) =>
      _$this._settings = settings;

  UserResponseDtoBuilder() {
    UserResponseDto._defaults(this);
  }

  UserResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _role = $v.role;
      _permissions = $v.permissions.toBuilder();
      _settings = $v.settings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserResponseDto;
  }

  @override
  void update(void Function(UserResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponseDto build() => _build();

  _$UserResponseDto _build() {
    _$UserResponseDto _$result;
    try {
      _$result = _$v ??
          new _$UserResponseDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'UserResponseDto', 'id'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, r'UserResponseDto', 'role'),
              permissions: permissions.build(),
              settings: settings.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
        _$failedField = 'settings';
        settings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
