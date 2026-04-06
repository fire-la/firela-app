//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/booking_method.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_account_request.g.dart';

/// UpdateAccountRequest
///
/// Properties:
/// * [currencies]
/// * [bookingMethod]
/// * [i18nKey]
/// * [icon]
@BuiltValue()
abstract class UpdateAccountRequest
    implements Built<UpdateAccountRequest, UpdateAccountRequestBuilder> {
  @BuiltValueField(wireName: r'currencies')
  BuiltList<String>? get currencies;

  @BuiltValueField(wireName: r'bookingMethod')
  BookingMethod? get bookingMethod;
  // enum bookingMethodEnum {  FIFO,  LIFO,  HIFO,  AVERAGE,  STRICT,  STRICT_WITH_SIZE,  NONE,  };

  @BuiltValueField(wireName: r'i18nKey')
  String? get i18nKey;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  UpdateAccountRequest._();

  factory UpdateAccountRequest([void updates(UpdateAccountRequestBuilder b)]) =
      _$UpdateAccountRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAccountRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAccountRequest> get serializer =>
      _$UpdateAccountRequestSerializer();
}

class _$UpdateAccountRequestSerializer
    implements PrimitiveSerializer<UpdateAccountRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateAccountRequest,
    _$UpdateAccountRequest
  ];

  @override
  final String wireName = r'UpdateAccountRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currencies != null) {
      yield r'currencies';
      yield serializers.serialize(
        object.currencies,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.bookingMethod != null) {
      yield r'bookingMethod';
      yield serializers.serialize(
        object.bookingMethod,
        specifiedType: const FullType(BookingMethod),
      );
    }
    if (object.i18nKey != null) {
      yield r'i18nKey';
      yield serializers.serialize(
        object.i18nKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAccountRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.currencies.replace(valueDes);
          break;
        case r'bookingMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookingMethod),
          ) as BookingMethod;
          result.bookingMethod = valueDes;
          break;
        case r'i18nKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.i18nKey = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateAccountRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccountRequestBuilder();
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
