// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateAccountDtoBookingMethodEnum
    _$updateAccountDtoBookingMethodEnum_FIFO =
    const UpdateAccountDtoBookingMethodEnum._('FIFO');
const UpdateAccountDtoBookingMethodEnum
    _$updateAccountDtoBookingMethodEnum_LIFO =
    const UpdateAccountDtoBookingMethodEnum._('LIFO');
const UpdateAccountDtoBookingMethodEnum
    _$updateAccountDtoBookingMethodEnum_HIFO =
    const UpdateAccountDtoBookingMethodEnum._('HIFO');
const UpdateAccountDtoBookingMethodEnum
    _$updateAccountDtoBookingMethodEnum_AVERAGE =
    const UpdateAccountDtoBookingMethodEnum._('AVERAGE');
const UpdateAccountDtoBookingMethodEnum
    _$updateAccountDtoBookingMethodEnum_STRICT =
    const UpdateAccountDtoBookingMethodEnum._('STRICT');
const UpdateAccountDtoBookingMethodEnum
    _$updateAccountDtoBookingMethodEnum_STRICT_WITH_SIZE =
    const UpdateAccountDtoBookingMethodEnum._('STRICT_WITH_SIZE');
const UpdateAccountDtoBookingMethodEnum
    _$updateAccountDtoBookingMethodEnum_NONE =
    const UpdateAccountDtoBookingMethodEnum._('NONE');

UpdateAccountDtoBookingMethodEnum _$updateAccountDtoBookingMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'FIFO':
      return _$updateAccountDtoBookingMethodEnum_FIFO;
    case 'LIFO':
      return _$updateAccountDtoBookingMethodEnum_LIFO;
    case 'HIFO':
      return _$updateAccountDtoBookingMethodEnum_HIFO;
    case 'AVERAGE':
      return _$updateAccountDtoBookingMethodEnum_AVERAGE;
    case 'STRICT':
      return _$updateAccountDtoBookingMethodEnum_STRICT;
    case 'STRICT_WITH_SIZE':
      return _$updateAccountDtoBookingMethodEnum_STRICT_WITH_SIZE;
    case 'NONE':
      return _$updateAccountDtoBookingMethodEnum_NONE;
    default:
      return _$updateAccountDtoBookingMethodEnum_NONE;
  }
}

final BuiltSet<UpdateAccountDtoBookingMethodEnum>
    _$updateAccountDtoBookingMethodEnumValues = new BuiltSet<
        UpdateAccountDtoBookingMethodEnum>(const <UpdateAccountDtoBookingMethodEnum>[
  _$updateAccountDtoBookingMethodEnum_FIFO,
  _$updateAccountDtoBookingMethodEnum_LIFO,
  _$updateAccountDtoBookingMethodEnum_HIFO,
  _$updateAccountDtoBookingMethodEnum_AVERAGE,
  _$updateAccountDtoBookingMethodEnum_STRICT,
  _$updateAccountDtoBookingMethodEnum_STRICT_WITH_SIZE,
  _$updateAccountDtoBookingMethodEnum_NONE,
]);

Serializer<UpdateAccountDtoBookingMethodEnum>
    _$updateAccountDtoBookingMethodEnumSerializer =
    new _$UpdateAccountDtoBookingMethodEnumSerializer();

class _$UpdateAccountDtoBookingMethodEnumSerializer
    implements PrimitiveSerializer<UpdateAccountDtoBookingMethodEnum> {
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
  final Iterable<Type> types = const <Type>[UpdateAccountDtoBookingMethodEnum];
  @override
  final String wireName = 'UpdateAccountDtoBookingMethodEnum';

  @override
  Object serialize(
          Serializers serializers, UpdateAccountDtoBookingMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateAccountDtoBookingMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateAccountDtoBookingMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateAccountDto extends UpdateAccountDto {
  @override
  final BuiltList<String>? currencies;
  @override
  final UpdateAccountDtoBookingMethodEnum? bookingMethod;
  @override
  final String? i18nKey;
  @override
  final String? icon;
  @override
  final JsonObject? openMeta;
  @override
  final JsonObject? platformId;

  factory _$UpdateAccountDto(
          [void Function(UpdateAccountDtoBuilder)? updates]) =>
      (new UpdateAccountDtoBuilder()..update(updates))._build();

  _$UpdateAccountDto._(
      {this.currencies,
      this.bookingMethod,
      this.i18nKey,
      this.icon,
      this.openMeta,
      this.platformId})
      : super._();

  @override
  UpdateAccountDto rebuild(void Function(UpdateAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccountDtoBuilder toBuilder() =>
      new UpdateAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccountDto &&
        currencies == other.currencies &&
        bookingMethod == other.bookingMethod &&
        i18nKey == other.i18nKey &&
        icon == other.icon &&
        openMeta == other.openMeta &&
        platformId == other.platformId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jc(_$hash, bookingMethod.hashCode);
    _$hash = $jc(_$hash, i18nKey.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, openMeta.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccountDto')
          ..add('currencies', currencies)
          ..add('bookingMethod', bookingMethod)
          ..add('i18nKey', i18nKey)
          ..add('icon', icon)
          ..add('openMeta', openMeta)
          ..add('platformId', platformId))
        .toString();
  }
}

class UpdateAccountDtoBuilder
    implements Builder<UpdateAccountDto, UpdateAccountDtoBuilder> {
  _$UpdateAccountDto? _$v;

  ListBuilder<String>? _currencies;
  ListBuilder<String> get currencies =>
      _$this._currencies ??= new ListBuilder<String>();
  set currencies(ListBuilder<String>? currencies) =>
      _$this._currencies = currencies;

  UpdateAccountDtoBookingMethodEnum? _bookingMethod;
  UpdateAccountDtoBookingMethodEnum? get bookingMethod => _$this._bookingMethod;
  set bookingMethod(UpdateAccountDtoBookingMethodEnum? bookingMethod) =>
      _$this._bookingMethod = bookingMethod;

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

  UpdateAccountDtoBuilder() {
    UpdateAccountDto._defaults(this);
  }

  UpdateAccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencies = $v.currencies?.toBuilder();
      _bookingMethod = $v.bookingMethod;
      _i18nKey = $v.i18nKey;
      _icon = $v.icon;
      _openMeta = $v.openMeta;
      _platformId = $v.platformId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccountDto;
  }

  @override
  void update(void Function(UpdateAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccountDto build() => _build();

  _$UpdateAccountDto _build() {
    _$UpdateAccountDto _$result;
    try {
      _$result = _$v ??
          new _$UpdateAccountDto._(
              currencies: _currencies?.build(),
              bookingMethod: bookingMethod,
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
            r'UpdateAccountDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
