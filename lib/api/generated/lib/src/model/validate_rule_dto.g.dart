// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_rule_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ValidateRuleDtoMatchLogicEnum _$validateRuleDtoMatchLogicEnum_OR =
    const ValidateRuleDtoMatchLogicEnum._('OR');
const ValidateRuleDtoMatchLogicEnum _$validateRuleDtoMatchLogicEnum_AND =
    const ValidateRuleDtoMatchLogicEnum._('AND');

ValidateRuleDtoMatchLogicEnum _$validateRuleDtoMatchLogicEnumValueOf(
    String name) {
  switch (name) {
    case 'OR':
      return _$validateRuleDtoMatchLogicEnum_OR;
    case 'AND':
      return _$validateRuleDtoMatchLogicEnum_AND;
    default:
      return _$validateRuleDtoMatchLogicEnum_AND;
  }
}

final BuiltSet<ValidateRuleDtoMatchLogicEnum>
    _$validateRuleDtoMatchLogicEnumValues = new BuiltSet<
        ValidateRuleDtoMatchLogicEnum>(const <ValidateRuleDtoMatchLogicEnum>[
  _$validateRuleDtoMatchLogicEnum_OR,
  _$validateRuleDtoMatchLogicEnum_AND,
]);

Serializer<ValidateRuleDtoMatchLogicEnum>
    _$validateRuleDtoMatchLogicEnumSerializer =
    new _$ValidateRuleDtoMatchLogicEnumSerializer();

