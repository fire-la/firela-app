// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_parsed_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NlpParsedDataDtoInvestmentActionEnum
    _$nlpParsedDataDtoInvestmentActionEnum_buy =
    const NlpParsedDataDtoInvestmentActionEnum._('buy');
const NlpParsedDataDtoInvestmentActionEnum
    _$nlpParsedDataDtoInvestmentActionEnum_sell =
    const NlpParsedDataDtoInvestmentActionEnum._('sell');

NlpParsedDataDtoInvestmentActionEnum
    _$nlpParsedDataDtoInvestmentActionEnumValueOf(String name) {
  switch (name) {
    case 'buy':
      return _$nlpParsedDataDtoInvestmentActionEnum_buy;
    case 'sell':
      return _$nlpParsedDataDtoInvestmentActionEnum_sell;
    default:
      return _$nlpParsedDataDtoInvestmentActionEnum_sell;
  }
}

final BuiltSet<NlpParsedDataDtoInvestmentActionEnum>
    _$nlpParsedDataDtoInvestmentActionEnumValues = new BuiltSet<
        NlpParsedDataDtoInvestmentActionEnum>(const <NlpParsedDataDtoInvestmentActionEnum>[
  _$nlpParsedDataDtoInvestmentActionEnum_buy,
  _$nlpParsedDataDtoInvestmentActionEnum_sell,
]);

const NlpParsedDataDtoPaymentSourceEnum
    _$nlpParsedDataDtoPaymentSourceEnum_asset =
    const NlpParsedDataDtoPaymentSourceEnum._('asset');
const NlpParsedDataDtoPaymentSourceEnum
    _$nlpParsedDataDtoPaymentSourceEnum_liability =
    const NlpParsedDataDtoPaymentSourceEnum._('liability');

NlpParsedDataDtoPaymentSourceEnum _$nlpParsedDataDtoPaymentSourceEnumValueOf(
    String name) {
  switch (name) {
    case 'asset':
      return _$nlpParsedDataDtoPaymentSourceEnum_asset;
    case 'liability':
      return _$nlpParsedDataDtoPaymentSourceEnum_liability;
    default:
      return _$nlpParsedDataDtoPaymentSourceEnum_liability;
  }
}

final BuiltSet<NlpParsedDataDtoPaymentSourceEnum>
    _$nlpParsedDataDtoPaymentSourceEnumValues = new BuiltSet<
        NlpParsedDataDtoPaymentSourceEnum>(const <NlpParsedDataDtoPaymentSourceEnum>[
  _$nlpParsedDataDtoPaymentSourceEnum_asset,
  _$nlpParsedDataDtoPaymentSourceEnum_liability,
]);

Serializer<NlpParsedDataDtoInvestmentActionEnum>
    _$nlpParsedDataDtoInvestmentActionEnumSerializer =
    new _$NlpParsedDataDtoInvestmentActionEnumSerializer();
Serializer<NlpParsedDataDtoPaymentSourceEnum>
    _$nlpParsedDataDtoPaymentSourceEnumSerializer =
    new _$NlpParsedDataDtoPaymentSourceEnumSerializer();

