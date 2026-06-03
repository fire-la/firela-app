// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_assets =
    const AccountResponseDtoTypeEnum._('assets');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_liabilities =
    const AccountResponseDtoTypeEnum._('liabilities');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_income =
    const AccountResponseDtoTypeEnum._('income');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_expenses =
    const AccountResponseDtoTypeEnum._('expenses');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_equity =
    const AccountResponseDtoTypeEnum._('equity');

AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'assets':
      return _$accountResponseDtoTypeEnum_assets;
    case 'liabilities':
      return _$accountResponseDtoTypeEnum_liabilities;
    case 'income':
      return _$accountResponseDtoTypeEnum_income;
    case 'expenses':
      return _$accountResponseDtoTypeEnum_expenses;
    case 'equity':
      return _$accountResponseDtoTypeEnum_equity;
    default:
      return _$accountResponseDtoTypeEnum_equity;
  }
}

final BuiltSet<AccountResponseDtoTypeEnum> _$accountResponseDtoTypeEnumValues =
    new BuiltSet<AccountResponseDtoTypeEnum>(const <AccountResponseDtoTypeEnum>[
  _$accountResponseDtoTypeEnum_assets,
  _$accountResponseDtoTypeEnum_liabilities,
  _$accountResponseDtoTypeEnum_income,
  _$accountResponseDtoTypeEnum_expenses,
  _$accountResponseDtoTypeEnum_equity,
]);

const AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnum_OPEN =
    const AccountResponseDtoStatusEnum._('OPEN');
const AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnum_CLOSED =
    const AccountResponseDtoStatusEnum._('CLOSED');
const AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnum_SUSPENDED =
    const AccountResponseDtoStatusEnum._('SUSPENDED');

AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'OPEN':
      return _$accountResponseDtoStatusEnum_OPEN;
    case 'CLOSED':
      return _$accountResponseDtoStatusEnum_CLOSED;
    case 'SUSPENDED':
      return _$accountResponseDtoStatusEnum_SUSPENDED;
    default:
      return _$accountResponseDtoStatusEnum_SUSPENDED;
  }
}

final BuiltSet<AccountResponseDtoStatusEnum>
    _$accountResponseDtoStatusEnumValues = new BuiltSet<
        AccountResponseDtoStatusEnum>(const <AccountResponseDtoStatusEnum>[
  _$accountResponseDtoStatusEnum_OPEN,
  _$accountResponseDtoStatusEnum_CLOSED,
  _$accountResponseDtoStatusEnum_SUSPENDED,
]);

const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_FIFO =
    const AccountResponseDtoBookingMethodEnum._('FIFO');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_LIFO =
    const AccountResponseDtoBookingMethodEnum._('LIFO');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_HIFO =
    const AccountResponseDtoBookingMethodEnum._('HIFO');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_AVERAGE =
    const AccountResponseDtoBookingMethodEnum._('AVERAGE');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_STRICT =
    const AccountResponseDtoBookingMethodEnum._('STRICT');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE =
    const AccountResponseDtoBookingMethodEnum._('STRICT_WITH_SIZE');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_NONE =
    const AccountResponseDtoBookingMethodEnum._('NONE');

AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnumValueOf(String name) {
  switch (name) {
    case 'FIFO':
      return _$accountResponseDtoBookingMethodEnum_FIFO;
    case 'LIFO':
      return _$accountResponseDtoBookingMethodEnum_LIFO;
    case 'HIFO':
      return _$accountResponseDtoBookingMethodEnum_HIFO;
    case 'AVERAGE':
      return _$accountResponseDtoBookingMethodEnum_AVERAGE;
    case 'STRICT':
      return _$accountResponseDtoBookingMethodEnum_STRICT;
    case 'STRICT_WITH_SIZE':
      return _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE;
    case 'NONE':
      return _$accountResponseDtoBookingMethodEnum_NONE;
    default:
      return _$accountResponseDtoBookingMethodEnum_NONE;
  }
}

final BuiltSet<AccountResponseDtoBookingMethodEnum>
    _$accountResponseDtoBookingMethodEnumValues = new BuiltSet<
        AccountResponseDtoBookingMethodEnum>(const <AccountResponseDtoBookingMethodEnum>[
  _$accountResponseDtoBookingMethodEnum_FIFO,
  _$accountResponseDtoBookingMethodEnum_LIFO,
  _$accountResponseDtoBookingMethodEnum_HIFO,
  _$accountResponseDtoBookingMethodEnum_AVERAGE,
  _$accountResponseDtoBookingMethodEnum_STRICT,
  _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE,
  _$accountResponseDtoBookingMethodEnum_NONE,
]);