class _$ValidateRuleDtoMatchLogicEnumSerializer
    implements PrimitiveSerializer<ValidateRuleDtoMatchLogicEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OR': 'OR',
    'AND': 'AND',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OR': 'OR',
    'AND': 'AND',
  };

  @override
  final Iterable<Type> types = const <Type>[ValidateRuleDtoMatchLogicEnum];
  @override
  final String wireName = 'ValidateRuleDtoMatchLogicEnum';

  @override
  Object serialize(
          Serializers serializers, ValidateRuleDtoMatchLogicEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ValidateRuleDtoMatchLogicEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ValidateRuleDtoMatchLogicEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ValidateRuleDto extends ValidateRuleDto {
  @override
  final String name;
  @override
  final ValidateRuleDtoMatchLogicEnum matchLogic;
  @override
  final num priority;
  @override
  final String? description;
  @override
  final BuiltList<BuiltList<dynamic>>? narrationKeywords;
  @override
  final BuiltList<BuiltList<dynamic>>? payeeKeywords;
  @override
  final BuiltList<BuiltList<dynamic>>? categoryKeywords;
  @override
  final BuiltList<BuiltList<dynamic>>? methodKeywords;
  @override
  final String? categoryAccount;
  @override
  final num? amountMin;
  @override
  final num? amountMax;
  @override
  final BuiltList<BuiltList<dynamic>>? additionalTags;
  @override
  final JsonObject? additionalMetadata;
  @override
  final bool? upsertByPayee;

  factory _$ValidateRuleDto([void Function(ValidateRuleDtoBuilder)? updates]) =>
      (new ValidateRuleDtoBuilder()..update(updates))._build();

  _$ValidateRuleDto._(
      {required this.name,
      required this.matchLogic,
      required this.priority,
      this.description,
      this.narrationKeywords,
      this.payeeKeywords,
      this.categoryKeywords,
      this.methodKeywords,
      this.categoryAccount,
      this.amountMin,
      this.amountMax,
      this.additionalTags,
      this.additionalMetadata,
      this.upsertByPayee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ValidateRuleDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        matchLogic, r'ValidateRuleDto', 'matchLogic');
    BuiltValueNullFieldError.checkNotNull(
        priority, r'ValidateRuleDto', 'priority');
  }

  @override
  ValidateRuleDto rebuild(void Function(ValidateRuleDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateRuleDtoBuilder toBuilder() =>
      new ValidateRuleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateRuleDto &&
        name == other.name &&
        matchLogic == other.matchLogic &&
        priority == other.priority &&
        description == other.description &&
        narrationKeywords == other.narrationKeywords &&
        payeeKeywords == other.payeeKeywords &&
        categoryKeywords == other.categoryKeywords &&
        methodKeywords == other.methodKeywords &&
        categoryAccount == other.categoryAccount &&
        amountMin == other.amountMin &&
        amountMax == other.amountMax &&
        additionalTags == other.additionalTags &&
        additionalMetadata == other.additionalMetadata &&
        upsertByPayee == other.upsertByPayee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, matchLogic.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, narrationKeywords.hashCode);
    _$hash = $jc(_$hash, payeeKeywords.hashCode);
    _$hash = $jc(_$hash, categoryKeywords.hashCode);
    _$hash = $jc(_$hash, methodKeywords.hashCode);
    _$hash = $jc(_$hash, categoryAccount.hashCode);
    _$hash = $jc(_$hash, amountMin.hashCode);
    _$hash = $jc(_$hash, amountMax.hashCode);
    _$hash = $jc(_$hash, additionalTags.hashCode);
    _$hash = $jc(_$hash, additionalMetadata.hashCode);
    _$hash = $jc(_$hash, upsertByPayee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidateRuleDto')
          ..add('name', name)
          ..add('matchLogic', matchLogic)
          ..add('priority', priority)
          ..add('description', description)
          ..add('narrationKeywords', narrationKeywords)
          ..add('payeeKeywords', payeeKeywords)
          ..add('categoryKeywords', categoryKeywords)
          ..add('methodKeywords', methodKeywords)
          ..add('categoryAccount', categoryAccount)
          ..add('amountMin', amountMin)
          ..add('amountMax', amountMax)
          ..add('additionalTags', additionalTags)
          ..add('additionalMetadata', additionalMetadata)
          ..add('upsertByPayee', upsertByPayee))
        .toString();
  }
}

class ValidateRuleDtoBuilder
    implements Builder<ValidateRuleDto, ValidateRuleDtoBuilder> {
  _$ValidateRuleDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ValidateRuleDtoMatchLogicEnum? _matchLogic;
  ValidateRuleDtoMatchLogicEnum? get matchLogic => _$this._matchLogic;
  set matchLogic(ValidateRuleDtoMatchLogicEnum? matchLogic) =>
      _$this._matchLogic = matchLogic;

  num? _priority;
  num? get priority => _$this._priority;
  set priority(num? priority) => _$this._priority = priority;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<BuiltList<dynamic>>? _narrationKeywords;
  ListBuilder<BuiltList<dynamic>> get narrationKeywords =>
      _$this._narrationKeywords ??= new ListBuilder<BuiltList<dynamic>>();
  set narrationKeywords(ListBuilder<BuiltList<dynamic>>? narrationKeywords) =>
      _$this._narrationKeywords = narrationKeywords;

  ListBuilder<BuiltList<dynamic>>? _payeeKeywords;
  ListBuilder<BuiltList<dynamic>> get payeeKeywords =>
      _$this._payeeKeywords ??= new ListBuilder<BuiltList<dynamic>>();
  set payeeKeywords(ListBuilder<BuiltList<dynamic>>? payeeKeywords) =>
      _$this._payeeKeywords = payeeKeywords;

  ListBuilder<BuiltList<dynamic>>? _categoryKeywords;
  ListBuilder<BuiltList<dynamic>> get categoryKeywords =>
      _$this._categoryKeywords ??= new ListBuilder<BuiltList<dynamic>>();
  set categoryKeywords(ListBuilder<BuiltList<dynamic>>? categoryKeywords) =>
      _$this._categoryKeywords = categoryKeywords;

  ListBuilder<BuiltList<dynamic>>? _methodKeywords;
  ListBuilder<BuiltList<dynamic>> get methodKeywords =>
      _$this._methodKeywords ??= new ListBuilder<BuiltList<dynamic>>();
  set methodKeywords(ListBuilder<BuiltList<dynamic>>? methodKeywords) =>
      _$this._methodKeywords = methodKeywords;

  String? _categoryAccount;
  String? get categoryAccount => _$this._categoryAccount;
  set categoryAccount(String? categoryAccount) =>
      _$this._categoryAccount = categoryAccount;

  num? _amountMin;
  num? get amountMin => _$this._amountMin;
  set amountMin(num? amountMin) => _$this._amountMin = amountMin;

  num? _amountMax;
  num? get amountMax => _$this._amountMax;
  set amountMax(num? amountMax) => _$this._amountMax = amountMax;

  ListBuilder<BuiltList<dynamic>>? _additionalTags;
  ListBuilder<BuiltList<dynamic>> get additionalTags =>
      _$this._additionalTags ??= new ListBuilder<BuiltList<dynamic>>();
  set additionalTags(ListBuilder<BuiltList<dynamic>>? additionalTags) =>
      _$this._additionalTags = additionalTags;

  JsonObject? _additionalMetadata;
  JsonObject? get additionalMetadata => _$this._additionalMetadata;
  set additionalMetadata(JsonObject? additionalMetadata) =>
      _$this._additionalMetadata = additionalMetadata;

  bool? _upsertByPayee;
  bool? get upsertByPayee => _$this._upsertByPayee;
  set upsertByPayee(bool? upsertByPayee) =>
      _$this._upsertByPayee = upsertByPayee;

  ValidateRuleDtoBuilder() {
    ValidateRuleDto._defaults(this);
  }

  ValidateRuleDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _matchLogic = $v.matchLogic;
      _priority = $v.priority;
      _description = $v.description;
      _narrationKeywords = $v.narrationKeywords?.toBuilder();
      _payeeKeywords = $v.payeeKeywords?.toBuilder();
      _categoryKeywords = $v.categoryKeywords?.toBuilder();
      _methodKeywords = $v.methodKeywords?.toBuilder();
      _categoryAccount = $v.categoryAccount;
      _amountMin = $v.amountMin;
      _amountMax = $v.amountMax;
      _additionalTags = $v.additionalTags?.toBuilder();
      _additionalMetadata = $v.additionalMetadata;
      _upsertByPayee = $v.upsertByPayee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateRuleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateRuleDto;
  }

  @override
  void update(void Function(ValidateRuleDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateRuleDto build() => _build();

  _$ValidateRuleDto _build() {
    _$ValidateRuleDto _$result;
    try {
      _$result = _$v ??
          new _$ValidateRuleDto._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'ValidateRuleDto', 'name'),
              matchLogic: BuiltValueNullFieldError.checkNotNull(
                  matchLogic, r'ValidateRuleDto', 'matchLogic'),
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority, r'ValidateRuleDto', 'priority'),
              description: description,
              narrationKeywords: _narrationKeywords?.build(),
              payeeKeywords: _payeeKeywords?.build(),
              categoryKeywords: _categoryKeywords?.build(),
              methodKeywords: _methodKeywords?.build(),
              categoryAccount: categoryAccount,
              amountMin: amountMin,
              amountMax: amountMax,
              additionalTags: _additionalTags?.build(),
              additionalMetadata: additionalMetadata,
              upsertByPayee: upsertByPayee);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'narrationKeywords';
        _narrationKeywords?.build();
        _$failedField = 'payeeKeywords';
        _payeeKeywords?.build();
        _$failedField = 'categoryKeywords';
        _categoryKeywords?.build();
        _$failedField = 'methodKeywords';
        _methodKeywords?.build();

        _$failedField = 'additionalTags';
        _additionalTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ValidateRuleDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
