// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_catalog_entry_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CategoryCatalogEntryDtoScenarioEnum
    _$categoryCatalogEntryDtoScenarioEnum_expense =
    const CategoryCatalogEntryDtoScenarioEnum._('expense');
const CategoryCatalogEntryDtoScenarioEnum
    _$categoryCatalogEntryDtoScenarioEnum_income =
    const CategoryCatalogEntryDtoScenarioEnum._('income');
const CategoryCatalogEntryDtoScenarioEnum
    _$categoryCatalogEntryDtoScenarioEnum_investment =
    const CategoryCatalogEntryDtoScenarioEnum._('investment');
const CategoryCatalogEntryDtoScenarioEnum
    _$categoryCatalogEntryDtoScenarioEnum_banking =
    const CategoryCatalogEntryDtoScenarioEnum._('banking');
const CategoryCatalogEntryDtoScenarioEnum
    _$categoryCatalogEntryDtoScenarioEnum_transfer =
    const CategoryCatalogEntryDtoScenarioEnum._('transfer');
const CategoryCatalogEntryDtoScenarioEnum
    _$categoryCatalogEntryDtoScenarioEnum_payment =
    const CategoryCatalogEntryDtoScenarioEnum._('payment');

CategoryCatalogEntryDtoScenarioEnum
    _$categoryCatalogEntryDtoScenarioEnumValueOf(String name) {
  switch (name) {
    case 'expense':
      return _$categoryCatalogEntryDtoScenarioEnum_expense;
    case 'income':
      return _$categoryCatalogEntryDtoScenarioEnum_income;
    case 'investment':
      return _$categoryCatalogEntryDtoScenarioEnum_investment;
    case 'banking':
      return _$categoryCatalogEntryDtoScenarioEnum_banking;
    case 'transfer':
      return _$categoryCatalogEntryDtoScenarioEnum_transfer;
    case 'payment':
      return _$categoryCatalogEntryDtoScenarioEnum_payment;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CategoryCatalogEntryDtoScenarioEnum>
    _$categoryCatalogEntryDtoScenarioEnumValues = new BuiltSet<
        CategoryCatalogEntryDtoScenarioEnum>(const <CategoryCatalogEntryDtoScenarioEnum>[
  _$categoryCatalogEntryDtoScenarioEnum_expense,
  _$categoryCatalogEntryDtoScenarioEnum_income,
  _$categoryCatalogEntryDtoScenarioEnum_investment,
  _$categoryCatalogEntryDtoScenarioEnum_banking,
  _$categoryCatalogEntryDtoScenarioEnum_transfer,
  _$categoryCatalogEntryDtoScenarioEnum_payment,
]);

Serializer<CategoryCatalogEntryDtoScenarioEnum>
    _$categoryCatalogEntryDtoScenarioEnumSerializer =
    new _$CategoryCatalogEntryDtoScenarioEnumSerializer();

class _$CategoryCatalogEntryDtoScenarioEnumSerializer
    implements PrimitiveSerializer<CategoryCatalogEntryDtoScenarioEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'expense': 'expense',
    'income': 'income',
    'investment': 'investment',
    'banking': 'banking',
    'transfer': 'transfer',
    'payment': 'payment',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'expense': 'expense',
    'income': 'income',
    'investment': 'investment',
    'banking': 'banking',
    'transfer': 'transfer',
    'payment': 'payment',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CategoryCatalogEntryDtoScenarioEnum
  ];
  @override
  final String wireName = 'CategoryCatalogEntryDtoScenarioEnum';

  @override
  Object serialize(
          Serializers serializers, CategoryCatalogEntryDtoScenarioEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CategoryCatalogEntryDtoScenarioEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CategoryCatalogEntryDtoScenarioEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CategoryCatalogEntryDto extends CategoryCatalogEntryDto {
  @override
  final String slug;
  @override
  final CategoryCatalogEntryDtoScenarioEnum scenario;
  @override
  final String icon;
  @override
  final BuiltList<String> regions;

  factory _$CategoryCatalogEntryDto(
          [void Function(CategoryCatalogEntryDtoBuilder)? updates]) =>
      (new CategoryCatalogEntryDtoBuilder()..update(updates))._build();

  _$CategoryCatalogEntryDto._(
      {required this.slug,
      required this.scenario,
      required this.icon,
      required this.regions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        slug, r'CategoryCatalogEntryDto', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        scenario, r'CategoryCatalogEntryDto', 'scenario');
    BuiltValueNullFieldError.checkNotNull(
        icon, r'CategoryCatalogEntryDto', 'icon');
    BuiltValueNullFieldError.checkNotNull(
        regions, r'CategoryCatalogEntryDto', 'regions');
  }

  @override
  CategoryCatalogEntryDto rebuild(
          void Function(CategoryCatalogEntryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryCatalogEntryDtoBuilder toBuilder() =>
      new CategoryCatalogEntryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryCatalogEntryDto &&
        slug == other.slug &&
        scenario == other.scenario &&
        icon == other.icon &&
        regions == other.regions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, scenario.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryCatalogEntryDto')
          ..add('slug', slug)
          ..add('scenario', scenario)
          ..add('icon', icon)
          ..add('regions', regions))
        .toString();
  }
}

class CategoryCatalogEntryDtoBuilder
    implements
        Builder<CategoryCatalogEntryDto, CategoryCatalogEntryDtoBuilder> {
  _$CategoryCatalogEntryDto? _$v;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  CategoryCatalogEntryDtoScenarioEnum? _scenario;
  CategoryCatalogEntryDtoScenarioEnum? get scenario => _$this._scenario;
  set scenario(CategoryCatalogEntryDtoScenarioEnum? scenario) =>
      _$this._scenario = scenario;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  ListBuilder<String>? _regions;
  ListBuilder<String> get regions =>
      _$this._regions ??= new ListBuilder<String>();
  set regions(ListBuilder<String>? regions) => _$this._regions = regions;

  CategoryCatalogEntryDtoBuilder() {
    CategoryCatalogEntryDto._defaults(this);
  }

  CategoryCatalogEntryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slug = $v.slug;
      _scenario = $v.scenario;
      _icon = $v.icon;
      _regions = $v.regions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryCatalogEntryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryCatalogEntryDto;
  }

  @override
  void update(void Function(CategoryCatalogEntryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryCatalogEntryDto build() => _build();

  _$CategoryCatalogEntryDto _build() {
    _$CategoryCatalogEntryDto _$result;
    try {
      _$result = _$v ??
          new _$CategoryCatalogEntryDto._(
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, r'CategoryCatalogEntryDto', 'slug'),
              scenario: BuiltValueNullFieldError.checkNotNull(
                  scenario, r'CategoryCatalogEntryDto', 'scenario'),
              icon: BuiltValueNullFieldError.checkNotNull(
                  icon, r'CategoryCatalogEntryDto', 'icon'),
              regions: regions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regions';
        regions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoryCatalogEntryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
