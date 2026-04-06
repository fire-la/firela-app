// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingMethod _$FIFO = const BookingMethod._('FIFO');
const BookingMethod _$LIFO = const BookingMethod._('LIFO');
const BookingMethod _$HIFO = const BookingMethod._('HIFO');
const BookingMethod _$AVERAGE = const BookingMethod._('AVERAGE');
const BookingMethod _$STRICT = const BookingMethod._('STRICT');
const BookingMethod _$STRICT_WITH_SIZE =
    const BookingMethod._('STRICT_WITH_SIZE');
const BookingMethod _$NONE = const BookingMethod._('NONE');

BookingMethod _$valueOf(String name) {
  switch (name) {
    case 'FIFO':
      return _$FIFO;
    case 'LIFO':
      return _$LIFO;
    case 'HIFO':
      return _$HIFO;
    case 'AVERAGE':
      return _$AVERAGE;
    case 'STRICT':
      return _$STRICT;
    case 'STRICT_WITH_SIZE':
      return _$STRICT_WITH_SIZE;
    case 'NONE':
      return _$NONE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BookingMethod> _$values =
    new BuiltSet<BookingMethod>(const <BookingMethod>[
  _$FIFO,
  _$LIFO,
  _$HIFO,
  _$AVERAGE,
  _$STRICT,
  _$STRICT_WITH_SIZE,
  _$NONE,
]);

class _$BookingMethodMeta {
  const _$BookingMethodMeta();
  BookingMethod get FIFO => _$FIFO;
  BookingMethod get LIFO => _$LIFO;
  BookingMethod get HIFO => _$HIFO;
  BookingMethod get AVERAGE => _$AVERAGE;
  BookingMethod get STRICT => _$STRICT;
  BookingMethod get STRICT_WITH_SIZE => _$STRICT_WITH_SIZE;
  BookingMethod get NONE => _$NONE;
  BookingMethod valueOf(String name) => _$valueOf(name);
  BuiltSet<BookingMethod> get values => _$values;
}

mixin _$BookingMethodMixin {
  // ignore: non_constant_identifier_names
  _$BookingMethodMeta get BookingMethod => const _$BookingMethodMeta();
}

Serializer<BookingMethod> _$bookingMethodSerializer =
    new _$BookingMethodSerializer();

class _$BookingMethodSerializer implements PrimitiveSerializer<BookingMethod> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FIFO': 'FIFO',
    'LIFO': 'LIFO',
    'HIFO': 'HIFO',
    'AVERAGE': 'AVERAGE',
    'STRICT': 'STRICT',
    'STRICT_WITH_SIZE': 'STRICT_WITH_SIZE',
    'NONE': 'NONE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FIFO': 'FIFO',
    'LIFO': 'LIFO',
    'HIFO': 'HIFO',
    'AVERAGE': 'AVERAGE',
    'STRICT': 'STRICT',
    'STRICT_WITH_SIZE': 'STRICT_WITH_SIZE',
    'NONE': 'NONE',
  };

  @override
  final Iterable<Type> types = const <Type>[BookingMethod];
  @override
  final String wireName = 'BookingMethod';

  @override
  Object serialize(Serializers serializers, BookingMethod object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BookingMethod deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BookingMethod.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