Serializer<AccountResponseDtoTypeEnum> _$accountResponseDtoTypeEnumSerializer =
    new _$AccountResponseDtoTypeEnumSerializer();
Serializer<AccountResponseDtoStatusEnum>
    _$accountResponseDtoStatusEnumSerializer =
    new _$AccountResponseDtoStatusEnumSerializer();
Serializer<AccountResponseDtoBookingMethodEnum>
    _$accountResponseDtoBookingMethodEnumSerializer =
    new _$AccountResponseDtoBookingMethodEnumSerializer();

class _$AccountResponseDtoTypeEnumSerializer
    implements PrimitiveSerializer<AccountResponseDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'assets': 'Assets',
    'liabilities': 'Liabilities',
    'income': 'Income',
    'expenses': 'Expenses',
    'equity': 'Equity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Assets': 'assets',
    'Liabilities': 'liabilities',
    'Income': 'income',
    'Expenses': 'expenses',
    'Equity': 'equity',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountResponseDtoTypeEnum];
  @override
  final String wireName = 'AccountResponseDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, AccountResponseDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountResponseDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountResponseDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountResponseDtoStatusEnumSerializer
    implements PrimitiveSerializer<AccountResponseDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPEN': 'OPEN',
    'CLOSED': 'CLOSED',
    'SUSPENDED': 'SUSPENDED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN': 'OPEN',
    'CLOSED': 'CLOSED',
    'SUSPENDED': 'SUSPENDED',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountResponseDtoStatusEnum];
  @override
  final String wireName = 'AccountResponseDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, AccountResponseDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountResponseDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountResponseDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountResponseDtoBookingMethodEnumSerializer
    implements PrimitiveSerializer<AccountResponseDtoBookingMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FIFO': 'FIFO',
    'LIFO': 'LIFO',
    'HIFO': 'HIFO',
    'AVERAGE': 'AVERAGE',
    'STRICT': 'STRICT',
    'STRICT_WITH_SIZE': 'STRICT_WITH_SIZE',
    'NONE': 'NONE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FIFO': 'FIFO',
    'LIFO': 'LIFO',
    'HIFO': 'HIFO',
    'AVERAGE': 'AVERAGE',
    'STRICT': 'STRICT',
    'STRICT_WITH_SIZE': 'STRICT_WITH_SIZE',
    'NONE': 'NONE',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AccountResponseDtoBookingMethodEnum
  ];
  @override
  final String wireName = 'AccountResponseDtoBookingMethodEnum';

  @override
  Object serialize(
          Serializers serializers, AccountResponseDtoBookingMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountResponseDtoBookingMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountResponseDtoBookingMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountResponseDto extends AccountResponseDto {
  @override
  final String id;
  @override
  final String path;
  @override
  final AccountResponseDtoTypeEnum type;
  @override
  final AccountResponseDtoStatusEnum status;
  @override
  final String openDate;
  @override
  final AccountResponseDtoBookingMethodEnum bookingMethod;
  @override
  final bool isCustom;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? closeDate;
  @override
  final BuiltList<String>? currencies;
  @override
  final String? templatePath;
  @override
  final String? i18nKey;
  @override
  final String? icon;
  @override
  final JsonObject? openMeta;
  @override
  final JsonObject? platformId;
  @override
  final JsonObject? platform;

  factory _$AccountResponseDto(
          [void Function(AccountResponseDtoBuilder)? updates]) =>
      (new AccountResponseDtoBuilder()..update(updates))._build();

  _$AccountResponseDto._(
      {required this.id,
      required this.path,
      required this.type,
      required this.status,
      required this.openDate,
      required this.bookingMethod,
      required this.isCustom,
      required this.createdAt,
      required this.updatedAt,
      this.closeDate,
      this.currencies,
      this.templatePath,
      this.i18nKey,
      this.icon,
      this.openMeta,
      this.platformId,
      this.platform})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AccountResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(path, r'AccountResponseDto', 'path');
    BuiltValueNullFieldError.checkNotNull(type, r'AccountResponseDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        status, r'AccountResponseDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        openDate, r'AccountResponseDto', 'openDate');
    BuiltValueNullFieldError.checkNotNull(
        bookingMethod, r'AccountResponseDto', 'bookingMethod');
    BuiltValueNullFieldError.checkNotNull(
        isCustom, r'AccountResponseDto', 'isCustom');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'AccountResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'AccountResponseDto', 'updatedAt');
  }

  @override
  AccountResponseDto rebuild(
          void Function(AccountResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountResponseDtoBuilder toBuilder() =>
      new AccountResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountResponseDto &&
        id == other.id &&
        path == other.path &&
        type == other.type &&
        status == other.status &&
        openDate == other.openDate &&
        bookingMethod == other.bookingMethod &&
        isCustom == other.isCustom &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        closeDate == other.closeDate &&
        currencies == other.currencies &&
        templatePath == other.templatePath &&
        i18nKey == other.i18nKey &&
        icon == other.icon &&
        openMeta == other.openMeta &&
        platformId == other.platformId &&
        platform == other.platform;
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
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, closeDate.hashCode);
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jc(_$hash, templatePath.hashCode);
    _$hash = $jc(_$hash, i18nKey.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, openMeta.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountResponseDto')
          ..add('id', id)
          ..add('path', path)
          ..add('type', type)
          ..add('status', status)
          ..add('openDate', openDate)
          ..add('bookingMethod', bookingMethod)
          ..add('isCustom', isCustom)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('closeDate', closeDate)
          ..add('currencies', currencies)
          ..add('templatePath', templatePath)
          ..add('i18nKey', i18nKey)
          ..add('icon', icon)
          ..add('openMeta', openMeta)
          ..add('platformId', platformId)
          ..add('platform', platform))
        .toString();
  }
}

