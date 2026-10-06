//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reopen_account_dto.g.dart';

/// ReopenAccountDto
///
/// Properties:
/// * [reopenDate] - New open date (optional)
/// * [clientTimezoneOffsetMinutes] - Client timezone hint: minutes east of UTC (+480 = UTC+8). Normalizes reopenDate to the client's local calendar day; absent = legacy raw passthrough (backward compatible). Not connected to Settings.timezone.
@BuiltValue()
abstract class ReopenAccountDto implements Built<ReopenAccountDto, ReopenAccountDtoBuilder> {
  /// New open date (optional)
  @BuiltValueField(wireName: r'reopenDate')
  DateTime? get reopenDate;

  /// Client timezone hint: minutes east of UTC (+480 = UTC+8). Normalizes reopenDate to the client's local calendar day; absent = legacy raw passthrough (backward compatible). Not connected to Settings.timezone.
  @BuiltValueField(wireName: r'clientTimezoneOffsetMinutes')
  num? get clientTimezoneOffsetMinutes;

  ReopenAccountDto._();

  factory ReopenAccountDto([void updates(ReopenAccountDtoBuilder b)]) = _$ReopenAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReopenAccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReopenAccountDto> get serializer => _$ReopenAccountDtoSerializer();
}

class _$ReopenAccountDtoSerializer implements PrimitiveSerializer<ReopenAccountDto> {
  @override
  final Iterable<Type> types = const [ReopenAccountDto, _$ReopenAccountDto];

  @override
  final String wireName = r'ReopenAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReopenAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reopenDate != null) {
      yield r'reopenDate';
      yield serializers.serialize(
        object.reopenDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.clientTimezoneOffsetMinutes != null) {
      yield r'clientTimezoneOffsetMinutes';
      yield serializers.serialize(
        object.clientTimezoneOffsetMinutes,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReopenAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReopenAccountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reopenDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.reopenDate = valueDes;
          break;
        case r'clientTimezoneOffsetMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.clientTimezoneOffsetMinutes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReopenAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReopenAccountDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

