//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'txn_status.g.dart';

class TxnStatus extends EnumClass {
  /// Transaction lifecycle status
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const TxnStatus ACTIVE = _$ACTIVE;

  /// Transaction lifecycle status
  @BuiltValueEnumConst(wireName: r'VOIDED')
  static const TxnStatus VOIDED = _$VOIDED;

  /// Transaction lifecycle status
  @BuiltValueEnumConst(wireName: r'SUPERSEDED')
  static const TxnStatus SUPERSEDED = _$SUPERSEDED;

  static Serializer<TxnStatus> get serializer => _$txnStatusSerializer;

  const TxnStatus._(String name) : super(name);

  static BuiltSet<TxnStatus> get values => _$values;
  static TxnStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TxnStatusMixin = Object with _$TxnStatusMixin;
