// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountStatus _$OPEN = const AccountStatus._('OPEN');
const AccountStatus _$CLOSED = const AccountStatus._('CLOSED');
const AccountStatus _$SUSPENDED = const AccountStatus._('SUSPENDED');

AccountStatus _$valueOf(String name) {
  switch (name) {
    case 'OPEN':
      return _$OPEN;
    case 'CLOSED':
      return _$CLOSED;
    case 'SUSPENDED':
      return _$SUSPENDED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountStatus> _$values =
    new BuiltSet<AccountStatus>(const <AccountStatus>[
  _$OPEN,
  _$CLOSED,
  _$SUSPENDED,
]);

class _$AccountStatusMeta {
  const _$AccountStatusMeta();
  AccountStatus get OPEN => _$OPEN;
  AccountStatus get CLOSED => _$CLOSED;
  AccountStatus get SUSPENDED => _$SUSPENDED;
  AccountStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<AccountStatus> get values => _$values;
}

mixin _$AccountStatusMixin {
  // ignore: non_constant_identifier_names
  _$AccountStatusMeta get AccountStatus => const _$AccountStatusMeta();
}

Serializer<AccountStatus> _$accountStatusSerializer =
    new _$AccountStatusSerializer();

class _$AccountStatusSerializer implements PrimitiveSerializer<AccountStatus> {
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
  final Iterable<Type> types = const <Type>[AccountStatus];
  @override
  final String wireName = 'AccountStatus';

  @override
  Object serialize(Serializers serializers, AccountStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
