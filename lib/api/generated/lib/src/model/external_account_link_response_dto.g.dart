// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_account_link_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalAccountLinkResponseDto extends ExternalAccountLinkResponseDto {
  @override
  final String id;
  @override
  final String provider;
  @override
  final String externalAccountId;
  @override
  final String beanAccountId;
  @override
  final bool isActive;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$ExternalAccountLinkResponseDto(
          [void Function(ExternalAccountLinkResponseDtoBuilder)? updates]) =>
      (new ExternalAccountLinkResponseDtoBuilder()..update(updates))._build();

  _$ExternalAccountLinkResponseDto._(
      {required this.id,
      required this.provider,
      required this.externalAccountId,
      required this.beanAccountId,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'ExternalAccountLinkResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        provider, r'ExternalAccountLinkResponseDto', 'provider');
    BuiltValueNullFieldError.checkNotNull(externalAccountId,
        r'ExternalAccountLinkResponseDto', 'externalAccountId');
    BuiltValueNullFieldError.checkNotNull(
        beanAccountId, r'ExternalAccountLinkResponseDto', 'beanAccountId');
    BuiltValueNullFieldError.checkNotNull(
        isActive, r'ExternalAccountLinkResponseDto', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'ExternalAccountLinkResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'ExternalAccountLinkResponseDto', 'updatedAt');
  }

  @override
  ExternalAccountLinkResponseDto rebuild(
          void Function(ExternalAccountLinkResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalAccountLinkResponseDtoBuilder toBuilder() =>
      new ExternalAccountLinkResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalAccountLinkResponseDto &&
        id == other.id &&
        provider == other.provider &&
        externalAccountId == other.externalAccountId &&
        beanAccountId == other.beanAccountId &&
        isActive == other.isActive &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, externalAccountId.hashCode);
    _$hash = $jc(_$hash, beanAccountId.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalAccountLinkResponseDto')
          ..add('id', id)
          ..add('provider', provider)
          ..add('externalAccountId', externalAccountId)
          ..add('beanAccountId', beanAccountId)
          ..add('isActive', isActive)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ExternalAccountLinkResponseDtoBuilder
    implements
        Builder<ExternalAccountLinkResponseDto,
            ExternalAccountLinkResponseDtoBuilder> {
  _$ExternalAccountLinkResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _externalAccountId;
  String? get externalAccountId => _$this._externalAccountId;
  set externalAccountId(String? externalAccountId) =>
      _$this._externalAccountId = externalAccountId;

  String? _beanAccountId;
  String? get beanAccountId => _$this._beanAccountId;
  set beanAccountId(String? beanAccountId) =>
      _$this._beanAccountId = beanAccountId;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  ExternalAccountLinkResponseDtoBuilder() {
    ExternalAccountLinkResponseDto._defaults(this);
  }

  ExternalAccountLinkResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _provider = $v.provider;
      _externalAccountId = $v.externalAccountId;
      _beanAccountId = $v.beanAccountId;
      _isActive = $v.isActive;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalAccountLinkResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExternalAccountLinkResponseDto;
  }

  @override
  void update(void Function(ExternalAccountLinkResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalAccountLinkResponseDto build() => _build();

  _$ExternalAccountLinkResponseDto _build() {
    final _$result = _$v ??
        new _$ExternalAccountLinkResponseDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ExternalAccountLinkResponseDto', 'id'),
            provider: BuiltValueNullFieldError.checkNotNull(
                provider, r'ExternalAccountLinkResponseDto', 'provider'),
            externalAccountId: BuiltValueNullFieldError.checkNotNull(
                externalAccountId,
                r'ExternalAccountLinkResponseDto',
                'externalAccountId'),
            beanAccountId: BuiltValueNullFieldError.checkNotNull(
                beanAccountId, r'ExternalAccountLinkResponseDto', 'beanAccountId'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'ExternalAccountLinkResponseDto', 'isActive'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ExternalAccountLinkResponseDto', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'ExternalAccountLinkResponseDto', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
