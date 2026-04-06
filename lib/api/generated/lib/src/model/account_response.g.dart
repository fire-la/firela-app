// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountResponse extends AccountResponse {
  @override
  final String id;
  @override
  final String path;
  @override
  final AccountType type;
  @override
  final AccountStatus status;
  @override
  final Date openDate;
  @override
  final BookingMethod bookingMethod;
  @override
  final bool isCustom;
  @override
  final Date? closeDate;
  @override
  final BuiltList<String>? currencies;
  @override
  final String? templatePath;
  @override
  final String? i18nKey;
  @override
  final String? icon;
  @override
  final BuiltMap<String, JsonObject?>? openMeta;
  @override
  final String? platformId;
  @override
  final PlatformInfo? platform;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$AccountResponse([void Function(AccountResponseBuilder)? updates]) =>
      (new AccountResponseBuilder()..update(updates))._build();

  _$AccountResponse._(
      {required this.id,
      required this.path,
      required this.type,
      required this.status,
      required this.openDate,
      required this.bookingMethod,
      required this.isCustom,
      this.closeDate,
      this.currencies,
      this.templatePath,
      this.i18nKey,
      this.icon,
      this.openMeta,
      this.platformId,
      this.platform,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AccountResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(path, r'AccountResponse', 'path');
    BuiltValueNullFieldError.checkNotNull(type, r'AccountResponse', 'type');
    BuiltValueNullFieldError.checkNotNull(status, r'AccountResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        openDate, r'AccountResponse', 'openDate');
    BuiltValueNullFieldError.checkNotNull(
        bookingMethod, r'AccountResponse', 'bookingMethod');
    BuiltValueNullFieldError.checkNotNull(
        isCustom, r'AccountResponse', 'isCustom');
  }

  @override
  AccountResponse rebuild(void Function(AccountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountResponseBuilder toBuilder() =>
      new AccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountResponse &&
        id == other.id &&
        path == other.path &&
        type == other.type &&
        status == other.status &&
        openDate == other.openDate &&
        bookingMethod == other.bookingMethod &&
        isCustom == other.isCustom &&
        closeDate == other.closeDate &&
        currencies == other.currencies &&
        templatePath == other.templatePath &&
        i18nKey == other.i18nKey &&
        icon == other.icon &&
        openMeta == other.openMeta &&
        platformId == other.platformId &&
        platform == other.platform &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, openDate.hashCode);
    _$hash = $jc(_$hash, bookingMethod.hashCode);
    _$hash = $jc(_$hash, isCustom.hashCode);
    _$hash = $jc(_$hash, closeDate.hashCode);
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jc(_$hash, templatePath.hashCode);
    _$hash = $jc(_$hash, i18nKey.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, openMeta.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountResponse')
          ..add('id', id)
          ..add('path', path)
          ..add('type', type)
          ..add('status', status)
          ..add('openDate', openDate)
          ..add('bookingMethod', bookingMethod)
          ..add('isCustom', isCustom)
          ..add('closeDate', closeDate)
          ..add('currencies', currencies)
          ..add('templatePath', templatePath)
          ..add('i18nKey', i18nKey)
          ..add('icon', icon)
          ..add('openMeta', openMeta)
          ..add('platformId', platformId)
          ..add('platform', platform)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AccountResponseBuilder
    implements Builder<AccountResponse, AccountResponseBuilder> {
  _$AccountResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  AccountType? _type;
  AccountType? get type => _$this._type;
  set type(AccountType? type) => _$this._type = type;

  AccountStatus? _status;
  AccountStatus? get status => _$this._status;
  set status(AccountStatus? status) => _$this._status = status;

  Date? _openDate;
  Date? get openDate => _$this._openDate;
  set openDate(Date? openDate) => _$this._openDate = openDate;

  BookingMethod? _bookingMethod;
  BookingMethod? get bookingMethod => _$this._bookingMethod;
  set bookingMethod(BookingMethod? bookingMethod) =>
      _$this._bookingMethod = bookingMethod;

  bool? _isCustom;
  bool? get isCustom => _$this._isCustom;
  set isCustom(bool? isCustom) => _$this._isCustom = isCustom;

  Date? _closeDate;
  Date? get closeDate => _$this._closeDate;
  set closeDate(Date? closeDate) => _$this._closeDate = closeDate;

  ListBuilder<String>? _currencies;
  ListBuilder<String> get currencies =>
      _$this._currencies ??= new ListBuilder<String>();
  set currencies(ListBuilder<String>? currencies) =>
      _$this._currencies = currencies;

  String? _templatePath;
  String? get templatePath => _$this._templatePath;
  set templatePath(String? templatePath) => _$this._templatePath = templatePath;

  String? _i18nKey;
  String? get i18nKey => _$this._i18nKey;
  set i18nKey(String? i18nKey) => _$this._i18nKey = i18nKey;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  MapBuilder<String, JsonObject?>? _openMeta;
  MapBuilder<String, JsonObject?> get openMeta =>
      _$this._openMeta ??= new MapBuilder<String, JsonObject?>();
  set openMeta(MapBuilder<String, JsonObject?>? openMeta) =>
      _$this._openMeta = openMeta;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(String? platformId) => _$this._platformId = platformId;

  PlatformInfoBuilder? _platform;
  PlatformInfoBuilder get platform =>
      _$this._platform ??= new PlatformInfoBuilder();
  set platform(PlatformInfoBuilder? platform) => _$this._platform = platform;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AccountResponseBuilder() {
    AccountResponse._defaults(this);
  }

  AccountResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _type = $v.type;
      _status = $v.status;
      _openDate = $v.openDate;
      _bookingMethod = $v.bookingMethod;
      _isCustom = $v.isCustom;
      _closeDate = $v.closeDate;
      _currencies = $v.currencies?.toBuilder();
      _templatePath = $v.templatePath;
      _i18nKey = $v.i18nKey;
      _icon = $v.icon;
      _openMeta = $v.openMeta?.toBuilder();
      _platformId = $v.platformId;
      _platform = $v.platform?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountResponse;
  }

  @override
  void update(void Function(AccountResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountResponse build() => _build();

  _$AccountResponse _build() {
    _$AccountResponse _$result;
    try {
      _$result = _$v ??
          new _$AccountResponse._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AccountResponse', 'id'),
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'AccountResponse', 'path'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'AccountResponse', 'type'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'AccountResponse', 'status'),
              openDate: BuiltValueNullFieldError.checkNotNull(
                  openDate, r'AccountResponse', 'openDate'),
              bookingMethod: BuiltValueNullFieldError.checkNotNull(
                  bookingMethod, r'AccountResponse', 'bookingMethod'),
              isCustom: BuiltValueNullFieldError.checkNotNull(
                  isCustom, r'AccountResponse', 'isCustom'),
              closeDate: closeDate,
              currencies: _currencies?.build(),
              templatePath: templatePath,
              i18nKey: i18nKey,
              icon: icon,
              openMeta: _openMeta?.build(),
              platformId: platformId,
              platform: _platform?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        _currencies?.build();

        _$failedField = 'openMeta';
        _openMeta?.build();

        _$failedField = 'platform';
        _platform?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
