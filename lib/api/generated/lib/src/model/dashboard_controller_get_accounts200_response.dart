//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/accounts_response_dto.dart';
import 'package:firela_api/src/model/asset_class_accounts_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'dashboard_controller_get_accounts200_response.g.dart';

/// DashboardControllerGetAccounts200Response
///
/// Properties:
/// * [groups] - Account groups by asset class
/// * [summary]
@BuiltValue()
abstract class DashboardControllerGetAccounts200Response
    implements
        Built<DashboardControllerGetAccounts200Response,
            DashboardControllerGetAccounts200ResponseBuilder> {
  /// One Of [AccountsResponseDto], [AssetClassAccountsResponseDto]
  OneOf get oneOf;

  DashboardControllerGetAccounts200Response._();

  factory DashboardControllerGetAccounts200Response(
          [void updates(DashboardControllerGetAccounts200ResponseBuilder b)]) =
      _$DashboardControllerGetAccounts200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardControllerGetAccounts200ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardControllerGetAccounts200Response> get serializer =>
      _$DashboardControllerGetAccounts200ResponseSerializer();
}

class _$DashboardControllerGetAccounts200ResponseSerializer
    implements PrimitiveSerializer<DashboardControllerGetAccounts200Response> {
  @override
  final Iterable<Type> types = const [
    DashboardControllerGetAccounts200Response,
    _$DashboardControllerGetAccounts200Response
  ];

  @override
  final String wireName = r'DashboardControllerGetAccounts200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardControllerGetAccounts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    DashboardControllerGetAccounts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  DashboardControllerGetAccounts200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardControllerGetAccounts200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(AccountsResponseDto),
      FullType(AssetClassAccountsResponseDto),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