class _$NlpParsedDataDtoInvestmentActionEnumSerializer
    implements PrimitiveSerializer<NlpParsedDataDtoInvestmentActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'buy': 'buy',
    'sell': 'sell',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'buy': 'buy',
    'sell': 'sell',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NlpParsedDataDtoInvestmentActionEnum
  ];
  @override
  final String wireName = 'NlpParsedDataDtoInvestmentActionEnum';

  @override
  Object serialize(
          Serializers serializers, NlpParsedDataDtoInvestmentActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpParsedDataDtoInvestmentActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpParsedDataDtoInvestmentActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpParsedDataDtoPaymentSourceEnumSerializer
    implements PrimitiveSerializer<NlpParsedDataDtoPaymentSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'asset': 'asset',
    'liability': 'liability',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'asset': 'asset',
    'liability': 'liability',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpParsedDataDtoPaymentSourceEnum];
  @override
  final String wireName = 'NlpParsedDataDtoPaymentSourceEnum';

  @override
  Object serialize(
          Serializers serializers, NlpParsedDataDtoPaymentSourceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpParsedDataDtoPaymentSourceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpParsedDataDtoPaymentSourceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpParsedDataDto extends NlpParsedDataDto {
  @override
  final num? amount;
  @override
  final String? currency;
  @override
  final String? date;
  @override
  final String? payee;
  @override
  final String? narration;
  @override
  final String? category;
  @override
  final String? incomeType;
  @override
  final String? incomeSource;
  @override
  final String? symbol;
  @override
  final num? quantity;
  @override
  final num? price;
  @override
  final NlpParsedDataDtoInvestmentActionEnum? investmentAction;
  @override
  final NlpParsedDataDtoPaymentSourceEnum? paymentSource;
  @override
  final String? liabilityHint;
  @override
  final String? warning;

  factory _$NlpParsedDataDto(
          [void Function(NlpParsedDataDtoBuilder)? updates]) =>
      (new NlpParsedDataDtoBuilder()..update(updates))._build();

  _$NlpParsedDataDto._(
      {this.amount,
      this.currency,
      this.date,
      this.payee,
      this.narration,
      this.category,
      this.incomeType,
      this.incomeSource,
      this.symbol,
      this.quantity,
      this.price,
      this.investmentAction,
      this.paymentSource,
      this.liabilityHint,
      this.warning})
      : super._();

  @override
  NlpParsedDataDto rebuild(void Function(NlpParsedDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpParsedDataDtoBuilder toBuilder() =>
      new NlpParsedDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpParsedDataDto &&
        amount == other.amount &&
        currency == other.currency &&
        date == other.date &&
        payee == other.payee &&
        narration == other.narration &&
        category == other.category &&
        incomeType == other.incomeType &&
        incomeSource == other.incomeSource &&
        symbol == other.symbol &&
        quantity == other.quantity &&
        price == other.price &&
        investmentAction == other.investmentAction &&
        paymentSource == other.paymentSource &&
        liabilityHint == other.liabilityHint &&
        warning == other.warning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, incomeType.hashCode);
    _$hash = $jc(_$hash, incomeSource.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, investmentAction.hashCode);
    _$hash = $jc(_$hash, paymentSource.hashCode);
    _$hash = $jc(_$hash, liabilityHint.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpParsedDataDto')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('date', date)
          ..add('payee', payee)
          ..add('narration', narration)
          ..add('category', category)
          ..add('incomeType', incomeType)
          ..add('incomeSource', incomeSource)
          ..add('symbol', symbol)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('investmentAction', investmentAction)
          ..add('paymentSource', paymentSource)
          ..add('liabilityHint', liabilityHint)
          ..add('warning', warning))
        .toString();
  }
}

class NlpParsedDataDtoBuilder
    implements Builder<NlpParsedDataDto, NlpParsedDataDtoBuilder> {
  _$NlpParsedDataDto? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _incomeType;
  String? get incomeType => _$this._incomeType;
  set incomeType(String? incomeType) => _$this._incomeType = incomeType;

  String? _incomeSource;
  String? get incomeSource => _$this._incomeSource;
  set incomeSource(String? incomeSource) => _$this._incomeSource = incomeSource;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  num? _quantity;
  num? get quantity => _$this._quantity;
  set quantity(num? quantity) => _$this._quantity = quantity;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  NlpParsedDataDtoInvestmentActionEnum? _investmentAction;
  NlpParsedDataDtoInvestmentActionEnum? get investmentAction =>
      _$this._investmentAction;
  set investmentAction(
          NlpParsedDataDtoInvestmentActionEnum? investmentAction) =>
      _$this._investmentAction = investmentAction;

  NlpParsedDataDtoPaymentSourceEnum? _paymentSource;
  NlpParsedDataDtoPaymentSourceEnum? get paymentSource => _$this._paymentSource;
  set paymentSource(NlpParsedDataDtoPaymentSourceEnum? paymentSource) =>
      _$this._paymentSource = paymentSource;

  String? _liabilityHint;
  String? get liabilityHint => _$this._liabilityHint;
  set liabilityHint(String? liabilityHint) =>
      _$this._liabilityHint = liabilityHint;

  String? _warning;
  String? get warning => _$this._warning;
  set warning(String? warning) => _$this._warning = warning;

  NlpParsedDataDtoBuilder() {
    NlpParsedDataDto._defaults(this);
  }

  NlpParsedDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _currency = $v.currency;
      _date = $v.date;
      _payee = $v.payee;
      _narration = $v.narration;
      _category = $v.category;
      _incomeType = $v.incomeType;
      _incomeSource = $v.incomeSource;
      _symbol = $v.symbol;
      _quantity = $v.quantity;
      _price = $v.price;
      _investmentAction = $v.investmentAction;
      _paymentSource = $v.paymentSource;
      _liabilityHint = $v.liabilityHint;
      _warning = $v.warning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpParsedDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpParsedDataDto;
  }

  @override
  void update(void Function(NlpParsedDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpParsedDataDto build() => _build();

  _$NlpParsedDataDto _build() {
    final _$result = _$v ??
        new _$NlpParsedDataDto._(
            amount: amount,
            currency: currency,
            date: date,
            payee: payee,
            narration: narration,
            category: category,
            incomeType: incomeType,
            incomeSource: incomeSource,
            symbol: symbol,
            quantity: quantity,
            price: price,
            investmentAction: investmentAction,
            paymentSource: paymentSource,
            liabilityHint: liabilityHint,
            warning: warning);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
