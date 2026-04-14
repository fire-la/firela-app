//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_item_with_asset_class_dto.g.dart';

/// AccountItemWithAssetClassDto
///
/// Properties:
/// * [id] - Account ID
/// * [name] - Full account name
/// * [displayName] - Display name (last part of account path)
/// * [balance] - Account balance
/// * [currency] - Currency code
/// * [assetClass] - Asset class
/// * [assetSubClass] - Asset sub-class (Prisma-compatible)
/// * [regionalSubClass] - Regional sub-class (region-specific, for display)
/// * [riskLevel] - Risk level
@BuiltValue()
abstract class AccountItemWithAssetClassDto
    implements
        Built<AccountItemWithAssetClassDto,
            AccountItemWithAssetClassDtoBuilder> {
  /// Account ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Full account name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Display name (last part of account path)
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  /// Account balance
  @BuiltValueField(wireName: r'balance')
  String get balance;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Asset class
  @BuiltValueField(wireName: r'assetClass')
  String get assetClass;

  /// Asset sub-class (Prisma-compatible)
  @BuiltValueField(wireName: r'assetSubClass')
  String? get assetSubClass;

  /// Regional sub-class (region-specific, for display)
  @BuiltValueField(wireName: r'regionalSubClass')
  String? get regionalSubClass;

  /// Risk level
  @BuiltValueField(wireName: r'riskLevel')
  String? get riskLevel;

  AccountItemWithAssetClassDto._();

  factory AccountItemWithAssetClassDto(
          [void updates(AccountItemWithAssetClassDtoBuilder b)]) =
      _$AccountItemWithAssetClassDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountItemWithAssetClassDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountItemWithAssetClassDto> get serializer =>
      _$AccountItemWithAssetClassDtoSerializer();
}

class _$AccountItemWithAssetClassDtoSerializer
    implements PrimitiveSerializer<AccountItemWithAssetClassDto> {
  @override
  final Iterable<Type> types = const [
    AccountItemWithAssetClassDto,
    _$AccountItemWithAssetClassDto
  ];

  @override
  final String wireName = r'AccountItemWithAssetClassDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountItemWithAssetClassDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'balance';
    yield serializers.serialize(
      object.balance,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(String),
    );
    if (object.assetSubClass != null) {
      yield r'assetSubClass';
      yield serializers.serialize(
        object.assetSubClass,
        specifiedType: const FullType(String),
      );
    }
    if (object.regionalSubClass != null) {
      yield r'regionalSubClass';
      yield serializers.serialize(
        object.regionalSubClass,
        specifiedType: const FullType(String),
      );
    }
    if (object.riskLevel != null) {
      yield r'riskLevel';
      yield serializers.serialize(
        object.riskLevel,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountItemWithAssetClassDto object, {
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
    required AccountItemWithAssetClassDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.balance = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assetClass = valueDes;
          break;
        case r'assetSubClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assetSubClass = valueDes;
          break;
        case r'regionalSubClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.regionalSubClass = valueDes;
          break;
        case r'riskLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.riskLevel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountItemWithAssetClassDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountItemWithAssetClassDtoBuilder();
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
