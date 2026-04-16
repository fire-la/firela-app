// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_rule_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionRuleResponseDtoMatchLogicEnum
    _$transactionRuleResponseDtoMatchLogicEnum_OR =
    const TransactionRuleResponseDtoMatchLogicEnum._('OR');
const TransactionRuleResponseDtoMatchLogicEnum
    _$transactionRuleResponseDtoMatchLogicEnum_AND =
    const TransactionRuleResponseDtoMatchLogicEnum._('AND');

TransactionRuleResponseDtoMatchLogicEnum
    _$transactionRuleResponseDtoMatchLogicEnumValueOf(String name) {
  switch (name) {
    case 'OR':
      return _$transactionRuleResponseDtoMatchLogicEnum_OR;
    case 'AND':
      return _$transactionRuleResponseDtoMatchLogicEnum_AND;
    default:
      return _$transactionRuleResponseDtoMatchLogicEnum_AND;
  }
}

final BuiltSet<TransactionRuleResponseDtoMatchLogicEnum>
    _$transactionRuleResponseDtoMatchLogicEnumValues = new BuiltSet<
        TransactionRuleResponseDtoMatchLogicEnum>(const <TransactionRuleResponseDtoMatchLogicEnum>[
  _$transactionRuleResponseDtoMatchLogicEnum_OR,
  _$transactionRuleResponseDtoMatchLogicEnum_AND,
]);

const TransactionRuleResponseDtoLearningSourceEnum
    _$transactionRuleResponseDtoLearningSourceEnum_NLP =
    const TransactionRuleResponseDtoLearningSourceEnum._('NLP');
const TransactionRuleResponseDtoLearningSourceEnum
    _$transactionRuleResponseDtoLearningSourceEnum_REVIEW_CENTER =
    const TransactionRuleResponseDtoLearningSourceEnum._('REVIEW_CENTER');

TransactionRuleResponseDtoLearningSourceEnum
    _$transactionRuleResponseDtoLearningSourceEnumValueOf(String name) {
  switch (name) {
    case 'NLP':
      return _$transactionRuleResponseDtoLearningSourceEnum_NLP;
    case 'REVIEW_CENTER':
      return _$transactionRuleResponseDtoLearningSourceEnum_REVIEW_CENTER;
    default:
      return _$transactionRuleResponseDtoLearningSourceEnum_REVIEW_CENTER;
  }
}

final BuiltSet<TransactionRuleResponseDtoLearningSourceEnum>
    _$transactionRuleResponseDtoLearningSourceEnumValues = new BuiltSet<
        TransactionRuleResponseDtoLearningSourceEnum>(const <TransactionRuleResponseDtoLearningSourceEnum>[
  _$transactionRuleResponseDtoLearningSourceEnum_NLP,
  _$transactionRuleResponseDtoLearningSourceEnum_REVIEW_CENTER,
]);

Serializer<TransactionRuleResponseDtoMatchLogicEnum>
    _$transactionRuleResponseDtoMatchLogicEnumSerializer =
    new _$TransactionRuleResponseDtoMatchLogicEnumSerializer();
Serializer<TransactionRuleResponseDtoLearningSourceEnum>
    _$transactionRuleResponseDtoLearningSourceEnumSerializer =
    new _$TransactionRuleResponseDtoLearningSourceEnumSerializer();

