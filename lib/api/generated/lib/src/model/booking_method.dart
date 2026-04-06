//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_method.g.dart';

class BookingMethod extends EnumClass {
  /// Inventory booking method for cost tracking
  @BuiltValueEnumConst(wireName: r'FIFO')
  static const BookingMethod FIFO = _$FIFO;

  /// Inventory booking method for cost tracking
  @BuiltValueEnumConst(wireName: r'LIFO')
  static const BookingMethod LIFO = _$LIFO;

  /// Inventory booking method for cost tracking
  @BuiltValueEnumConst(wireName: r'HIFO')
  static const BookingMethod HIFO = _$HIFO;

  /// Inventory booking method for cost tracking
  @BuiltValueEnumConst(wireName: r'AVERAGE')
  static const BookingMethod AVERAGE = _$AVERAGE;

  /// Inventory booking method for cost tracking
  @BuiltValueEnumConst(wireName: r'STRICT')
  static const BookingMethod STRICT = _$STRICT;

  /// Inventory booking method for cost tracking
  @BuiltValueEnumConst(wireName: r'STRICT_WITH_SIZE')
  static const BookingMethod STRICT_WITH_SIZE = _$STRICT_WITH_SIZE;

  /// Inventory booking method for cost tracking
  @BuiltValueEnumConst(wireName: r'NONE')
  static const BookingMethod NONE = _$NONE;

  static Serializer<BookingMethod> get serializer => _$bookingMethodSerializer;

  const BookingMethod._(String name) : super(name);

  static BuiltSet<BookingMethod> get values => _$values;
  static BookingMethod valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BookingMethodMixin = Object with _$BookingMethodMixin;
