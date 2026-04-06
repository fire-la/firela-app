// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccountRequest extends CreateAccountRequest {
  @override
  final String path;
  @override
  final Date openDate;
  @override
  final BuiltList<String>? currencies;
  @override
  final BookingMethod? bookingMethod;
  @override
  final String? templatePath;
  @override
  final bool? isCustom;
  @override
  final String? i18nKey;
  @override
  final String? icon;
  @override
  final BuiltMap<String, JsonObject?>? openMeta;
  @override
  final String? platformId;

  factory _$CreateAccountRequest(
          [void Function(CreateAccountRequestBuilder)? updates]) =>
      (new CreateAccountRequestBuilder()..update(updates))._build();

  _$CreateAccountRequest._(
      {required this.path,
      required this.openDate,
      this.currencies,
      this.bookingMethod,
      this.templatePath,
      this.isCustom,
      this.i18nKey,
      this.icon,
      this.openMeta,
      this.platformId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        path, r'CreateAccountRequest', 'path');
    BuiltValueNullFieldError.checkNotNull(
        openDate, r'CreateAccountRequest', 'openDate');
  }

  @override
  CreateAccountRequest rebuild(
          void Function(CreateAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccountRequestBuilder toBuilder() =>
      new CreateAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccountRequest &&
        path == other.path &&
        openDate == other.openDate &&
        currencies == other.currencies &&
        bookingMethod == other.bookingMethod &&
        templatePath == other.templatePath &&
        isCustom == other.isCustom &&
        i18nKey == other.i18nKey &&
        icon == other.icon &&
        openMeta == other.openMeta &&
        platformId == other.platformId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, openDate.hashCode);
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jc(_$hash, bookingMethod.hashCode);
    _$hash = $jc(_$hash, templatePath.hashCode);
    _$hash = $jc(_$hash, isCustom.hashCode);
    _$hash = $jc(_$hash, i18nKey.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, openMeta.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAccountRequest')
          ..add('path', path)
          ..add('openDate', openDate)
          ..add('currencies', currencies)
          ..add('bookingMethod', bookingMethod)
          ..add('templatePath', templatePath)
          ..add('isCustom', isCustom)
          ..add('i18nKey', i18nKey)
          ..add('icon', icon)
          ..add('openMeta', openMeta)
          ..add('platformId', platformId))
        .toString();
  }
}

class CreateAccountRequestBuilder
    implements Builder<CreateAccountRequest, CreateAccountRequestBuilder> {
  _$CreateAccountRequest? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  Date? _openDate;
  Date? get openDate => _$this._openDate;
  set openDate(Date? openDate) => _$this._openDate = openDate;

  ListBuilder<String>? _currencies;
  ListBuilder<String> get currencies =>
      _$this._currencies ??= new ListBuilder<String>();
  set currencies(ListBuilder<String>? currencies) =>
      _$this._currencies = currencies;

  BookingMethod? _bookingMethod;
  BookingMethod? get bookingMethod => _$this._bookingMethod;
  set bookingMethod(BookingMethod? bookingMethod) =>
      _$this._bookingMethod = bookingMethod;

  String? _templatePath;
  String? get templatePath => _$this._templatePath;
  set templatePath(String? templatePath) => _$this._templatePath = templatePath;

  bool? _isCustom;
  bool? get isCustom => _$this._isCustom;
  set isCustom(bool? isCustom) => _$this._isCustom = isCustom;

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

  CreateAccountRequestBuilder() {
    CreateAccountRequest._defaults(this);
  }

  CreateAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _openDate = $v.openDate;
      _currencies = $v.currencies?.toBuilder();
      _bookingMethod = $v.bookingMethod;
      _templatePath = $v.templatePath;
      _isCustom = $v.isCustom;
      _i18nKey = $v.i18nKey;
      _icon = $v.icon;
      _openMeta = $v.openMeta?.toBuilder();
      _platformId = $v.platformId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccountRequest;
  }

  @override
  void update(void Function(CreateAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccountRequest build() => _build();

  _$CreateAccountRequest _build() {
    _$CreateAccountRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateAccountRequest._(
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'CreateAccountRequest', 'path'),
              openDate: BuiltValueNullFieldError.checkNotNull(
                  openDate, r'CreateAccountRequest', 'openDate'),
              currencies: _currencies?.build(),
              bookingMethod: bookingMethod,
              templatePath: templatePath,
              isCustom: isCustom,
              i18nKey: i18nKey,
              icon: icon,
              openMeta: _openMeta?.build(),
              platformId: platformId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        _currencies?.build();

        _$failedField = 'openMeta';
        _openMeta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateAccountRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
