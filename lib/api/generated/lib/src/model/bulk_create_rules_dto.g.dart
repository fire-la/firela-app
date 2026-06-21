// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_rules_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BulkCreateRulesDtoConflictStrategyEnum
    _$bulkCreateRulesDtoConflictStrategyEnum_replace =
    const BulkCreateRulesDtoConflictStrategyEnum._('replace');
const BulkCreateRulesDtoConflictStrategyEnum
    _$bulkCreateRulesDtoConflictStrategyEnum_skip =
    const BulkCreateRulesDtoConflictStrategyEnum._('skip');

BulkCreateRulesDtoConflictStrategyEnum
    _$bulkCreateRulesDtoConflictStrategyEnumValueOf(String name) {
  switch (name) {
    case 'replace':
      return _$bulkCreateRulesDtoConflictStrategyEnum_replace;
    case 'skip':
      return _$bulkCreateRulesDtoConflictStrategyEnum_skip;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BulkCreateRulesDtoConflictStrategyEnum>
    _$bulkCreateRulesDtoConflictStrategyEnumValues = new BuiltSet<
        BulkCreateRulesDtoConflictStrategyEnum>(const <BulkCreateRulesDtoConflictStrategyEnum>[
  _$bulkCreateRulesDtoConflictStrategyEnum_replace,
  _$bulkCreateRulesDtoConflictStrategyEnum_skip,
]);

Serializer<BulkCreateRulesDtoConflictStrategyEnum>
    _$bulkCreateRulesDtoConflictStrategyEnumSerializer =
    new _$BulkCreateRulesDtoConflictStrategyEnumSerializer();

class _$BulkCreateRulesDtoConflictStrategyEnumSerializer
    implements PrimitiveSerializer<BulkCreateRulesDtoConflictStrategyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'replace': 'replace',
    'skip': 'skip',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'replace': 'replace',
    'skip': 'skip',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BulkCreateRulesDtoConflictStrategyEnum
  ];
  @override
  final String wireName = 'BulkCreateRulesDtoConflictStrategyEnum';

  @override
  Object serialize(Serializers serializers,
          BulkCreateRulesDtoConflictStrategyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BulkCreateRulesDtoConflictStrategyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BulkCreateRulesDtoConflictStrategyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BulkCreateRulesDto extends BulkCreateRulesDto {
  @override
  final BuiltList<BuiltList<dynamic>> rules;
  @override
  final BulkCreateRulesDtoConflictStrategyEnum conflictStrategy;

  factory _$BulkCreateRulesDto(
          [void Function(BulkCreateRulesDtoBuilder)? updates]) =>
      (new BulkCreateRulesDtoBuilder()..update(updates))._build();

  _$BulkCreateRulesDto._({required this.rules, required this.conflictStrategy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rules, r'BulkCreateRulesDto', 'rules');
    BuiltValueNullFieldError.checkNotNull(
        conflictStrategy, r'BulkCreateRulesDto', 'conflictStrategy');
  }

  @override
  BulkCreateRulesDto rebuild(
          void Function(BulkCreateRulesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkCreateRulesDtoBuilder toBuilder() =>
      new BulkCreateRulesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkCreateRulesDto &&
        rules == other.rules &&
        conflictStrategy == other.conflictStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jc(_$hash, conflictStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkCreateRulesDto')
          ..add('rules', rules)
          ..add('conflictStrategy', conflictStrategy))
        .toString();
  }
}

class BulkCreateRulesDtoBuilder
    implements Builder<BulkCreateRulesDto, BulkCreateRulesDtoBuilder> {
  _$BulkCreateRulesDto? _$v;

  ListBuilder<BuiltList<dynamic>>? _rules;
  ListBuilder<BuiltList<dynamic>> get rules =>
      _$this._rules ??= new ListBuilder<BuiltList<dynamic>>();
  set rules(ListBuilder<BuiltList<dynamic>>? rules) => _$this._rules = rules;

  BulkCreateRulesDtoConflictStrategyEnum? _conflictStrategy;
  BulkCreateRulesDtoConflictStrategyEnum? get conflictStrategy =>
      _$this._conflictStrategy;
  set conflictStrategy(
          BulkCreateRulesDtoConflictStrategyEnum? conflictStrategy) =>
      _$this._conflictStrategy = conflictStrategy;

  BulkCreateRulesDtoBuilder() {
    BulkCreateRulesDto._defaults(this);
  }

  BulkCreateRulesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules.toBuilder();
      _conflictStrategy = $v.conflictStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkCreateRulesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BulkCreateRulesDto;
  }

  @override
  void update(void Function(BulkCreateRulesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkCreateRulesDto build() => _build();

  _$BulkCreateRulesDto _build() {
    _$BulkCreateRulesDto _$result;
    try {
      _$result = _$v ??
          new _$BulkCreateRulesDto._(
              rules: rules.build(),
              conflictStrategy: BuiltValueNullFieldError.checkNotNull(
                  conflictStrategy, r'BulkCreateRulesDto', 'conflictStrategy'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BulkCreateRulesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
