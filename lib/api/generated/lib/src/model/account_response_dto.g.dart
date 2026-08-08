// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_assets =
    const AccountResponseDtoTypeEnum._('assets');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_liabilities =
    const AccountResponseDtoTypeEnum._('liabilities');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_income =
    const AccountResponseDtoTypeEnum._('income');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_expenses =
    const AccountResponseDtoTypeEnum._('expenses');
const AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnum_equity =
    const AccountResponseDtoTypeEnum._('equity');

AccountResponseDtoTypeEnum _$accountResponseDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'assets':
      return _$accountResponseDtoTypeEnum_assets;
    case 'liabilities':
      return _$accountResponseDtoTypeEnum_liabilities;
    case 'income':
      return _$accountResponseDtoTypeEnum_income;
    case 'expenses':
      return _$accountResponseDtoTypeEnum_expenses;
    case 'equity':
      return _$accountResponseDtoTypeEnum_equity;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountResponseDtoTypeEnum> _$accountResponseDtoTypeEnumValues =
    new BuiltSet<AccountResponseDtoTypeEnum>(const <AccountResponseDtoTypeEnum>[
  _$accountResponseDtoTypeEnum_assets,
  _$accountResponseDtoTypeEnum_liabilities,
  _$accountResponseDtoTypeEnum_income,
  _$accountResponseDtoTypeEnum_expenses,
  _$accountResponseDtoTypeEnum_equity,
]);