class AccountResponseDtoBuilder
    implements Builder<AccountResponseDto, AccountResponseDtoBuilder> {
  _$AccountResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  AccountResponseDtoTypeEnum? _type;
  AccountResponseDtoTypeEnum? get type => _$this._type;
  set type(AccountResponseDtoTypeEnum? type) => _$this._type = type;

  AccountResponseDtoStatusEnum? _status;
  AccountResponseDtoStatusEnum? get status => _$this._status;
  set status(AccountResponseDtoStatusEnum? status) => _$this._status = status;

  String? _openDate;
  String? get openDate => _$this._openDate;
  set openDate(String? openDate) => _$this._openDate = openDate;

  AccountResponseDtoBookingMethodEnum? _bookingMethod;
  AccountResponseDtoBookingMethodEnum? get bookingMethod =>
      _$this._bookingMethod;
  set bookingMethod(AccountResponseDtoBookingMethodEnum? bookingMethod) =>
      _$this._bookingMethod = bookingMethod;

  bool? _isCustom;
  bool? get isCustom => _$this._isCustom;
  set isCustom(bool? isCustom) => _$this._isCustom = isCustom;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _closeDate;
  String? get closeDate => _$this._closeDate;
  set closeDate(String? closeDate) => _$this._closeDate = closeDate;

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

  JsonObject? _openMeta;
  JsonObject? get openMeta => _$this._openMeta;
  set openMeta(JsonObject? openMeta) => _$this._openMeta = openMeta;

  JsonObject? _platformId;
  JsonObject? get platformId => _$this._platformId;
  set platformId(JsonObject? platformId) => _$this._platformId = platformId;

  JsonObject? _platform;
  JsonObject? get platform => _$this._platform;
  set platform(JsonObject? platform) => _$this._platform = platform;

  AccountResponseDtoBuilder() {
    AccountResponseDto._defaults(this);
  }

  AccountResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _type = $v.type;
      _status = $v.status;
      _openDate = $v.openDate;
      _bookingMethod = $v.bookingMethod;
      _isCustom = $v.isCustom;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _closeDate = $v.closeDate;
      _currencies = $v.currencies?.toBuilder();
      _templatePath = $v.templatePath;
      _i18nKey = $v.i18nKey;
      _icon = $v.icon;
      _openMeta = $v.openMeta;
      _platformId = $v.platformId;
      _platform = $v.platform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountResponseDto;
  }

  @override
  void update(void Function(AccountResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountResponseDto build() => _build();

  _$AccountResponseDto _build() {
    _$AccountResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AccountResponseDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AccountResponseDto', 'id'),
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'AccountResponseDto', 'path'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'AccountResponseDto', 'type'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'AccountResponseDto', 'status'),
              openDate: BuiltValueNullFieldError.checkNotNull(
                  openDate, r'AccountResponseDto', 'openDate'),
              bookingMethod: BuiltValueNullFieldError.checkNotNull(
                  bookingMethod, r'AccountResponseDto', 'bookingMethod'),
              isCustom: BuiltValueNullFieldError.checkNotNull(
                  isCustom, r'AccountResponseDto', 'isCustom'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'AccountResponseDto', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, r'AccountResponseDto', 'updatedAt'),
              closeDate: closeDate,
              currencies: _currencies?.build(),
              templatePath: templatePath,
              i18nKey: i18nKey,
              icon: icon,
              openMeta: openMeta,
              platformId: platformId,
              platform: platform);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        _currencies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
