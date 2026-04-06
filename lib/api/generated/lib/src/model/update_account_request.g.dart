// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccountRequest extends UpdateAccountRequest {
  @override
  final BuiltList<String>? currencies;
  @override
  final BookingMethod? bookingMethod;
  @override
  final String? i18nKey;
  @override
  final String? icon;

  factory _$UpdateAccountRequest(
          [void Function(UpdateAccountRequestBuilder)? updates]) =>
      (new UpdateAccountRequestBuilder()..update(updates))._build();

  _$UpdateAccountRequest._(
      {this.currencies, this.bookingMethod, this.i18nKey, this.icon})
      : super._();

  @override
  UpdateAccountRequest rebuild(
          void Function(UpdateAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccountRequestBuilder toBuilder() =>
      new UpdateAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccountRequest &&
        currencies == other.currencies &&
        bookingMethod == other.bookingMethod &&
        i18nKey == other.i18nKey &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jc(_$hash, bookingMethod.hashCode);
    _$hash = $jc(_$hash, i18nKey.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccountRequest')
          ..add('currencies', currencies)
          ..add('bookingMethod', bookingMethod)
          ..add('i18nKey', i18nKey)
          ..add('icon', icon))
        .toString();
  }
}

class UpdateAccountRequestBuilder
    implements Builder<UpdateAccountRequest, UpdateAccountRequestBuilder> {
  _$UpdateAccountRequest? _$v;

  ListBuilder<String>? _currencies;
  ListBuilder<String> get currencies =>
      _$this._currencies ??= new ListBuilder<String>();
  set currencies(ListBuilder<String>? currencies) =>
      _$this._currencies = currencies;

  BookingMethod? _bookingMethod;
  BookingMethod? get bookingMethod => _$this._bookingMethod;
  set bookingMethod(BookingMethod? bookingMethod) =>
      _$this._bookingMethod = bookingMethod;

  String? _i18nKey;
  String? get i18nKey => _$this._i18nKey;
  set i18nKey(String? i18nKey) => _$this._i18nKey = i18nKey;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  UpdateAccountRequestBuilder() {
    UpdateAccountRequest._defaults(this);
  }

  UpdateAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencies = $v.currencies?.toBuilder();
      _bookingMethod = $v.bookingMethod;
      _i18nKey = $v.i18nKey;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccountRequest;
  }

  @override
  void update(void Function(UpdateAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccountRequest build() => _build();

  _$UpdateAccountRequest _build() {
    _$UpdateAccountRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateAccountRequest._(
              currencies: _currencies?.build(),
              bookingMethod: bookingMethod,
              i18nKey: i18nKey,
              icon: icon);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        _currencies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateAccountRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
