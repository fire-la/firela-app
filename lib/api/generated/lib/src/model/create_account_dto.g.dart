// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateAccountDtoBookingMethodEnum
    _$createAccountDtoBookingMethodEnum_FIFO =
    const CreateAccountDtoBookingMethodEnum._('FIFO');
const CreateAccountDtoBookingMethodEnum
    _$createAccountDtoBookingMethodEnum_LIFO =
    const CreateAccountDtoBookingMethodEnum._('LIFO');
const CreateAccountDtoBookingMethodEnum
    _$createAccountDtoBookingMethodEnum_HIFO =
    const CreateAccountDtoBookingMethodEnum._('HIFO');
const CreateAccountDtoBookingMethodEnum
    _$createAccountDtoBookingMethodEnum_AVERAGE =
    const CreateAccountDtoBookingMethodEnum._('AVERAGE');
const CreateAccountDtoBookingMethodEnum
    _$createAccountDtoBookingMethodEnum_STRICT =
    const CreateAccountDtoBookingMethodEnum._('STRICT');
const CreateAccountDtoBookingMethodEnum
    _$createAccountDtoBookingMethodEnum_STRICT_WITH_SIZE =
    const CreateAccountDtoBookingMethodEnum._('STRICT_WITH_SIZE');
const CreateAccountDtoBookingMethodEnum
    _$createAccountDtoBookingMethodEnum_NONE =
    const CreateAccountDtoBookingMethodEnum._('NONE');

CreateAccountDtoBookingMethodEnum _$createAccountDtoBookingMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'FIFO':
      return _$createAccountDtoBookingMethodEnum_FIFO;
    case 'LIFO':
      return _$createAccountDtoBookingMethodEnum_LIFO;
    case 'HIFO':
      return _$createAccountDtoBookingMethodEnum_HIFO;
    case 'AVERAGE':
      return _$createAccountDtoBookingMethodEnum_AVERAGE;
    case 'STRICT':
      return _$createAccountDtoBookingMethodEnum_STRICT;
    case 'STRICT_WITH_SIZE':
      return _$createAccountDtoBookingMethodEnum_STRICT_WITH_SIZE;
    case 'NONE':
      return _$createAccountDtoBookingMethodEnum_NONE;
    default:
      return _$createAccountDtoBookingMethodEnum_NONE;
  }
}

final BuiltSet<CreateAccountDtoBookingMethodEnum>
    _$createAccountDtoBookingMethodEnumValues = new BuiltSet<
        CreateAccountDtoBookingMethodEnum>(const <CreateAccountDtoBookingMethodEnum>[
  _$createAccountDtoBookingMethodEnum_FIFO,
  _$createAccountDtoBookingMethodEnum_LIFO,
  _$createAccountDtoBookingMethodEnum_HIFO,
  _$createAccountDtoBookingMethodEnum_AVERAGE,
  _$createAccountDtoBookingMethodEnum_STRICT,
  _$createAccountDtoBookingMethodEnum_STRICT_WITH_SIZE,
  _$createAccountDtoBookingMethodEnum_NONE,
]);

Serializer<CreateAccountDtoBookingMethodEnum>
    _$createAccountDtoBookingMethodEnumSerializer =
    new _$CreateAccountDtoBookingMethodEnumSerializer();

class _$CreateAccountDtoBookingMethodEnumSerializer
    implements PrimitiveSerializer<CreateAccountDtoBookingMethodEnum> {
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
  final Iterable<Type> types = const <Type>[CreateAccountDtoBookingMethodEnum];
  @override
  final String wireName = 'CreateAccountDtoBookingMethodEnum';

  @override
  Object serialize(
          Serializers serializers, CreateAccountDtoBookingMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateAccountDtoBookingMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateAccountDtoBookingMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateAccountDto extends CreateAccountDto {
  @override
  final String path;
  @override
  final DateTime openDate;
  @override
  final BuiltList<String>? currencies;
  @override
  final CreateAccountDtoBookingMethodEnum? bookingMethod;
  @override
  final String? templatePath;
  @override
  final bool? isCustom;
  @override
  final String? i18nKey;
  @override
  final String? icon;
  @override
  final JsonObject? openMeta;
  @override
  final String? platformId;

  factory _$CreateAccountDto(
          [void Function(CreateAccountDtoBuilder)? updates]) =>
      (new CreateAccountDtoBuilder()..update(updates))._build();

  _$CreateAccountDto._(
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
    BuiltValueNullFieldError.checkNotNull(path, r'CreateAccountDto', 'path');
    BuiltValueNullFieldError.checkNotNull(
        openDate, r'CreateAccountDto', 'openDate');
  }

  @override
  CreateAccountDto rebuild(void Function(CreateAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccountDtoBuilder toBuilder() =>
      new CreateAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccountDto &&
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
    return (newBuiltValueToStringHelper(r'CreateAccountDto')
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

class CreateAccountDtoBuilder
    implements Builder<CreateAccountDto, CreateAccountDtoBuilder> {
  _$CreateAccountDto? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  DateTime? _openDate;
  DateTime? get openDate => _$this._openDate;
  set openDate(DateTime? openDate) => _$this._openDate = openDate;

  ListBuilder<String>? _currencies;
  ListBuilder<String> get currencies =>
      _$this._currencies ??= new ListBuilder<String>();
  set currencies(ListBuilder<String>? currencies) =>
      _$this._currencies = currencies;

  CreateAccountDtoBookingMethodEnum? _bookingMethod;
  CreateAccountDtoBookingMethodEnum? get bookingMethod => _$this._bookingMethod;
  set bookingMethod(CreateAccountDtoBookingMethodEnum? bookingMethod) =>
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

  JsonObject? _openMeta;
  JsonObject? get openMeta => _$this._openMeta;
  set openMeta(JsonObject? openMeta) => _$this._openMeta = openMeta;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(String? platformId) => _$this._platformId = platformId;

  CreateAccountDtoBuilder() {
    CreateAccountDto._defaults(this);
  }

  CreateAccountDtoBuilder get _$this {
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
      _openMeta = $v.openMeta;
      _platformId = $v.platformId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccountDto;
  }

  @override
  void update(void Function(CreateAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccountDto build() => _build();

  _$CreateAccountDto _build() {
    _$CreateAccountDto _$result;
    try {
      _$result = _$v ??
          new _$CreateAccountDto._(
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'CreateAccountDto', 'path'),
              openDate: BuiltValueNullFieldError.checkNotNull(
                  openDate, r'CreateAccountDto', 'openDate'),
              currencies: _currencies?.build(),
              bookingMethod: bookingMethod,
              templatePath: templatePath,
              isCustom: isCustom,
              i18nKey: i18nKey,
              icon: icon,
              openMeta: openMeta,
              platformId: platformId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        _currencies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateAccountDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
