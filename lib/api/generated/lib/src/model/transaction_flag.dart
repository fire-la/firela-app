//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_flag.g.dart';

class TransactionFlag extends EnumClass {
  /// Transaction flag: '*' = complete, '!' = incomplete
  @BuiltValueEnumConst(wireName: r'*')
  static const TransactionFlag star = _$star;

  /// Transaction flag: '*' = complete, '!' = incomplete
  @BuiltValueEnumConst(wireName: r'!')
  static const TransactionFlag exclamation = _$exclamation;

  static Serializer<TransactionFlag> get serializer =>
      _$transactionFlagSerializer;

  const TransactionFlag._(String name) : super(name);

  static BuiltSet<TransactionFlag> get values => _$values;
  static TransactionFlag valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TransactionFlagMixin = Object with _$TransactionFlagMixin;