const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_DEPOSIT =
    const AccountResponseDtoAssetSubClassEnum._('DEPOSIT');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_CASH =
    const AccountResponseDtoAssetSubClassEnum._('CASH');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_MONEY_MARKET_FUND =
    const AccountResponseDtoAssetSubClassEnum._('MONEY_MARKET_FUND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_STOCK =
    const AccountResponseDtoAssetSubClassEnum._('STOCK');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_ETF =
    const AccountResponseDtoAssetSubClassEnum._('ETF');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_MUTUAL_FUND =
    const AccountResponseDtoAssetSubClassEnum._('MUTUAL_FUND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_EQUITY_COMPENSATION =
    const AccountResponseDtoAssetSubClassEnum._('EQUITY_COMPENSATION');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_GOVERNMENT_BOND =
    const AccountResponseDtoAssetSubClassEnum._('GOVERNMENT_BOND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_CORPORATE_BOND =
    const AccountResponseDtoAssetSubClassEnum._('CORPORATE_BOND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_BOND_FUND =
    const AccountResponseDtoAssetSubClassEnum._('BOND_FUND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_PRIMARY_RESIDENCE =
    const AccountResponseDtoAssetSubClassEnum._('PRIMARY_RESIDENCE');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_INVESTMENT_PROPERTY =
    const AccountResponseDtoAssetSubClassEnum._('INVESTMENT_PROPERTY');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_REIT =
    const AccountResponseDtoAssetSubClassEnum._('REIT');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_GOLD =
    const AccountResponseDtoAssetSubClassEnum._('GOLD');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_SILVER =
    const AccountResponseDtoAssetSubClassEnum._('SILVER');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL =
    const AccountResponseDtoAssetSubClassEnum._('PRECIOUS_METAL');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL_FUND =
    const AccountResponseDtoAssetSubClassEnum._('PRECIOUS_METAL_FUND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_COMMODITY =
    const AccountResponseDtoAssetSubClassEnum._('COMMODITY');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_COMMODITY_FUND =
    const AccountResponseDtoAssetSubClassEnum._('COMMODITY_FUND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_CRYPTOCURRENCY =
    const AccountResponseDtoAssetSubClassEnum._('CRYPTOCURRENCY');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_RETIREMENT_ACCOUNT =
    const AccountResponseDtoAssetSubClassEnum._('RETIREMENT_ACCOUNT');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_HEALTH_ACCOUNT =
    const AccountResponseDtoAssetSubClassEnum._('HEALTH_ACCOUNT');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_EDUCATION_ACCOUNT =
    const AccountResponseDtoAssetSubClassEnum._('EDUCATION_ACCOUNT');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_INSURANCE =
    const AccountResponseDtoAssetSubClassEnum._('INSURANCE');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_PRIVATE_EQUITY =
    const AccountResponseDtoAssetSubClassEnum._('PRIVATE_EQUITY');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_HEDGE_FUND =
    const AccountResponseDtoAssetSubClassEnum._('HEDGE_FUND');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_COLLECTIBLES =
    const AccountResponseDtoAssetSubClassEnum._('COLLECTIBLES');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_MORTGAGE =
    const AccountResponseDtoAssetSubClassEnum._('MORTGAGE');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_STUDENT_LOAN =
    const AccountResponseDtoAssetSubClassEnum._('STUDENT_LOAN');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_CREDIT_CARD =
    const AccountResponseDtoAssetSubClassEnum._('CREDIT_CARD');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_PERSONAL_LOAN =
    const AccountResponseDtoAssetSubClassEnum._('PERSONAL_LOAN');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_ACCOUNTS_PAYABLE =
    const AccountResponseDtoAssetSubClassEnum._('ACCOUNTS_PAYABLE');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_TAX_PAYABLE =
    const AccountResponseDtoAssetSubClassEnum._('TAX_PAYABLE');
const AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnum_OTHER =
    const AccountResponseDtoAssetSubClassEnum._('OTHER');

AccountResponseDtoAssetSubClassEnum
    _$accountResponseDtoAssetSubClassEnumValueOf(String name) {
  switch (name) {
    case 'DEPOSIT':
      return _$accountResponseDtoAssetSubClassEnum_DEPOSIT;
    case 'CASH':
      return _$accountResponseDtoAssetSubClassEnum_CASH;
    case 'MONEY_MARKET_FUND':
      return _$accountResponseDtoAssetSubClassEnum_MONEY_MARKET_FUND;
    case 'STOCK':
      return _$accountResponseDtoAssetSubClassEnum_STOCK;
    case 'ETF':
      return _$accountResponseDtoAssetSubClassEnum_ETF;
    case 'MUTUAL_FUND':
      return _$accountResponseDtoAssetSubClassEnum_MUTUAL_FUND;
    case 'EQUITY_COMPENSATION':
      return _$accountResponseDtoAssetSubClassEnum_EQUITY_COMPENSATION;
    case 'GOVERNMENT_BOND':
      return _$accountResponseDtoAssetSubClassEnum_GOVERNMENT_BOND;
    case 'CORPORATE_BOND':
      return _$accountResponseDtoAssetSubClassEnum_CORPORATE_BOND;
    case 'BOND_FUND':
      return _$accountResponseDtoAssetSubClassEnum_BOND_FUND;
    case 'PRIMARY_RESIDENCE':
      return _$accountResponseDtoAssetSubClassEnum_PRIMARY_RESIDENCE;
    case 'INVESTMENT_PROPERTY':
      return _$accountResponseDtoAssetSubClassEnum_INVESTMENT_PROPERTY;
    case 'REIT':
      return _$accountResponseDtoAssetSubClassEnum_REIT;
    case 'GOLD':
      return _$accountResponseDtoAssetSubClassEnum_GOLD;
    case 'SILVER':
      return _$accountResponseDtoAssetSubClassEnum_SILVER;
    case 'PRECIOUS_METAL':
      return _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL;
    case 'PRECIOUS_METAL_FUND':
      return _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL_FUND;
    case 'COMMODITY':
      return _$accountResponseDtoAssetSubClassEnum_COMMODITY;
    case 'COMMODITY_FUND':
      return _$accountResponseDtoAssetSubClassEnum_COMMODITY_FUND;
    case 'CRYPTOCURRENCY':
      return _$accountResponseDtoAssetSubClassEnum_CRYPTOCURRENCY;
    case 'RETIREMENT_ACCOUNT':
      return _$accountResponseDtoAssetSubClassEnum_RETIREMENT_ACCOUNT;
    case 'HEALTH_ACCOUNT':
      return _$accountResponseDtoAssetSubClassEnum_HEALTH_ACCOUNT;
    case 'EDUCATION_ACCOUNT':
      return _$accountResponseDtoAssetSubClassEnum_EDUCATION_ACCOUNT;
    case 'INSURANCE':
      return _$accountResponseDtoAssetSubClassEnum_INSURANCE;
    case 'PRIVATE_EQUITY':
      return _$accountResponseDtoAssetSubClassEnum_PRIVATE_EQUITY;
    case 'HEDGE_FUND':
      return _$accountResponseDtoAssetSubClassEnum_HEDGE_FUND;
    case 'COLLECTIBLES':
      return _$accountResponseDtoAssetSubClassEnum_COLLECTIBLES;
    case 'MORTGAGE':
      return _$accountResponseDtoAssetSubClassEnum_MORTGAGE;
    case 'STUDENT_LOAN':
      return _$accountResponseDtoAssetSubClassEnum_STUDENT_LOAN;
    case 'CREDIT_CARD':
      return _$accountResponseDtoAssetSubClassEnum_CREDIT_CARD;
    case 'PERSONAL_LOAN':
      return _$accountResponseDtoAssetSubClassEnum_PERSONAL_LOAN;
    case 'ACCOUNTS_PAYABLE':
      return _$accountResponseDtoAssetSubClassEnum_ACCOUNTS_PAYABLE;
    case 'TAX_PAYABLE':
      return _$accountResponseDtoAssetSubClassEnum_TAX_PAYABLE;
    case 'OTHER':
      return _$accountResponseDtoAssetSubClassEnum_OTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountResponseDtoAssetSubClassEnum>
    _$accountResponseDtoAssetSubClassEnumValues = new BuiltSet<
        AccountResponseDtoAssetSubClassEnum>(const <AccountResponseDtoAssetSubClassEnum>[
  _$accountResponseDtoAssetSubClassEnum_DEPOSIT,
  _$accountResponseDtoAssetSubClassEnum_CASH,
  _$accountResponseDtoAssetSubClassEnum_MONEY_MARKET_FUND,
  _$accountResponseDtoAssetSubClassEnum_STOCK,
  _$accountResponseDtoAssetSubClassEnum_ETF,
  _$accountResponseDtoAssetSubClassEnum_MUTUAL_FUND,
  _$accountResponseDtoAssetSubClassEnum_EQUITY_COMPENSATION,
  _$accountResponseDtoAssetSubClassEnum_GOVERNMENT_BOND,
  _$accountResponseDtoAssetSubClassEnum_CORPORATE_BOND,
  _$accountResponseDtoAssetSubClassEnum_BOND_FUND,
  _$accountResponseDtoAssetSubClassEnum_PRIMARY_RESIDENCE,
  _$accountResponseDtoAssetSubClassEnum_INVESTMENT_PROPERTY,
  _$accountResponseDtoAssetSubClassEnum_REIT,
  _$accountResponseDtoAssetSubClassEnum_GOLD,
  _$accountResponseDtoAssetSubClassEnum_SILVER,
  _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL,
  _$accountResponseDtoAssetSubClassEnum_PRECIOUS_METAL_FUND,
  _$accountResponseDtoAssetSubClassEnum_COMMODITY,
  _$accountResponseDtoAssetSubClassEnum_COMMODITY_FUND,
  _$accountResponseDtoAssetSubClassEnum_CRYPTOCURRENCY,
  _$accountResponseDtoAssetSubClassEnum_RETIREMENT_ACCOUNT,
  _$accountResponseDtoAssetSubClassEnum_HEALTH_ACCOUNT,
  _$accountResponseDtoAssetSubClassEnum_EDUCATION_ACCOUNT,
  _$accountResponseDtoAssetSubClassEnum_INSURANCE,
  _$accountResponseDtoAssetSubClassEnum_PRIVATE_EQUITY,
  _$accountResponseDtoAssetSubClassEnum_HEDGE_FUND,
  _$accountResponseDtoAssetSubClassEnum_COLLECTIBLES,
  _$accountResponseDtoAssetSubClassEnum_MORTGAGE,
  _$accountResponseDtoAssetSubClassEnum_STUDENT_LOAN,
  _$accountResponseDtoAssetSubClassEnum_CREDIT_CARD,
  _$accountResponseDtoAssetSubClassEnum_PERSONAL_LOAN,
  _$accountResponseDtoAssetSubClassEnum_ACCOUNTS_PAYABLE,
  _$accountResponseDtoAssetSubClassEnum_TAX_PAYABLE,
  _$accountResponseDtoAssetSubClassEnum_OTHER,
]);

const AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnum_OPEN =
    const AccountResponseDtoStatusEnum._('OPEN');
const AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnum_CLOSED =
    const AccountResponseDtoStatusEnum._('CLOSED');
const AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnum_SUSPENDED =
    const AccountResponseDtoStatusEnum._('SUSPENDED');

AccountResponseDtoStatusEnum _$accountResponseDtoStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'OPEN':
      return _$accountResponseDtoStatusEnum_OPEN;
    case 'CLOSED':
      return _$accountResponseDtoStatusEnum_CLOSED;
    case 'SUSPENDED':
      return _$accountResponseDtoStatusEnum_SUSPENDED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountResponseDtoStatusEnum>
    _$accountResponseDtoStatusEnumValues = new BuiltSet<
        AccountResponseDtoStatusEnum>(const <AccountResponseDtoStatusEnum>[
  _$accountResponseDtoStatusEnum_OPEN,
  _$accountResponseDtoStatusEnum_CLOSED,
  _$accountResponseDtoStatusEnum_SUSPENDED,
]);

const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_FIFO =
    const AccountResponseDtoBookingMethodEnum._('FIFO');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_LIFO =
    const AccountResponseDtoBookingMethodEnum._('LIFO');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_HIFO =
    const AccountResponseDtoBookingMethodEnum._('HIFO');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_AVERAGE =
    const AccountResponseDtoBookingMethodEnum._('AVERAGE');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_STRICT =
    const AccountResponseDtoBookingMethodEnum._('STRICT');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE =
    const AccountResponseDtoBookingMethodEnum._('STRICT_WITH_SIZE');
const AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnum_NONE =
    const AccountResponseDtoBookingMethodEnum._('NONE');

AccountResponseDtoBookingMethodEnum
    _$accountResponseDtoBookingMethodEnumValueOf(String name) {
  switch (name) {
    case 'FIFO':
      return _$accountResponseDtoBookingMethodEnum_FIFO;
    case 'LIFO':
      return _$accountResponseDtoBookingMethodEnum_LIFO;
    case 'HIFO':
      return _$accountResponseDtoBookingMethodEnum_HIFO;
    case 'AVERAGE':
      return _$accountResponseDtoBookingMethodEnum_AVERAGE;
    case 'STRICT':
      return _$accountResponseDtoBookingMethodEnum_STRICT;
    case 'STRICT_WITH_SIZE':
      return _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE;
    case 'NONE':
      return _$accountResponseDtoBookingMethodEnum_NONE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountResponseDtoBookingMethodEnum>
    _$accountResponseDtoBookingMethodEnumValues = new BuiltSet<
        AccountResponseDtoBookingMethodEnum>(const <AccountResponseDtoBookingMethodEnum>[
  _$accountResponseDtoBookingMethodEnum_FIFO,
  _$accountResponseDtoBookingMethodEnum_LIFO,
  _$accountResponseDtoBookingMethodEnum_HIFO,
  _$accountResponseDtoBookingMethodEnum_AVERAGE,
  _$accountResponseDtoBookingMethodEnum_STRICT,
  _$accountResponseDtoBookingMethodEnum_STRICT_WITH_SIZE,
  _$accountResponseDtoBookingMethodEnum_NONE,
]);

Serializer<AccountResponseDtoTypeEnum> _$accountResponseDtoTypeEnumSerializer =
    new _$AccountResponseDtoTypeEnumSerializer();
Serializer<AccountResponseDtoAssetSubClassEnum>
    _$accountResponseDtoAssetSubClassEnumSerializer =
    new _$AccountResponseDtoAssetSubClassEnumSerializer();
Serializer<AccountResponseDtoStatusEnum>
    _$accountResponseDtoStatusEnumSerializer =
    new _$AccountResponseDtoStatusEnumSerializer();
Serializer<AccountResponseDtoBookingMethodEnum>
    _$accountResponseDtoBookingMethodEnumSerializer =
    new _$AccountResponseDtoBookingMethodEnumSerializer();

class _$AccountResponseDtoTypeEnumSerializer
    implements PrimitiveSerializer<AccountResponseDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'assets': 'Assets',
    'liabilities': 'Liabilities',
    'income': 'Income',
    'expenses': 'Expenses',
    'equity': 'Equity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Assets': 'assets',
    'Liabilities': 'liabilities',
    'Income': 'income',
    'Expenses': 'expenses',
    'Equity': 'equity',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountResponseDtoTypeEnum];
  @override
  final String wireName = 'AccountResponseDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, AccountResponseDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountResponseDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountResponseDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountResponseDtoAssetSubClassEnumSerializer
    implements PrimitiveSerializer<AccountResponseDtoAssetSubClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEPOSIT': 'DEPOSIT',
    'CASH': 'CASH',
    'MONEY_MARKET_FUND': 'MONEY_MARKET_FUND',
    'STOCK': 'STOCK',
    'ETF': 'ETF',
    'MUTUAL_FUND': 'MUTUAL_FUND',
    'EQUITY_COMPENSATION': 'EQUITY_COMPENSATION',
    'GOVERNMENT_BOND': 'GOVERNMENT_BOND',
    'CORPORATE_BOND': 'CORPORATE_BOND',
    'BOND_FUND': 'BOND_FUND',
    'PRIMARY_RESIDENCE': 'PRIMARY_RESIDENCE',
    'INVESTMENT_PROPERTY': 'INVESTMENT_PROPERTY',
    'REIT': 'REIT',
    'GOLD': 'GOLD',
    'SILVER': 'SILVER',
    'PRECIOUS_METAL': 'PRECIOUS_METAL',
    'PRECIOUS_METAL_FUND': 'PRECIOUS_METAL_FUND',
    'COMMODITY': 'COMMODITY',
    'COMMODITY_FUND': 'COMMODITY_FUND',
    'CRYPTOCURRENCY': 'CRYPTOCURRENCY',
    'RETIREMENT_ACCOUNT': 'RETIREMENT_ACCOUNT',
    'HEALTH_ACCOUNT': 'HEALTH_ACCOUNT',
    'EDUCATION_ACCOUNT': 'EDUCATION_ACCOUNT',
    'INSURANCE': 'INSURANCE',
    'PRIVATE_EQUITY': 'PRIVATE_EQUITY',
    'HEDGE_FUND': 'HEDGE_FUND',
    'COLLECTIBLES': 'COLLECTIBLES',
    'MORTGAGE': 'MORTGAGE',
    'STUDENT_LOAN': 'STUDENT_LOAN',
    'CREDIT_CARD': 'CREDIT_CARD',
    'PERSONAL_LOAN': 'PERSONAL_LOAN',
    'ACCOUNTS_PAYABLE': 'ACCOUNTS_PAYABLE',
    'TAX_PAYABLE': 'TAX_PAYABLE',
    'OTHER': 'OTHER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEPOSIT': 'DEPOSIT',
    'CASH': 'CASH',
    'MONEY_MARKET_FUND': 'MONEY_MARKET_FUND',
    'STOCK': 'STOCK',
    'ETF': 'ETF',
    'MUTUAL_FUND': 'MUTUAL_FUND',
    'EQUITY_COMPENSATION': 'EQUITY_COMPENSATION',
    'GOVERNMENT_BOND': 'GOVERNMENT_BOND',
    'CORPORATE_BOND': 'CORPORATE_BOND',
    'BOND_FUND': 'BOND_FUND',
    'PRIMARY_RESIDENCE': 'PRIMARY_RESIDENCE',
    'INVESTMENT_PROPERTY': 'INVESTMENT_PROPERTY',
    'REIT': 'REIT',
    'GOLD': 'GOLD',
    'SILVER': 'SILVER',
    'PRECIOUS_METAL': 'PRECIOUS_METAL',
    'PRECIOUS_METAL_FUND': 'PRECIOUS_METAL_FUND',
    'COMMODITY': 'COMMODITY',
    'COMMODITY_FUND': 'COMMODITY_FUND',
    'CRYPTOCURRENCY': 'CRYPTOCURRENCY',
    'RETIREMENT_ACCOUNT': 'RETIREMENT_ACCOUNT',
    'HEALTH_ACCOUNT': 'HEALTH_ACCOUNT',
    'EDUCATION_ACCOUNT': 'EDUCATION_ACCOUNT',
    'INSURANCE': 'INSURANCE',
    'PRIVATE_EQUITY': 'PRIVATE_EQUITY',
    'HEDGE_FUND': 'HEDGE_FUND',
    'COLLECTIBLES': 'COLLECTIBLES',
    'MORTGAGE': 'MORTGAGE',
    'STUDENT_LOAN': 'STUDENT_LOAN',
    'CREDIT_CARD': 'CREDIT_CARD',
    'PERSONAL_LOAN': 'PERSONAL_LOAN',
    'ACCOUNTS_PAYABLE': 'ACCOUNTS_PAYABLE',
    'TAX_PAYABLE': 'TAX_PAYABLE',
    'OTHER': 'OTHER',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AccountResponseDtoAssetSubClassEnum
  ];
  @override
  final String wireName = 'AccountResponseDtoAssetSubClassEnum';

  @override
  Object serialize(
          Serializers serializers, AccountResponseDtoAssetSubClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountResponseDtoAssetSubClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountResponseDtoAssetSubClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountResponseDtoStatusEnumSerializer
    implements PrimitiveSerializer<AccountResponseDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPEN': 'OPEN',
    'CLOSED': 'CLOSED',
    'SUSPENDED': 'SUSPENDED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN': 'OPEN',
    'CLOSED': 'CLOSED',
    'SUSPENDED': 'SUSPENDED',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountResponseDtoStatusEnum];
  @override
  final String wireName = 'AccountResponseDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, AccountResponseDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountResponseDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountResponseDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountResponseDtoBookingMethodEnumSerializer
    implements PrimitiveSerializer<AccountResponseDtoBookingMethodEnum> {
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
  final Iterable<Type> types = const <Type>[
    AccountResponseDtoBookingMethodEnum
  ];
  @override
  final String wireName = 'AccountResponseDtoBookingMethodEnum';

  @override
  Object serialize(
          Serializers serializers, AccountResponseDtoBookingMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountResponseDtoBookingMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountResponseDtoBookingMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountResponseDto extends AccountResponseDto {
  @override
  final String id;
  @override
  final String path;
  @override
  final AccountResponseDtoTypeEnum type;
  @override
  final AccountResponseDtoAssetSubClassEnum? assetSubClass;
  @override
  final AccountResponseDtoStatusEnum status;
  @override
  final String openDate;
  @override
  final String? closeDate;
  @override
  final BuiltList<String>? currencies;
  @override
  final AccountResponseDtoBookingMethodEnum bookingMethod;
  @override
  final String? templatePath;
  @override
  final bool isCustom;
  @override
  final String? displayName;
  @override
  final String? icon;
  @override
  final JsonObject? openDirectiveMeta;
  @override
  final JsonObject? platformId;
  @override
  final JsonObject? platform;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$AccountResponseDto(
          [void Function(AccountResponseDtoBuilder)? updates]) =>
      (new AccountResponseDtoBuilder()..update(updates))._build();

  _$AccountResponseDto._(
      {required this.id,
      required this.path,
      required this.type,
      this.assetSubClass,
      required this.status,
      required this.openDate,
      this.closeDate,
      this.currencies,
      required this.bookingMethod,
      this.templatePath,
      required this.isCustom,
      this.displayName,
      this.icon,
      this.openDirectiveMeta,
      this.platformId,
      this.platform,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AccountResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(path, r'AccountResponseDto', 'path');
    BuiltValueNullFieldError.checkNotNull(type, r'AccountResponseDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        status, r'AccountResponseDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        openDate, r'AccountResponseDto', 'openDate');
    BuiltValueNullFieldError.checkNotNull(
        bookingMethod, r'AccountResponseDto', 'bookingMethod');
    BuiltValueNullFieldError.checkNotNull(
        isCustom, r'AccountResponseDto', 'isCustom');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'AccountResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'AccountResponseDto', 'updatedAt');
  }

  @override
  AccountResponseDto rebuild(
          void Function(AccountResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountResponseDtoBuilder toBuilder() =>
      new AccountResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountResponseDto &&
        id == other.id &&
        path == other.path &&
        type == other.type &&
        assetSubClass == other.assetSubClass &&
        status == other.status &&
        openDate == other.openDate &&
        closeDate == other.closeDate &&
        currencies == other.currencies &&
        bookingMethod == other.bookingMethod &&
        templatePath == other.templatePath &&
        isCustom == other.isCustom &&
        displayName == other.displayName &&
        icon == other.icon &&
        openDirectiveMeta == other.openDirectiveMeta &&
        platformId == other.platformId &&
        platform == other.platform &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, assetSubClass.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, openDate.hashCode);
    _$hash = $jc(_$hash, closeDate.hashCode);
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jc(_$hash, bookingMethod.hashCode);
    _$hash = $jc(_$hash, templatePath.hashCode);
    _$hash = $jc(_$hash, isCustom.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, openDirectiveMeta.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountResponseDto')
          ..add('id', id)
          ..add('path', path)
          ..add('type', type)
          ..add('assetSubClass', assetSubClass)
          ..add('status', status)
          ..add('openDate', openDate)
          ..add('closeDate', closeDate)
          ..add('currencies', currencies)
          ..add('bookingMethod', bookingMethod)
          ..add('templatePath', templatePath)
          ..add('isCustom', isCustom)
          ..add('displayName', displayName)
          ..add('icon', icon)
          ..add('openDirectiveMeta', openDirectiveMeta)
          ..add('platformId', platformId)
          ..add('platform', platform)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AccountResponseDtoBuilder
    implements Builder<AccountResponseDto, AccountResponseDtoBuilder> {
  _$AccountResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  AccountResponseDtoTypeEnum? _type;
  AccountResponseDtoTypeEnum? get type => _$this._type;
  set type(AccountResponseDtoTypeEnum? type) => _$this._type = type;

  AccountResponseDtoAssetSubClassEnum? _assetSubClass;
  AccountResponseDtoAssetSubClassEnum? get assetSubClass =>
      _$this._assetSubClass;
  set assetSubClass(AccountResponseDtoAssetSubClassEnum? assetSubClass) =>
      _$this._assetSubClass = assetSubClass;

  AccountResponseDtoStatusEnum? _status;
  AccountResponseDtoStatusEnum? get status => _$this._status;
  set status(AccountResponseDtoStatusEnum? status) => _$this._status = status;

  String? _openDate;
  String? get openDate => _$this._openDate;
  set openDate(String? openDate) => _$this._openDate = openDate;

  String? _closeDate;
  String? get closeDate => _$this._closeDate;
  set closeDate(String? closeDate) => _$this._closeDate = closeDate;

  ListBuilder<String>? _currencies;
  ListBuilder<String> get currencies =>
      _$this._currencies ??= new ListBuilder<String>();
  set currencies(ListBuilder<String>? currencies) =>
      _$this._currencies = currencies;

  AccountResponseDtoBookingMethodEnum? _bookingMethod;
  AccountResponseDtoBookingMethodEnum? get bookingMethod =>
      _$this._bookingMethod;
  set bookingMethod(AccountResponseDtoBookingMethodEnum? bookingMethod) =>
      _$this._bookingMethod = bookingMethod;

  String? _templatePath;
  String? get templatePath => _$this._templatePath;
  set templatePath(String? templatePath) => _$this._templatePath = templatePath;

  bool? _isCustom;
  bool? get isCustom => _$this._isCustom;
  set isCustom(bool? isCustom) => _$this._isCustom = isCustom;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  JsonObject? _openDirectiveMeta;
  JsonObject? get openDirectiveMeta => _$this._openDirectiveMeta;
  set openDirectiveMeta(JsonObject? openDirectiveMeta) =>
      _$this._openDirectiveMeta = openDirectiveMeta;

  JsonObject? _platformId;
  JsonObject? get platformId => _$this._platformId;
  set platformId(JsonObject? platformId) => _$this._platformId = platformId;

  JsonObject? _platform;
  JsonObject? get platform => _$this._platform;
  set platform(JsonObject? platform) => _$this._platform = platform;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  AccountResponseDtoBuilder() {
    AccountResponseDto._defaults(this);
  }

  AccountResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _type = $v.type;
      _assetSubClass = $v.assetSubClass;
      _status = $v.status;
      _openDate = $v.openDate;
      _closeDate = $v.closeDate;
      _currencies = $v.currencies?.toBuilder();
      _bookingMethod = $v.bookingMethod;
      _templatePath = $v.templatePath;
      _isCustom = $v.isCustom;
      _displayName = $v.displayName;
      _icon = $v.icon;
      _openDirectiveMeta = $v.openDirectiveMeta;
      _platformId = $v.platformId;
      _platform = $v.platform;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountResponseDto;
  }

  @override
  void update(void Function(AccountResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountResponseDto build() => _build();

  _$AccountResponseDto _build() {
    _$AccountResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AccountResponseDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AccountResponseDto', 'id'),
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'AccountResponseDto', 'path'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'AccountResponseDto', 'type'),
              assetSubClass: assetSubClass,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'AccountResponseDto', 'status'),
              openDate: BuiltValueNullFieldError.checkNotNull(
                  openDate, r'AccountResponseDto', 'openDate'),
              closeDate: closeDate,
              currencies: _currencies?.build(),
              bookingMethod: BuiltValueNullFieldError.checkNotNull(
                  bookingMethod, r'AccountResponseDto', 'bookingMethod'),
              templatePath: templatePath,
              isCustom: BuiltValueNullFieldError.checkNotNull(
                  isCustom, r'AccountResponseDto', 'isCustom'),
              displayName: displayName,
              icon: icon,
              openDirectiveMeta: openDirectiveMeta,
              platformId: platformId,
              platform: platform,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'AccountResponseDto', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, r'AccountResponseDto', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        _currencies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
