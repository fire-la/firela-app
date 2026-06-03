// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_item_with_asset_class_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountItemWithAssetClassDto extends AccountItemWithAssetClassDto {
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
  @override
  final String assetClass;
  @override
  final String? assetSubClass;
  @override
  final String? regionalSubClass;
  @override
  final String? riskLevel;

  factory _$AccountItemWithAssetClassDto(
          [void Function(AccountItemWithAssetClassDtoBuilder)? updates]) =>
      (new AccountItemWithAssetClassDtoBuilder()..update(updates))._build();

  _$AccountItemWithAssetClassDto._(
      {required this.id,
      required this.name,
      required this.displayName,
      required this.balance,
      required this.currency,
      required this.assetClass,
      this.assetSubClass,
      this.regionalSubClass,
      this.riskLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'AccountItemWithAssetClassDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'AccountItemWithAssetClassDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'AccountItemWithAssetClassDto', 'displayName');
    BuiltValueNullFieldError.checkNotNull(
        balance, r'AccountItemWithAssetClassDto', 'balance');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'AccountItemWithAssetClassDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        assetClass, r'AccountItemWithAssetClassDto', 'assetClass');
  }

  @override
  AccountItemWithAssetClassDto rebuild(
          void Function(AccountItemWithAssetClassDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountItemWithAssetClassDtoBuilder toBuilder() =>
      new AccountItemWithAssetClassDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountItemWithAssetClassDto &&
        id == other.id &&
        name == other.name &&
        displayName == other.displayName &&
        balance == other.balance &&
        currency == other.currency &&
        assetClass == other.assetClass &&
        assetSubClass == other.assetSubClass &&
        regionalSubClass == other.regionalSubClass &&
        riskLevel == other.riskLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jc(_$hash, assetSubClass.hashCode);
    _$hash = $jc(_$hash, regionalSubClass.hashCode);
    _$hash = $jc(_$hash, riskLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountItemWithAssetClassDto')
          ..add('id', id)
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('balance', balance)
          ..add('currency', currency)
          ..add('assetClass', assetClass)
          ..add('assetSubClass', assetSubClass)
          ..add('regionalSubClass', regionalSubClass)
          ..add('riskLevel', riskLevel))
        .toString();
  }
}

class AccountItemWithAssetClassDtoBuilder
    implements
        Builder<AccountItemWithAssetClassDto,
            AccountItemWithAssetClassDtoBuilder> {
  _$AccountItemWithAssetClassDto? _$v;

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

  String? _assetClass;
  String? get assetClass => _$this._assetClass;
  set assetClass(String? assetClass) => _$this._assetClass = assetClass;

  String? _assetSubClass;
  String? get assetSubClass => _$this._assetSubClass;
  set assetSubClass(String? assetSubClass) =>
      _$this._assetSubClass = assetSubClass;

  String? _regionalSubClass;
  String? get regionalSubClass => _$this._regionalSubClass;
  set regionalSubClass(String? regionalSubClass) =>
      _$this._regionalSubClass = regionalSubClass;

  String? _riskLevel;
  String? get riskLevel => _$this._riskLevel;
  set riskLevel(String? riskLevel) => _$this._riskLevel = riskLevel;

  AccountItemWithAssetClassDtoBuilder() {
    AccountItemWithAssetClassDto._defaults(this);
  }

  AccountItemWithAssetClassDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _displayName = $v.displayName;
      _balance = $v.balance;
      _currency = $v.currency;
      _assetClass = $v.assetClass;
      _assetSubClass = $v.assetSubClass;
      _regionalSubClass = $v.regionalSubClass;
      _riskLevel = $v.riskLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountItemWithAssetClassDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountItemWithAssetClassDto;
  }

  @override
  void update(void Function(AccountItemWithAssetClassDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountItemWithAssetClassDto build() => _build();

  _$AccountItemWithAssetClassDto _build() {
    final _$result = _$v ??
        new _$AccountItemWithAssetClassDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AccountItemWithAssetClassDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AccountItemWithAssetClassDto', 'name'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'AccountItemWithAssetClassDto', 'displayName'),
            balance: BuiltValueNullFieldError.checkNotNull(
                balance, r'AccountItemWithAssetClassDto', 'balance'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'AccountItemWithAssetClassDto', 'currency'),
            assetClass: BuiltValueNullFieldError.checkNotNull(
                assetClass, r'AccountItemWithAssetClassDto', 'assetClass'),
            assetSubClass: assetSubClass,
            regionalSubClass: regionalSubClass,
            riskLevel: riskLevel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
