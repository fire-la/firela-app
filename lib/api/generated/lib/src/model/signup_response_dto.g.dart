// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignupResponseDtoRoleEnum _$signupResponseDtoRoleEnum_USER =
    const SignupResponseDtoRoleEnum._('USER');
const SignupResponseDtoRoleEnum _$signupResponseDtoRoleEnum_ADMIN =
    const SignupResponseDtoRoleEnum._('ADMIN');
const SignupResponseDtoRoleEnum _$signupResponseDtoRoleEnum_DEMO =
    const SignupResponseDtoRoleEnum._('DEMO');
const SignupResponseDtoRoleEnum _$signupResponseDtoRoleEnum_INACTIVE =
    const SignupResponseDtoRoleEnum._('INACTIVE');
const SignupResponseDtoRoleEnum _$signupResponseDtoRoleEnum_PAID =
    const SignupResponseDtoRoleEnum._('PAID');
const SignupResponseDtoRoleEnum _$signupResponseDtoRoleEnum_OPS =
    const SignupResponseDtoRoleEnum._('OPS');

SignupResponseDtoRoleEnum _$signupResponseDtoRoleEnumValueOf(String name) {
  switch (name) {
    case 'USER':
      return _$signupResponseDtoRoleEnum_USER;
    case 'ADMIN':
      return _$signupResponseDtoRoleEnum_ADMIN;
    case 'DEMO':
      return _$signupResponseDtoRoleEnum_DEMO;
    case 'INACTIVE':
      return _$signupResponseDtoRoleEnum_INACTIVE;
    case 'PAID':
      return _$signupResponseDtoRoleEnum_PAID;
    case 'OPS':
      return _$signupResponseDtoRoleEnum_OPS;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SignupResponseDtoRoleEnum> _$signupResponseDtoRoleEnumValues =
    new BuiltSet<SignupResponseDtoRoleEnum>(const <SignupResponseDtoRoleEnum>[
  _$signupResponseDtoRoleEnum_USER,
  _$signupResponseDtoRoleEnum_ADMIN,
  _$signupResponseDtoRoleEnum_DEMO,
  _$signupResponseDtoRoleEnum_INACTIVE,
  _$signupResponseDtoRoleEnum_PAID,
  _$signupResponseDtoRoleEnum_OPS,
]);

Serializer<SignupResponseDtoRoleEnum> _$signupResponseDtoRoleEnumSerializer =
    new _$SignupResponseDtoRoleEnumSerializer();

class _$SignupResponseDtoRoleEnumSerializer
    implements PrimitiveSerializer<SignupResponseDtoRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USER': 'USER',
    'ADMIN': 'ADMIN',
    'DEMO': 'DEMO',
    'INACTIVE': 'INACTIVE',
    'PAID': 'PAID',
    'OPS': 'OPS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USER': 'USER',
    'ADMIN': 'ADMIN',
    'DEMO': 'DEMO',
    'INACTIVE': 'INACTIVE',
    'PAID': 'PAID',
    'OPS': 'OPS',
  };

  @override
  final Iterable<Type> types = const <Type>[SignupResponseDtoRoleEnum];
  @override
  final String wireName = 'SignupResponseDtoRoleEnum';

  @override
  Object serialize(Serializers serializers, SignupResponseDtoRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignupResponseDtoRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignupResponseDtoRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignupResponseDto extends SignupResponseDto {
  @override
  final String authToken;
  @override
  final String accessToken;
  @override
  final SignupResponseDtoRoleEnum role;

  factory _$SignupResponseDto(
          [void Function(SignupResponseDtoBuilder)? updates]) =>
      (new SignupResponseDtoBuilder()..update(updates))._build();

  _$SignupResponseDto._(
      {required this.authToken, required this.accessToken, required this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authToken, r'SignupResponseDto', 'authToken');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'SignupResponseDto', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(role, r'SignupResponseDto', 'role');
  }

  @override
  SignupResponseDto rebuild(void Function(SignupResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupResponseDtoBuilder toBuilder() =>
      new SignupResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupResponseDto &&
        authToken == other.authToken &&
        accessToken == other.accessToken &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authToken.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignupResponseDto')
          ..add('authToken', authToken)
          ..add('accessToken', accessToken)
          ..add('role', role))
        .toString();
  }
}

class SignupResponseDtoBuilder
    implements Builder<SignupResponseDto, SignupResponseDtoBuilder> {
  _$SignupResponseDto? _$v;

  String? _authToken;
  String? get authToken => _$this._authToken;
  set authToken(String? authToken) => _$this._authToken = authToken;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  SignupResponseDtoRoleEnum? _role;
  SignupResponseDtoRoleEnum? get role => _$this._role;
  set role(SignupResponseDtoRoleEnum? role) => _$this._role = role;

  SignupResponseDtoBuilder() {
    SignupResponseDto._defaults(this);
  }

  SignupResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authToken = $v.authToken;
      _accessToken = $v.accessToken;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignupResponseDto;
  }

  @override
  void update(void Function(SignupResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignupResponseDto build() => _build();

  _$SignupResponseDto _build() {
    final _$result = _$v ??
        new _$SignupResponseDto._(
            authToken: BuiltValueNullFieldError.checkNotNull(
                authToken, r'SignupResponseDto', 'authToken'),
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'SignupResponseDto', 'accessToken'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'SignupResponseDto', 'role'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
