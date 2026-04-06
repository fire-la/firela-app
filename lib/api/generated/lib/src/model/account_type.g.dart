// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountType _$assets = const AccountType._('assets');
const AccountType _$liabilities = const AccountType._('liabilities');
const AccountType _$income = const AccountType._('income');
const AccountType _$expenses = const AccountType._('expenses');
const AccountType _$equity = const AccountType._('equity');

AccountType _$valueOf(String name) {
  switch (name) {
    case 'assets':
      return _$assets;
    case 'liabilities':
      return _$liabilities;
    case 'income':
      return _$income;
    case 'expenses':
      return _$expenses;
    case 'equity':
      return _$equity;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountType> _$values =
    new BuiltSet<AccountType>(const <AccountType>[
  _$assets,
  _$liabilities,
  _$income,
  _$expenses,
  _$equity,
]);

class _$AccountTypeMeta {
  const _$AccountTypeMeta();
  AccountType get assets => _$assets;
  AccountType get liabilities => _$liabilities;
  AccountType get income => _$income;
  AccountType get expenses => _$expenses;
  AccountType get equity => _$equity;
  AccountType valueOf(String name) => _$valueOf(name);
  BuiltSet<AccountType> get values => _$values;
}

mixin _$AccountTypeMixin {
  // ignore: non_constant_identifier_names
  _$AccountTypeMeta get AccountType => const _$AccountTypeMeta();
}

Serializer<AccountType> _$accountTypeSerializer = new _$AccountTypeSerializer();

class _$AccountTypeSerializer implements PrimitiveSerializer<AccountType> {
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
  final Iterable<Type> types = const <Type>[AccountType];
  @override
  final String wireName = 'AccountType';

  @override
  Object serialize(Serializers serializers, AccountType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
