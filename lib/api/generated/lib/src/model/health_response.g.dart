// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HealthResponseStatusEnum _$healthResponseStatusEnum_ok =
    const HealthResponseStatusEnum._('ok');
const HealthResponseStatusEnum _$healthResponseStatusEnum_degraded =
    const HealthResponseStatusEnum._('degraded');

HealthResponseStatusEnum _$healthResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$healthResponseStatusEnum_ok;
    case 'degraded':
      return _$healthResponseStatusEnum_degraded;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<HealthResponseStatusEnum> _$healthResponseStatusEnumValues =
    new BuiltSet<HealthResponseStatusEnum>(const <HealthResponseStatusEnum>[
  _$healthResponseStatusEnum_ok,
  _$healthResponseStatusEnum_degraded,
]);

Serializer<HealthResponseStatusEnum> _$healthResponseStatusEnumSerializer =
    new _$HealthResponseStatusEnumSerializer();

class _$HealthResponseStatusEnumSerializer
    implements PrimitiveSerializer<HealthResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'degraded': 'degraded',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'degraded': 'degraded',
  };

  @override
  final Iterable<Type> types = const <Type>[HealthResponseStatusEnum];
  @override
  final String wireName = 'HealthResponseStatusEnum';

  @override
  Object serialize(Serializers serializers, HealthResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HealthResponseStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HealthResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HealthResponse extends HealthResponse {
  @override
  final HealthResponseStatusEnum status;
  @override
  final String? version;

  factory _$HealthResponse([void Function(HealthResponseBuilder)? updates]) =>
      (new HealthResponseBuilder()..update(updates))._build();

  _$HealthResponse._({required this.status, this.version}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'HealthResponse', 'status');
  }

  @override
  HealthResponse rebuild(void Function(HealthResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthResponseBuilder toBuilder() =>
      new HealthResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthResponse &&
        status == other.status &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthResponse')
          ..add('status', status)
          ..add('version', version))
        .toString();
  }
}

class HealthResponseBuilder
    implements Builder<HealthResponse, HealthResponseBuilder> {
  _$HealthResponse? _$v;

  HealthResponseStatusEnum? _status;
  HealthResponseStatusEnum? get status => _$this._status;
  set status(HealthResponseStatusEnum? status) => _$this._status = status;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  HealthResponseBuilder() {
    HealthResponse._defaults(this);
  }

  HealthResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HealthResponse;
  }

  @override
  void update(void Function(HealthResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthResponse build() => _build();

  _$HealthResponse _build() {
    final _$result = _$v ??
        new _$HealthResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'HealthResponse', 'status'),
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
