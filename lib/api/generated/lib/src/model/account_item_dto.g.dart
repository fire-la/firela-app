// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountItemDto extends AccountItemDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String displayName;
  @override
  final String balance;
  @override
  final String currency;

  factory _$AccountItemDto([void Function(AccountItemDtoBuilder)? updates]) =>
      (new AccountItemDtoBuilder()..update(updates))._build();

  _$AccountItemDto._(
      {required this.id,
      required this.name,
      required this.displayName,
      required this.balance,
      required this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AccountItemDto', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'AccountItemDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'AccountItemDto', 'displayName');
    BuiltValueNullFieldError.checkNotNull(
        balance, r'AccountItemDto', 'balance');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'AccountItemDto', 'currency');
  }

  @override
  AccountItemDto rebuild(void Function(AccountItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountItemDtoBuilder toBuilder() =>
      new AccountItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountItemDto &&
        id == other.id &&
        name == other.name &&
        displayName == other.displayName &&
        balance == other.balance &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountItemDto')
          ..add('id', id)
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('balance', balance)
          ..add('currency', currency))
        .toString();
  }
}

class AccountItemDtoBuilder
    implements Builder<AccountItemDto, AccountItemDtoBuilder> {
  _$AccountItemDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  AccountItemDtoBuilder() {
    AccountItemDto._defaults(this);
  }

  AccountItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _displayName = $v.displayName;
      _balance = $v.balance;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountItemDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountItemDto;
  }

  @override
  void update(void Function(AccountItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountItemDto build() => _build();

  _$AccountItemDto _build() {
    final _$result = _$v ??
        new _$AccountItemDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AccountItemDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AccountItemDto', 'name'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'AccountItemDto', 'displayName'),
            balance: BuiltValueNullFieldError.checkNotNull(
                balance, r'AccountItemDto', 'balance'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'AccountItemDto', 'currency'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
