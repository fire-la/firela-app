// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionInfoDto extends RegionInfoDto {
  @override
  final String code;
  @override
  final String displayName;
  @override
  final BuiltList<String> chain;
  @override
  final RegionConfigDto config;
  @override
  final String? parent;

  factory _$RegionInfoDto([void Function(RegionInfoDtoBuilder)? updates]) =>
      (new RegionInfoDtoBuilder()..update(updates))._build();

  _$RegionInfoDto._(
      {required this.code,
      required this.displayName,
      required this.chain,
      required this.config,
      this.parent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(code, r'RegionInfoDto', 'code');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'RegionInfoDto', 'displayName');
    BuiltValueNullFieldError.checkNotNull(chain, r'RegionInfoDto', 'chain');
    BuiltValueNullFieldError.checkNotNull(config, r'RegionInfoDto', 'config');
  }

  @override
  RegionInfoDto rebuild(void Function(RegionInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionInfoDtoBuilder toBuilder() => new RegionInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionInfoDto &&
        code == other.code &&
        displayName == other.displayName &&
        chain == other.chain &&
        config == other.config &&
        parent == other.parent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, chain.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionInfoDto')
          ..add('code', code)
          ..add('displayName', displayName)
          ..add('chain', chain)
          ..add('config', config)
          ..add('parent', parent))
        .toString();
  }
}

class RegionInfoDtoBuilder
    implements Builder<RegionInfoDto, RegionInfoDtoBuilder> {
  _$RegionInfoDto? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  ListBuilder<String>? _chain;
  ListBuilder<String> get chain => _$this._chain ??= new ListBuilder<String>();
  set chain(ListBuilder<String>? chain) => _$this._chain = chain;

  RegionConfigDtoBuilder? _config;
  RegionConfigDtoBuilder get config =>
      _$this._config ??= new RegionConfigDtoBuilder();
  set config(RegionConfigDtoBuilder? config) => _$this._config = config;

  String? _parent;
  String? get parent => _$this._parent;
  set parent(String? parent) => _$this._parent = parent;

  RegionInfoDtoBuilder() {
    RegionInfoDto._defaults(this);
  }

  RegionInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _displayName = $v.displayName;
      _chain = $v.chain.toBuilder();
      _config = $v.config.toBuilder();
      _parent = $v.parent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionInfoDto;
  }

  @override
  void update(void Function(RegionInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionInfoDto build() => _build();

  _$RegionInfoDto _build() {
    _$RegionInfoDto _$result;
    try {
      _$result = _$v ??
          new _$RegionInfoDto._(
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'RegionInfoDto', 'code'),
              displayName: BuiltValueNullFieldError.checkNotNull(
                  displayName, r'RegionInfoDto', 'displayName'),
              chain: chain.build(),
              config: config.build(),
              parent: parent);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'chain';
        chain.build();
        _$failedField = 'config';
        config.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegionInfoDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
