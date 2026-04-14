//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_parsed_data_dto.g.dart';

/// NlpParsedDataDto
///
/// Properties:
/// * [amount] - Extracted amount
/// * [currency] - Currency code
/// * [date] - Transaction date (ISO format)
/// * [payee] - Payee name
/// * [narration] - Transaction narration
/// * [category] - Category
/// * [incomeType] - Income type (e.g., Salary, Bonus, Dividend, Interest)
/// * [incomeSource] - Income source (e.g., company name)
/// * [symbol] - Security symbol code (e.g., 600519, AAPL)
/// * [quantity] - Quantity of shares/units
/// * [price] - Unit price per share/unit
/// * [investmentAction] - Investment action
/// * [paymentSource] - Payment source: asset (default) or liability (credit card)
/// * [liabilityHint] - Liability account hint (CreditCard/Huabei/Baitiao)
/// * [warning] - Warning message for special scenarios (e.g., cross-currency settlement)
@BuiltValue()
abstract class NlpParsedDataDto
    implements Built<NlpParsedDataDto, NlpParsedDataDtoBuilder> {
  /// Extracted amount
  @BuiltValueField(wireName: r'amount')
  num? get amount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Transaction date (ISO format)
  @BuiltValueField(wireName: r'date')
  String? get date;

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Transaction narration
  @BuiltValueField(wireName: r'narration')
  String? get narration;

  /// Category
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// Income type (e.g., Salary, Bonus, Dividend, Interest)
  @BuiltValueField(wireName: r'incomeType')
  String? get incomeType;

  /// Income source (e.g., company name)
  @BuiltValueField(wireName: r'incomeSource')
  String? get incomeSource;

  /// Security symbol code (e.g., 600519, AAPL)
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Quantity of shares/units
  @BuiltValueField(wireName: r'quantity')
  num? get quantity;

  /// Unit price per share/unit
  @BuiltValueField(wireName: r'price')
  num? get price;

  /// Investment action
  @BuiltValueField(wireName: r'investmentAction')
  NlpParsedDataDtoInvestmentActionEnum? get investmentAction;
  // enum investmentActionEnum {  buy,  sell,  };

  /// Payment source: asset (default) or liability (credit card)
  @BuiltValueField(wireName: r'paymentSource')
  NlpParsedDataDtoPaymentSourceEnum? get paymentSource;
  // enum paymentSourceEnum {  asset,  liability,  };

  /// Liability account hint (CreditCard/Huabei/Baitiao)
  @BuiltValueField(wireName: r'liabilityHint')
  String? get liabilityHint;

  /// Warning message for special scenarios (e.g., cross-currency settlement)
  @BuiltValueField(wireName: r'warning')
  String? get warning;

  NlpParsedDataDto._();

  factory NlpParsedDataDto([void updates(NlpParsedDataDtoBuilder b)]) =
      _$NlpParsedDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpParsedDataDtoBuilder b) => b..currency = 'CNY';

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpParsedDataDto> get serializer =>
      _$NlpParsedDataDtoSerializer();
}

class _$NlpParsedDataDtoSerializer
    implements PrimitiveSerializer<NlpParsedDataDto> {
  @override
  final Iterable<Type> types = const [NlpParsedDataDto, _$NlpParsedDataDto];

  @override
  final String wireName = r'NlpParsedDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpParsedDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    if (object.narration != null) {
      yield r'narration';
      yield serializers.serialize(
        object.narration,
        specifiedType: const FullType(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.incomeType != null) {
      yield r'incomeType';
      yield serializers.serialize(
        object.incomeType,
        specifiedType: const FullType(String),
      );
    }
    if (object.incomeSource != null) {
      yield r'incomeSource';
      yield serializers.serialize(
        object.incomeSource,
        specifiedType: const FullType(String),
      );
    }
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType(String),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(num),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    if (object.investmentAction != null) {
      yield r'investmentAction';
      yield serializers.serialize(
        object.investmentAction,
        specifiedType: const FullType(NlpParsedDataDtoInvestmentActionEnum),
      );
    }
    if (object.paymentSource != null) {
      yield r'paymentSource';
      yield serializers.serialize(
        object.paymentSource,
        specifiedType: const FullType(NlpParsedDataDtoPaymentSourceEnum),
      );
    }
    if (object.liabilityHint != null) {
      yield r'liabilityHint';
      yield serializers.serialize(
        object.liabilityHint,
        specifiedType: const FullType(String),
      );
    }
    if (object.warning != null) {
      yield r'warning';
      yield serializers.serialize(
        object.warning,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpParsedDataDto object, {
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
    required NlpParsedDataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'incomeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.incomeType = valueDes;
          break;
        case r'incomeSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.incomeSource = valueDes;
          break;
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbol = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.quantity = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'investmentAction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpParsedDataDtoInvestmentActionEnum),
          ) as NlpParsedDataDtoInvestmentActionEnum;
          result.investmentAction = valueDes;
          break;
        case r'paymentSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpParsedDataDtoPaymentSourceEnum),
          ) as NlpParsedDataDtoPaymentSourceEnum;
          result.paymentSource = valueDes;
          break;
        case r'liabilityHint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.liabilityHint = valueDes;
          break;
        case r'warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.warning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpParsedDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpParsedDataDtoBuilder();
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

class NlpParsedDataDtoInvestmentActionEnum extends EnumClass {
  /// Investment action
  @BuiltValueEnumConst(wireName: r'buy')
  static const NlpParsedDataDtoInvestmentActionEnum buy =
      _$nlpParsedDataDtoInvestmentActionEnum_buy;

  /// Investment action
  @BuiltValueEnumConst(wireName: r'sell', fallback: true)
  static const NlpParsedDataDtoInvestmentActionEnum sell =
      _$nlpParsedDataDtoInvestmentActionEnum_sell;

  static Serializer<NlpParsedDataDtoInvestmentActionEnum> get serializer =>
      _$nlpParsedDataDtoInvestmentActionEnumSerializer;

  const NlpParsedDataDtoInvestmentActionEnum._(String name) : super(name);

  static BuiltSet<NlpParsedDataDtoInvestmentActionEnum> get values =>
      _$nlpParsedDataDtoInvestmentActionEnumValues;
  static NlpParsedDataDtoInvestmentActionEnum valueOf(String name) =>
      _$nlpParsedDataDtoInvestmentActionEnumValueOf(name);
}

class NlpParsedDataDtoPaymentSourceEnum extends EnumClass {
  /// Payment source: asset (default) or liability (credit card)
  @BuiltValueEnumConst(wireName: r'asset')
  static const NlpParsedDataDtoPaymentSourceEnum asset =
      _$nlpParsedDataDtoPaymentSourceEnum_asset;

  /// Payment source: asset (default) or liability (credit card)
  @BuiltValueEnumConst(wireName: r'liability', fallback: true)
  static const NlpParsedDataDtoPaymentSourceEnum liability =
      _$nlpParsedDataDtoPaymentSourceEnum_liability;

  static Serializer<NlpParsedDataDtoPaymentSourceEnum> get serializer =>
      _$nlpParsedDataDtoPaymentSourceEnumSerializer;

  const NlpParsedDataDtoPaymentSourceEnum._(String name) : super(name);

  static BuiltSet<NlpParsedDataDtoPaymentSourceEnum> get values =>
      _$nlpParsedDataDtoPaymentSourceEnumValues;
  static NlpParsedDataDtoPaymentSourceEnum valueOf(String name) =>
      _$nlpParsedDataDtoPaymentSourceEnumValueOf(name);
}