class _$TransactionRuleResponseDtoMatchLogicEnumSerializer
    implements PrimitiveSerializer<TransactionRuleResponseDtoMatchLogicEnum> {
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
    TransactionRuleResponseDtoMatchLogicEnum
  ];
  @override
  final String wireName = 'TransactionRuleResponseDtoMatchLogicEnum';

  @override
  Object serialize(Serializers serializers,
          TransactionRuleResponseDtoMatchLogicEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionRuleResponseDtoMatchLogicEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionRuleResponseDtoMatchLogicEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionRuleResponseDtoLearningSourceEnumSerializer
    implements
        PrimitiveSerializer<TransactionRuleResponseDtoLearningSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NLP': 'NLP',
    'REVIEW_CENTER': 'REVIEW_CENTER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NLP': 'NLP',
    'REVIEW_CENTER': 'REVIEW_CENTER',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TransactionRuleResponseDtoLearningSourceEnum
  ];
  @override
  final String wireName = 'TransactionRuleResponseDtoLearningSourceEnum';

  @override
  Object serialize(Serializers serializers,
          TransactionRuleResponseDtoLearningSourceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionRuleResponseDtoLearningSourceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionRuleResponseDtoLearningSourceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionRuleResponseDto extends TransactionRuleResponseDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<String> narrationKeywords;
  @override
  final BuiltList<String> payeeKeywords;
  @override
  final BuiltList<String> categoryKeywords;
  @override
  final BuiltList<String> methodKeywords;
  @override
  final TransactionRuleResponseDtoMatchLogicEnum matchLogic;
  @override
  final num priority;
  @override
  final bool enabled;
  @override
  final bool autoApplyEnabled;
  @override
  final num confirmationCount;
  @override
  final BuiltList<String> additionalTags;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? description;
  @override
  final String? categoryAccount;
  @override
  final JsonObject? amountRange;
  @override
  final TransactionRuleResponseDtoLearningSourceEnum? learningSource;
  @override
  final JsonObject? additionalMetadata;

  factory _$TransactionRuleResponseDto(
          [void Function(TransactionRuleResponseDtoBuilder)? updates]) =>
      (new TransactionRuleResponseDtoBuilder()..update(updates))._build();

  _$TransactionRuleResponseDto._(
      {required this.id,
      required this.name,
      required this.narrationKeywords,
      required this.payeeKeywords,
      required this.categoryKeywords,
      required this.methodKeywords,
      required this.matchLogic,
      required this.priority,
      required this.enabled,
      required this.autoApplyEnabled,
      required this.confirmationCount,
      required this.additionalTags,
      required this.createdAt,
      required this.updatedAt,
      this.description,
      this.categoryAccount,
      this.amountRange,
      this.learningSource,
      this.additionalMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'TransactionRuleResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'TransactionRuleResponseDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        narrationKeywords, r'TransactionRuleResponseDto', 'narrationKeywords');
    BuiltValueNullFieldError.checkNotNull(
        payeeKeywords, r'TransactionRuleResponseDto', 'payeeKeywords');
    BuiltValueNullFieldError.checkNotNull(
        categoryKeywords, r'TransactionRuleResponseDto', 'categoryKeywords');
    BuiltValueNullFieldError.checkNotNull(
        methodKeywords, r'TransactionRuleResponseDto', 'methodKeywords');
    BuiltValueNullFieldError.checkNotNull(
        matchLogic, r'TransactionRuleResponseDto', 'matchLogic');
    BuiltValueNullFieldError.checkNotNull(
        priority, r'TransactionRuleResponseDto', 'priority');
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'TransactionRuleResponseDto', 'enabled');
    BuiltValueNullFieldError.checkNotNull(
        autoApplyEnabled, r'TransactionRuleResponseDto', 'autoApplyEnabled');
    BuiltValueNullFieldError.checkNotNull(
        confirmationCount, r'TransactionRuleResponseDto', 'confirmationCount');
    BuiltValueNullFieldError.checkNotNull(
        additionalTags, r'TransactionRuleResponseDto', 'additionalTags');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'TransactionRuleResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'TransactionRuleResponseDto', 'updatedAt');
  }

  @override
  TransactionRuleResponseDto rebuild(
          void Function(TransactionRuleResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionRuleResponseDtoBuilder toBuilder() =>
      new TransactionRuleResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionRuleResponseDto &&
        id == other.id &&
        name == other.name &&
        narrationKeywords == other.narrationKeywords &&
        payeeKeywords == other.payeeKeywords &&
        categoryKeywords == other.categoryKeywords &&
        methodKeywords == other.methodKeywords &&
        matchLogic == other.matchLogic &&
        priority == other.priority &&
        enabled == other.enabled &&
        autoApplyEnabled == other.autoApplyEnabled &&
        confirmationCount == other.confirmationCount &&
        additionalTags == other.additionalTags &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        description == other.description &&
        categoryAccount == other.categoryAccount &&
        amountRange == other.amountRange &&
        learningSource == other.learningSource &&
        additionalMetadata == other.additionalMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, narrationKeywords.hashCode);
    _$hash = $jc(_$hash, payeeKeywords.hashCode);
    _$hash = $jc(_$hash, categoryKeywords.hashCode);
    _$hash = $jc(_$hash, methodKeywords.hashCode);
    _$hash = $jc(_$hash, matchLogic.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, autoApplyEnabled.hashCode);
    _$hash = $jc(_$hash, confirmationCount.hashCode);
    _$hash = $jc(_$hash, additionalTags.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, categoryAccount.hashCode);
    _$hash = $jc(_$hash, amountRange.hashCode);
    _$hash = $jc(_$hash, learningSource.hashCode);
    _$hash = $jc(_$hash, additionalMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionRuleResponseDto')
          ..add('id', id)
          ..add('name', name)
          ..add('narrationKeywords', narrationKeywords)
          ..add('payeeKeywords', payeeKeywords)
          ..add('categoryKeywords', categoryKeywords)
          ..add('methodKeywords', methodKeywords)
          ..add('matchLogic', matchLogic)
          ..add('priority', priority)
          ..add('enabled', enabled)
          ..add('autoApplyEnabled', autoApplyEnabled)
          ..add('confirmationCount', confirmationCount)
          ..add('additionalTags', additionalTags)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('description', description)
          ..add('categoryAccount', categoryAccount)
          ..add('amountRange', amountRange)
          ..add('learningSource', learningSource)
          ..add('additionalMetadata', additionalMetadata))
        .toString();
  }
}

