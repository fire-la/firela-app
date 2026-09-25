//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/top_expense_category_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/net_worth_response_dto.dart';
import 'package:firela_api/src/model/trailing12m_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisor_context_response_dto.g.dart';

/// AdvisorContextResponseDto
///
/// Properties:
/// * [asOf] - Data as of date (ISO 8601)
/// * [netWorth] 
/// * [trailing12m] 
/// * [topExpenseCategories] - Top-3 expense categories by converted total desc (account-path leaf keys, same 12-month window; fewer entries when fewer categories have activity)
@BuiltValue()
abstract class AdvisorContextResponseDto implements Built<AdvisorContextResponseDto, AdvisorContextResponseDtoBuilder> {
  /// Data as of date (ISO 8601)
  @BuiltValueField(wireName: r'asOf')
  String get asOf;

  @BuiltValueField(wireName: r'netWorth')
  NetWorthResponseDto get netWorth;

  @BuiltValueField(wireName: r'trailing12m')
  Trailing12mDto get trailing12m;

  /// Top-3 expense categories by converted total desc (account-path leaf keys, same 12-month window; fewer entries when fewer categories have activity)
  @BuiltValueField(wireName: r'topExpenseCategories')
  BuiltList<TopExpenseCategoryDto> get topExpenseCategories;

  AdvisorContextResponseDto._();

  factory AdvisorContextResponseDto([void updates(AdvisorContextResponseDtoBuilder b)]) = _$AdvisorContextResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdvisorContextResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdvisorContextResponseDto> get serializer => _$AdvisorContextResponseDtoSerializer();
}

class _$AdvisorContextResponseDtoSerializer implements PrimitiveSerializer<AdvisorContextResponseDto> {
  @override
  final Iterable<Type> types = const [AdvisorContextResponseDto, _$AdvisorContextResponseDto];

  @override
  final String wireName = r'AdvisorContextResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdvisorContextResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'asOf';
    yield serializers.serialize(
      object.asOf,
      specifiedType: const FullType(String),
    );
    yield r'netWorth';
    yield serializers.serialize(
      object.netWorth,
      specifiedType: const FullType(NetWorthResponseDto),
    );
    yield r'trailing12m';
    yield serializers.serialize(
      object.trailing12m,
      specifiedType: const FullType(Trailing12mDto),
    );
    yield r'topExpenseCategories';
    yield serializers.serialize(
      object.topExpenseCategories,
      specifiedType: const FullType(BuiltList, [FullType(TopExpenseCategoryDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdvisorContextResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdvisorContextResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.asOf = valueDes;
          break;
        case r'netWorth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NetWorthResponseDto),
          ) as NetWorthResponseDto;
          result.netWorth.replace(valueDes);
          break;
        case r'trailing12m':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Trailing12mDto),
          ) as Trailing12mDto;
          result.trailing12m.replace(valueDes);
          break;
        case r'topExpenseCategories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TopExpenseCategoryDto)]),
          ) as BuiltList<TopExpenseCategoryDto>;
          result.topExpenseCategories.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdvisorContextResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdvisorContextResponseDtoBuilder();
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

