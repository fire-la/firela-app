// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_parsed_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClientParsedDataDtoInvestmentActionEnum
    _$clientParsedDataDtoInvestmentActionEnum_buy =
    const ClientParsedDataDtoInvestmentActionEnum._('buy');
const ClientParsedDataDtoInvestmentActionEnum
    _$clientParsedDataDtoInvestmentActionEnum_sell =
    const ClientParsedDataDtoInvestmentActionEnum._('sell');

ClientParsedDataDtoInvestmentActionEnum
    _$clientParsedDataDtoInvestmentActionEnumValueOf(String name) {
  switch (name) {
    case 'buy':
      return _$clientParsedDataDtoInvestmentActionEnum_buy;
    case 'sell':
      return _$clientParsedDataDtoInvestmentActionEnum_sell;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ClientParsedDataDtoInvestmentActionEnum>
    _$clientParsedDataDtoInvestmentActionEnumValues = new BuiltSet<
        ClientParsedDataDtoInvestmentActionEnum>(const <ClientParsedDataDtoInvestmentActionEnum>[
  _$clientParsedDataDtoInvestmentActionEnum_buy,
  _$clientParsedDataDtoInvestmentActionEnum_sell,
]);

const ClientParsedDataDtoPaymentSourceEnum
    _$clientParsedDataDtoPaymentSourceEnum_asset =
    const ClientParsedDataDtoPaymentSourceEnum._('asset');
const ClientParsedDataDtoPaymentSourceEnum
    _$clientParsedDataDtoPaymentSourceEnum_liability =
    const ClientParsedDataDtoPaymentSourceEnum._('liability');

ClientParsedDataDtoPaymentSourceEnum
    _$clientParsedDataDtoPaymentSourceEnumValueOf(String name) {
  switch (name) {
    case 'asset':
      return _$clientParsedDataDtoPaymentSourceEnum_asset;
    case 'liability':
      return _$clientParsedDataDtoPaymentSourceEnum_liability;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ClientParsedDataDtoPaymentSourceEnum>
    _$clientParsedDataDtoPaymentSourceEnumValues = new BuiltSet<
        ClientParsedDataDtoPaymentSourceEnum>(const <ClientParsedDataDtoPaymentSourceEnum>[
  _$clientParsedDataDtoPaymentSourceEnum_asset,
  _$clientParsedDataDtoPaymentSourceEnum_liability,
]);

Serializer<ClientParsedDataDtoInvestmentActionEnum>
    _$clientParsedDataDtoInvestmentActionEnumSerializer =
    new _$ClientParsedDataDtoInvestmentActionEnumSerializer();
Serializer<ClientParsedDataDtoPaymentSourceEnum>
    _$clientParsedDataDtoPaymentSourceEnumSerializer =
    new _$ClientParsedDataDtoPaymentSourceEnumSerializer();

class _$ClientParsedDataDtoInvestmentActionEnumSerializer
    implements PrimitiveSerializer<ClientParsedDataDtoInvestmentActionEnum> {
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
    ClientParsedDataDtoInvestmentActionEnum
  ];
  @override
  final String wireName = 'ClientParsedDataDtoInvestmentActionEnum';

  @override
  Object serialize(Serializers serializers,
          ClientParsedDataDtoInvestmentActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClientParsedDataDtoInvestmentActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClientParsedDataDtoInvestmentActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClientParsedDataDtoPaymentSourceEnumSerializer
    implements PrimitiveSerializer<ClientParsedDataDtoPaymentSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'asset': 'asset',
    'liability': 'liability',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'asset': 'asset',
    'liability': 'liability',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ClientParsedDataDtoPaymentSourceEnum
  ];
  @override
  final String wireName = 'ClientParsedDataDtoPaymentSourceEnum';

  @override
  Object serialize(
          Serializers serializers, ClientParsedDataDtoPaymentSourceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClientParsedDataDtoPaymentSourceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClientParsedDataDtoPaymentSourceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClientParsedDataDto extends ClientParsedDataDto {
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
  final ClientParsedDataDtoInvestmentActionEnum? investmentAction;
  @override
  final ClientParsedDataDtoPaymentSourceEnum? paymentSource;
  @override
  final String? liabilityHint;
  @override
  final String? warning;

  factory _$ClientParsedDataDto(
          [void Function(ClientParsedDataDtoBuilder)? updates]) =>
      (new ClientParsedDataDtoBuilder()..update(updates))._build();

  _$ClientParsedDataDto._(
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
  ClientParsedDataDto rebuild(
          void Function(ClientParsedDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientParsedDataDtoBuilder toBuilder() =>
      new ClientParsedDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientParsedDataDto &&
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
    return (newBuiltValueToStringHelper(r'ClientParsedDataDto')
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

class ClientParsedDataDtoBuilder
    implements Builder<ClientParsedDataDto, ClientParsedDataDtoBuilder> {
  _$ClientParsedDataDto? _$v;

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

  ClientParsedDataDtoInvestmentActionEnum? _investmentAction;
  ClientParsedDataDtoInvestmentActionEnum? get investmentAction =>
      _$this._investmentAction;
  set investmentAction(
          ClientParsedDataDtoInvestmentActionEnum? investmentAction) =>
      _$this._investmentAction = investmentAction;

  ClientParsedDataDtoPaymentSourceEnum? _paymentSource;
  ClientParsedDataDtoPaymentSourceEnum? get paymentSource =>
      _$this._paymentSource;
  set paymentSource(ClientParsedDataDtoPaymentSourceEnum? paymentSource) =>
      _$this._paymentSource = paymentSource;

  String? _liabilityHint;
  String? get liabilityHint => _$this._liabilityHint;
  set liabilityHint(String? liabilityHint) =>
      _$this._liabilityHint = liabilityHint;

  String? _warning;
  String? get warning => _$this._warning;
  set warning(String? warning) => _$this._warning = warning;

  ClientParsedDataDtoBuilder() {
    ClientParsedDataDto._defaults(this);
  }

  ClientParsedDataDtoBuilder get _$this {
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
  void replace(ClientParsedDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientParsedDataDto;
  }

  @override
  void update(void Function(ClientParsedDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientParsedDataDto build() => _build();

  _$ClientParsedDataDto _build() {
    final _$result = _$v ??
        new _$ClientParsedDataDto._(
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
