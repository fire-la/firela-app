//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_status.g.dart';

class AccountStatus extends EnumClass {
  /// Account lifecycle status
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const AccountStatus OPEN = _$OPEN;

  /// Account lifecycle status
  @BuiltValueEnumConst(wireName: r'CLOSED')
  static const AccountStatus CLOSED = _$CLOSED;

  /// Account lifecycle status
  @BuiltValueEnumConst(wireName: r'SUSPENDED')
  static const AccountStatus SUSPENDED = _$SUSPENDED;

  static Serializer<AccountStatus> get serializer => _$accountStatusSerializer;

  const AccountStatus._(String name) : super(name);

  static BuiltSet<AccountStatus> get values => _$values;
  static AccountStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AccountStatusMixin = Object with _$AccountStatusMixin;
