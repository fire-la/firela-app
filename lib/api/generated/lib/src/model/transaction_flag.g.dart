// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_flag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionFlag _$star = const TransactionFlag._('star');
const TransactionFlag _$exclamation = const TransactionFlag._('exclamation');

TransactionFlag _$valueOf(String name) {
  switch (name) {
    case 'star':
      return _$star;
    case 'exclamation':
      return _$exclamation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TransactionFlag> _$values =
    new BuiltSet<TransactionFlag>(const <TransactionFlag>[
  _$star,
  _$exclamation,
]);

class _$TransactionFlagMeta {
  const _$TransactionFlagMeta();
  TransactionFlag get star => _$star;
  TransactionFlag get exclamation => _$exclamation;
  TransactionFlag valueOf(String name) => _$valueOf(name);
  BuiltSet<TransactionFlag> get values => _$values;
}

mixin _$TransactionFlagMixin {
  // ignore: non_constant_identifier_names
  _$TransactionFlagMeta get TransactionFlag => const _$TransactionFlagMeta();
}

Serializer<TransactionFlag> _$transactionFlagSerializer =
    new _$TransactionFlagSerializer();

class _$TransactionFlagSerializer
    implements PrimitiveSerializer<TransactionFlag> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'star': '*',
    'exclamation': '!',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '*': 'star',
    '!': 'exclamation',
  };

  @override
  final Iterable<Type> types = const <Type>[TransactionFlag];
  @override
  final String wireName = 'TransactionFlag';

  @override
  Object serialize(Serializers serializers, TransactionFlag object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionFlag deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionFlag.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
