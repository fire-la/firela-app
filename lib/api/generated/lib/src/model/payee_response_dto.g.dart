// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payee_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayeeResponseDto extends PayeeResponseDto {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String payee;
  @override
  final String? payeeProfileId;
  @override
  final String? customCategory;
  @override
  final BuiltList<String> customTags;
  @override
  final num useCount;
  @override
  final DateTime lastUsedAt;
  @override
  final JsonObject meta;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$PayeeResponseDto(
          [void Function(PayeeResponseDtoBuilder)? updates]) =>
      (new PayeeResponseDtoBuilder()..update(updates))._build();

  _$PayeeResponseDto._(
      {required this.id,
      required this.userId,
      required this.payee,
      this.payeeProfileId,
      this.customCategory,
      required this.customTags,
      required this.useCount,
      required this.lastUsedAt,
      required this.meta,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PayeeResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'PayeeResponseDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(payee, r'PayeeResponseDto', 'payee');
    BuiltValueNullFieldError.checkNotNull(
        customTags, r'PayeeResponseDto', 'customTags');
    BuiltValueNullFieldError.checkNotNull(
        useCount, r'PayeeResponseDto', 'useCount');
    BuiltValueNullFieldError.checkNotNull(
        lastUsedAt, r'PayeeResponseDto', 'lastUsedAt');
    BuiltValueNullFieldError.checkNotNull(meta, r'PayeeResponseDto', 'meta');
    BuiltValueNullFieldError.checkNotNull(
        isActive, r'PayeeResponseDto', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'PayeeResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'PayeeResponseDto', 'updatedAt');
  }

  @override
  PayeeResponseDto rebuild(void Function(PayeeResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayeeResponseDtoBuilder toBuilder() =>
      new PayeeResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayeeResponseDto &&
        id == other.id &&
        userId == other.userId &&
        payee == other.payee &&
        payeeProfileId == other.payeeProfileId &&
        customCategory == other.customCategory &&
        customTags == other.customTags &&
        useCount == other.useCount &&
        lastUsedAt == other.lastUsedAt &&
        meta == other.meta &&
        isActive == other.isActive &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, payeeProfileId.hashCode);
    _$hash = $jc(_$hash, customCategory.hashCode);
    _$hash = $jc(_$hash, customTags.hashCode);
    _$hash = $jc(_$hash, useCount.hashCode);
    _$hash = $jc(_$hash, lastUsedAt.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayeeResponseDto')
          ..add('id', id)
          ..add('userId', userId)
          ..add('payee', payee)
          ..add('payeeProfileId', payeeProfileId)
          ..add('customCategory', customCategory)
          ..add('customTags', customTags)
          ..add('useCount', useCount)
          ..add('lastUsedAt', lastUsedAt)
          ..add('meta', meta)
          ..add('isActive', isActive)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PayeeResponseDtoBuilder
    implements Builder<PayeeResponseDto, PayeeResponseDtoBuilder> {
  _$PayeeResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _payeeProfileId;
  String? get payeeProfileId => _$this._payeeProfileId;
  set payeeProfileId(String? payeeProfileId) =>
      _$this._payeeProfileId = payeeProfileId;

  String? _customCategory;
  String? get customCategory => _$this._customCategory;
  set customCategory(String? customCategory) =>
      _$this._customCategory = customCategory;

  ListBuilder<String>? _customTags;
  ListBuilder<String> get customTags =>
      _$this._customTags ??= new ListBuilder<String>();
  set customTags(ListBuilder<String>? customTags) =>
      _$this._customTags = customTags;

  num? _useCount;
  num? get useCount => _$this._useCount;
  set useCount(num? useCount) => _$this._useCount = useCount;

  DateTime? _lastUsedAt;
  DateTime? get lastUsedAt => _$this._lastUsedAt;
  set lastUsedAt(DateTime? lastUsedAt) => _$this._lastUsedAt = lastUsedAt;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PayeeResponseDtoBuilder() {
    PayeeResponseDto._defaults(this);
  }

  PayeeResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _payee = $v.payee;
      _payeeProfileId = $v.payeeProfileId;
      _customCategory = $v.customCategory;
      _customTags = $v.customTags.toBuilder();
      _useCount = $v.useCount;
      _lastUsedAt = $v.lastUsedAt;
      _meta = $v.meta;
      _isActive = $v.isActive;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayeeResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayeeResponseDto;
  }

  @override
  void update(void Function(PayeeResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayeeResponseDto build() => _build();

  _$PayeeResponseDto _build() {
    _$PayeeResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PayeeResponseDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PayeeResponseDto', 'id'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'PayeeResponseDto', 'userId'),
              payee: BuiltValueNullFieldError.checkNotNull(
                  payee, r'PayeeResponseDto', 'payee'),
              payeeProfileId: payeeProfileId,
              customCategory: customCategory,
              customTags: customTags.build(),
              useCount: BuiltValueNullFieldError.checkNotNull(
                  useCount, r'PayeeResponseDto', 'useCount'),
              lastUsedAt: BuiltValueNullFieldError.checkNotNull(
                  lastUsedAt, r'PayeeResponseDto', 'lastUsedAt'),
              meta: BuiltValueNullFieldError.checkNotNull(
                  meta, r'PayeeResponseDto', 'meta'),
              isActive: BuiltValueNullFieldError.checkNotNull(
                  isActive, r'PayeeResponseDto', 'isActive'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'PayeeResponseDto', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, r'PayeeResponseDto', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customTags';
        customTags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PayeeResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
