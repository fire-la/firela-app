// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlatformInfo extends PlatformInfo {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? canonical;
  @override
  final String? logoUrl;
  @override
  final String? type;

  factory _$PlatformInfo([void Function(PlatformInfoBuilder)? updates]) =>
      (new PlatformInfoBuilder()..update(updates))._build();

  _$PlatformInfo._(
      {this.id, this.name, this.canonical, this.logoUrl, this.type})
      : super._();

  @override
  PlatformInfo rebuild(void Function(PlatformInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformInfoBuilder toBuilder() => new PlatformInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformInfo &&
        id == other.id &&
        name == other.name &&
        canonical == other.canonical &&
        logoUrl == other.logoUrl &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, canonical.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('canonical', canonical)
          ..add('logoUrl', logoUrl)
          ..add('type', type))
        .toString();
  }
}

class PlatformInfoBuilder
    implements Builder<PlatformInfo, PlatformInfoBuilder> {
  _$PlatformInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _canonical;
  String? get canonical => _$this._canonical;
  set canonical(String? canonical) => _$this._canonical = canonical;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  PlatformInfoBuilder() {
    PlatformInfo._defaults(this);
  }

  PlatformInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _canonical = $v.canonical;
      _logoUrl = $v.logoUrl;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformInfo;
  }

  @override
  void update(void Function(PlatformInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformInfo build() => _build();

  _$PlatformInfo _build() {
    final _$result = _$v ??
        new _$PlatformInfo._(
            id: id,
            name: name,
            canonical: canonical,
            logoUrl: logoUrl,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