class TransactionRuleResponseDtoBuilder
    implements
        Builder<TransactionRuleResponseDto, TransactionRuleResponseDtoBuilder> {
  _$TransactionRuleResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  TransactionRuleResponseDtoMatchLogicEnum? _matchLogic;
  TransactionRuleResponseDtoMatchLogicEnum? get matchLogic =>
      _$this._matchLogic;
  set matchLogic(TransactionRuleResponseDtoMatchLogicEnum? matchLogic) =>
      _$this._matchLogic = matchLogic;

  num? _priority;
  num? get priority => _$this._priority;
  set priority(num? priority) => _$this._priority = priority;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _autoApplyEnabled;
  bool? get autoApplyEnabled => _$this._autoApplyEnabled;
  set autoApplyEnabled(bool? autoApplyEnabled) =>
      _$this._autoApplyEnabled = autoApplyEnabled;

  num? _confirmationCount;
  num? get confirmationCount => _$this._confirmationCount;
  set confirmationCount(num? confirmationCount) =>
      _$this._confirmationCount = confirmationCount;

  ListBuilder<String>? _additionalTags;
  ListBuilder<String> get additionalTags =>
      _$this._additionalTags ??= new ListBuilder<String>();
  set additionalTags(ListBuilder<String>? additionalTags) =>
      _$this._additionalTags = additionalTags;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _categoryAccount;
  String? get categoryAccount => _$this._categoryAccount;
  set categoryAccount(String? categoryAccount) =>
      _$this._categoryAccount = categoryAccount;

  JsonObject? _amountRange;
  JsonObject? get amountRange => _$this._amountRange;
  set amountRange(JsonObject? amountRange) => _$this._amountRange = amountRange;

  TransactionRuleResponseDtoLearningSourceEnum? _learningSource;
  TransactionRuleResponseDtoLearningSourceEnum? get learningSource =>
      _$this._learningSource;
  set learningSource(
          TransactionRuleResponseDtoLearningSourceEnum? learningSource) =>
      _$this._learningSource = learningSource;

  JsonObject? _additionalMetadata;
  JsonObject? get additionalMetadata => _$this._additionalMetadata;
  set additionalMetadata(JsonObject? additionalMetadata) =>
      _$this._additionalMetadata = additionalMetadata;

  TransactionRuleResponseDtoBuilder() {
    TransactionRuleResponseDto._defaults(this);
  }

  TransactionRuleResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _narrationKeywords = $v.narrationKeywords.toBuilder();
      _payeeKeywords = $v.payeeKeywords.toBuilder();
      _categoryKeywords = $v.categoryKeywords.toBuilder();
      _methodKeywords = $v.methodKeywords.toBuilder();
      _matchLogic = $v.matchLogic;
      _priority = $v.priority;
      _enabled = $v.enabled;
      _autoApplyEnabled = $v.autoApplyEnabled;
      _confirmationCount = $v.confirmationCount;
      _additionalTags = $v.additionalTags.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _description = $v.description;
      _categoryAccount = $v.categoryAccount;
      _amountRange = $v.amountRange;
      _learningSource = $v.learningSource;
      _additionalMetadata = $v.additionalMetadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionRuleResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionRuleResponseDto;
  }

  @override
  void update(void Function(TransactionRuleResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionRuleResponseDto build() => _build();

  _$TransactionRuleResponseDto _build() {
    _$TransactionRuleResponseDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionRuleResponseDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'TransactionRuleResponseDto', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'TransactionRuleResponseDto', 'name'),
              narrationKeywords: narrationKeywords.build(),
              payeeKeywords: payeeKeywords.build(),
              categoryKeywords: categoryKeywords.build(),
              methodKeywords: methodKeywords.build(),
              matchLogic: BuiltValueNullFieldError.checkNotNull(
                  matchLogic, r'TransactionRuleResponseDto', 'matchLogic'),
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority, r'TransactionRuleResponseDto', 'priority'),
              enabled: BuiltValueNullFieldError.checkNotNull(
                  enabled, r'TransactionRuleResponseDto', 'enabled'),
              autoApplyEnabled: BuiltValueNullFieldError.checkNotNull(
                  autoApplyEnabled, r'TransactionRuleResponseDto', 'autoApplyEnabled'),
              confirmationCount: BuiltValueNullFieldError.checkNotNull(
                  confirmationCount, r'TransactionRuleResponseDto', 'confirmationCount'),
              additionalTags: additionalTags.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'TransactionRuleResponseDto', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'TransactionRuleResponseDto', 'updatedAt'),
              description: description,
              categoryAccount: categoryAccount,
              amountRange: amountRange,
              learningSource: learningSource,
              additionalMetadata: additionalMetadata);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'narrationKeywords';
        narrationKeywords.build();
        _$failedField = 'payeeKeywords';
        payeeKeywords.build();
        _$failedField = 'categoryKeywords';
        categoryKeywords.build();
        _$failedField = 'methodKeywords';
        methodKeywords.build();

        _$failedField = 'additionalTags';
        additionalTags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionRuleResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
