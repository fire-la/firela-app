// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TxnStatus _$ACTIVE = const TxnStatus._('ACTIVE');
const TxnStatus _$VOIDED = const TxnStatus._('VOIDED');
const TxnStatus _$SUPERSEDED = const TxnStatus._('SUPERSEDED');

TxnStatus _$valueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$ACTIVE;
    case 'VOIDED':
      return _$VOIDED;
    case 'SUPERSEDED':
      return _$SUPERSEDED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TxnStatus> _$values = new BuiltSet<TxnStatus>(const <TxnStatus>[
  _$ACTIVE,
  _$VOIDED,
  _$SUPERSEDED,
]);

class _$TxnStatusMeta {
  const _$TxnStatusMeta();
  TxnStatus get ACTIVE => _$ACTIVE;
  TxnStatus get VOIDED => _$VOIDED;
  TxnStatus get SUPERSEDED => _$SUPERSEDED;
  TxnStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<TxnStatus> get values => _$values;
}

mixin _$TxnStatusMixin {
  // ignore: non_constant_identifier_names
  _$TxnStatusMeta get TxnStatus => const _$TxnStatusMeta();
}

Serializer<TxnStatus> _$txnStatusSerializer = new _$TxnStatusSerializer();

class _$TxnStatusSerializer implements PrimitiveSerializer<TxnStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'VOIDED': 'VOIDED',
    'SUPERSEDED': 'SUPERSEDED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'VOIDED': 'VOIDED',
    'SUPERSEDED': 'SUPERSEDED',
  };

  @override
  final Iterable<Type> types = const <Type>[TxnStatus];
  @override
  final String wireName = 'TxnStatus';

  @override
  Object serialize(Serializers serializers, TxnStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TxnStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TxnStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
