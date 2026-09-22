// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_transaction_rule_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateTransactionRuleDtoMatchLogicEnum
    _$updateTransactionRuleDtoMatchLogicEnum_OR =
    const UpdateTransactionRuleDtoMatchLogicEnum._('OR');
const UpdateTransactionRuleDtoMatchLogicEnum
    _$updateTransactionRuleDtoMatchLogicEnum_AND =
    const UpdateTransactionRuleDtoMatchLogicEnum._('AND');

UpdateTransactionRuleDtoMatchLogicEnum
    _$updateTransactionRuleDtoMatchLogicEnumValueOf(String name) {
  switch (name) {
    case 'OR':
      return _$updateTransactionRuleDtoMatchLogicEnum_OR;
    case 'AND':
      return _$updateTransactionRuleDtoMatchLogicEnum_AND;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UpdateTransactionRuleDtoMatchLogicEnum>
    _$updateTransactionRuleDtoMatchLogicEnumValues = new BuiltSet<
        UpdateTransactionRuleDtoMatchLogicEnum>(const <UpdateTransactionRuleDtoMatchLogicEnum>[
  _$updateTransactionRuleDtoMatchLogicEnum_OR,
  _$updateTransactionRuleDtoMatchLogicEnum_AND,
]);

Serializer<UpdateTransactionRuleDtoMatchLogicEnum>
    _$updateTransactionRuleDtoMatchLogicEnumSerializer =
    new _$UpdateTransactionRuleDtoMatchLogicEnumSerializer();

class _$UpdateTransactionRuleDtoMatchLogicEnumSerializer
    implements PrimitiveSerializer<UpdateTransactionRuleDtoMatchLogicEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OR': 'OR',
    'AND': 'AND',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OR': 'OR',
    'AND': 'AND',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UpdateTransactionRuleDtoMatchLogicEnum
  ];
  @override
  final String wireName = 'UpdateTransactionRuleDtoMatchLogicEnum';

  @override
  Object serialize(Serializers serializers,
          UpdateTransactionRuleDtoMatchLogicEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateTransactionRuleDtoMatchLogicEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateTransactionRuleDtoMatchLogicEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateTransactionRuleDto extends UpdateTransactionRuleDto {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final BuiltList<String>? narrationKeywords;
  @override
  final BuiltList<String>? payeeKeywords;
  @override
  final BuiltList<String>? categoryKeywords;
  @override
  final BuiltList<String>? methodKeywords;
  @override
  final String? categoryAccount;
  @override
  final UpdateTransactionRuleDtoMatchLogicEnum? matchLogic;
  @override
  final num? amountMin;
  @override
  final num? amountMax;
  @override
  final num? priority;
  @override
  final BuiltList<String>? additionalTags;
  @override
  final JsonObject? additionalMetadata;
  @override
  final bool? enabled;

  factory _$UpdateTransactionRuleDto(
          [void Function(UpdateTransactionRuleDtoBuilder)? updates]) =>
      (new UpdateTransactionRuleDtoBuilder()..update(updates))._build();

  _$UpdateTransactionRuleDto._(
      {this.name,
      this.description,
      this.narrationKeywords,
      this.payeeKeywords,
      this.categoryKeywords,
      this.methodKeywords,
      this.categoryAccount,
      this.matchLogic,
      this.amountMin,
      this.amountMax,
      this.priority,
      this.additionalTags,
      this.additionalMetadata,
      this.enabled})
      : super._();

  @override
  UpdateTransactionRuleDto rebuild(
          void Function(UpdateTransactionRuleDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTransactionRuleDtoBuilder toBuilder() =>
      new UpdateTransactionRuleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTransactionRuleDto &&
        name == other.name &&
        description == other.description &&
        narrationKeywords == other.narrationKeywords &&
        payeeKeywords == other.payeeKeywords &&
        categoryKeywords == other.categoryKeywords &&
        methodKeywords == other.methodKeywords &&
        categoryAccount == other.categoryAccount &&
        matchLogic == other.matchLogic &&
        amountMin == other.amountMin &&
        amountMax == other.amountMax &&
        priority == other.priority &&
        additionalTags == other.additionalTags &&
        additionalMetadata == other.additionalMetadata &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, narrationKeywords.hashCode);
    _$hash = $jc(_$hash, payeeKeywords.hashCode);
    _$hash = $jc(_$hash, categoryKeywords.hashCode);
    _$hash = $jc(_$hash, methodKeywords.hashCode);
    _$hash = $jc(_$hash, categoryAccount.hashCode);
    _$hash = $jc(_$hash, matchLogic.hashCode);
    _$hash = $jc(_$hash, amountMin.hashCode);
    _$hash = $jc(_$hash, amountMax.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, additionalTags.hashCode);
    _$hash = $jc(_$hash, additionalMetadata.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTransactionRuleDto')
          ..add('name', name)
          ..add('description', description)
          ..add('narrationKeywords', narrationKeywords)
          ..add('payeeKeywords', payeeKeywords)
          ..add('categoryKeywords', categoryKeywords)
          ..add('methodKeywords', methodKeywords)
          ..add('categoryAccount', categoryAccount)
          ..add('matchLogic', matchLogic)
          ..add('amountMin', amountMin)
          ..add('amountMax', amountMax)
          ..add('priority', priority)
          ..add('additionalTags', additionalTags)
          ..add('additionalMetadata', additionalMetadata)
          ..add('enabled', enabled))
        .toString();
  }
}

class UpdateTransactionRuleDtoBuilder
    implements
        Builder<UpdateTransactionRuleDto, UpdateTransactionRuleDtoBuilder> {
  _$UpdateTransactionRuleDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _narrationKeywords;
  ListBuilder<String> get narrationKeywords =>
      _$this._narrationKeywords ??= new ListBuilder<String>();
  set narrationKeywords(ListBuilder<String>? narrationKeywords) =>
      _$this._narrationKeywords = narrationKeywords;

  ListBuilder<String>? _payeeKeywords;
  ListBuilder<String> get payeeKeywords =>
      _$this._payeeKeywords ??= new ListBuilder<String>();
  set payeeKeywords(ListBuilder<String>? payeeKeywords) =>
      _$this._payeeKeywords = payeeKeywords;

  ListBuilder<String>? _categoryKeywords;
  ListBuilder<String> get categoryKeywords =>
      _$this._categoryKeywords ??= new ListBuilder<String>();
  set categoryKeywords(ListBuilder<String>? categoryKeywords) =>
      _$this._categoryKeywords = categoryKeywords;

  ListBuilder<String>? _methodKeywords;
  ListBuilder<String> get methodKeywords =>
      _$this._methodKeywords ??= new ListBuilder<String>();
  set methodKeywords(ListBuilder<String>? methodKeywords) =>
      _$this._methodKeywords = methodKeywords;

  String? _categoryAccount;
  String? get categoryAccount => _$this._categoryAccount;
  set categoryAccount(String? categoryAccount) =>
      _$this._categoryAccount = categoryAccount;

  UpdateTransactionRuleDtoMatchLogicEnum? _matchLogic;
  UpdateTransactionRuleDtoMatchLogicEnum? get matchLogic => _$this._matchLogic;
  set matchLogic(UpdateTransactionRuleDtoMatchLogicEnum? matchLogic) =>
      _$this._matchLogic = matchLogic;

  num? _amountMin;
  num? get amountMin => _$this._amountMin;
  set amountMin(num? amountMin) => _$this._amountMin = amountMin;

  num? _amountMax;
  num? get amountMax => _$this._amountMax;
  set amountMax(num? amountMax) => _$this._amountMax = amountMax;

  num? _priority;
  num? get priority => _$this._priority;
  set priority(num? priority) => _$this._priority = priority;

  ListBuilder<String>? _additionalTags;
  ListBuilder<String> get additionalTags =>
      _$this._additionalTags ??= new ListBuilder<String>();
  set additionalTags(ListBuilder<String>? additionalTags) =>
      _$this._additionalTags = additionalTags;

  JsonObject? _additionalMetadata;
  JsonObject? get additionalMetadata => _$this._additionalMetadata;
  set additionalMetadata(JsonObject? additionalMetadata) =>
      _$this._additionalMetadata = additionalMetadata;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  UpdateTransactionRuleDtoBuilder() {
    UpdateTransactionRuleDto._defaults(this);
  }

  UpdateTransactionRuleDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _narrationKeywords = $v.narrationKeywords?.toBuilder();
      _payeeKeywords = $v.payeeKeywords?.toBuilder();
      _categoryKeywords = $v.categoryKeywords?.toBuilder();
      _methodKeywords = $v.methodKeywords?.toBuilder();
      _categoryAccount = $v.categoryAccount;
      _matchLogic = $v.matchLogic;
      _amountMin = $v.amountMin;
      _amountMax = $v.amountMax;
      _priority = $v.priority;
      _additionalTags = $v.additionalTags?.toBuilder();
      _additionalMetadata = $v.additionalMetadata;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTransactionRuleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTransactionRuleDto;
  }

  @override
  void update(void Function(UpdateTransactionRuleDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTransactionRuleDto build() => _build();

  _$UpdateTransactionRuleDto _build() {
    _$UpdateTransactionRuleDto _$result;
    try {
      _$result = _$v ??
          new _$UpdateTransactionRuleDto._(
              name: name,
              description: description,
              narrationKeywords: _narrationKeywords?.build(),
              payeeKeywords: _payeeKeywords?.build(),
              categoryKeywords: _categoryKeywords?.build(),
              methodKeywords: _methodKeywords?.build(),
              categoryAccount: categoryAccount,
              matchLogic: matchLogic,
              amountMin: amountMin,
              amountMax: amountMax,
              priority: priority,
              additionalTags: _additionalTags?.build(),
              additionalMetadata: additionalMetadata,
              enabled: enabled);
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
            r'UpdateTransactionRuleDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
