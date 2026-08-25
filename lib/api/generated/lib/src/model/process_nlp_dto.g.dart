// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_nlp_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProcessNlpDtoViewpointFlowEnum _$processNlpDtoViewpointFlowEnum_income =
    const ProcessNlpDtoViewpointFlowEnum._('income');
const ProcessNlpDtoViewpointFlowEnum _$processNlpDtoViewpointFlowEnum_expense =
    const ProcessNlpDtoViewpointFlowEnum._('expense');

ProcessNlpDtoViewpointFlowEnum _$processNlpDtoViewpointFlowEnumValueOf(
    String name) {
  switch (name) {
    case 'income':
      return _$processNlpDtoViewpointFlowEnum_income;
    case 'expense':
      return _$processNlpDtoViewpointFlowEnum_expense;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ProcessNlpDtoViewpointFlowEnum>
    _$processNlpDtoViewpointFlowEnumValues = new BuiltSet<
        ProcessNlpDtoViewpointFlowEnum>(const <ProcessNlpDtoViewpointFlowEnum>[
  _$processNlpDtoViewpointFlowEnum_income,
  _$processNlpDtoViewpointFlowEnum_expense,
]);

Serializer<ProcessNlpDtoViewpointFlowEnum>
    _$processNlpDtoViewpointFlowEnumSerializer =
    new _$ProcessNlpDtoViewpointFlowEnumSerializer();

class _$ProcessNlpDtoViewpointFlowEnumSerializer
    implements PrimitiveSerializer<ProcessNlpDtoViewpointFlowEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'income': 'income',
    'expense': 'expense',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'income': 'income',
    'expense': 'expense',
  };

  @override
  final Iterable<Type> types = const <Type>[ProcessNlpDtoViewpointFlowEnum];
  @override
  final String wireName = 'ProcessNlpDtoViewpointFlowEnum';

  @override
  Object serialize(
          Serializers serializers, ProcessNlpDtoViewpointFlowEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProcessNlpDtoViewpointFlowEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProcessNlpDtoViewpointFlowEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProcessNlpDto extends ProcessNlpDto {
  @override
  final String? message;
  @override
  final bool? confirm;
  @override
  final String? sessionId;
  @override
  final ClientParsedDataDto? parsedData;
  @override
  final String? selectedRuleId;
  @override
  final String? selectedAccount;
  @override
  final String? viewpointAccount;
  @override
  final String? viewpointCategory;
  @override
  final ProcessNlpDtoViewpointFlowEnum? viewpointFlow;

  factory _$ProcessNlpDto([void Function(ProcessNlpDtoBuilder)? updates]) =>
      (new ProcessNlpDtoBuilder()..update(updates))._build();

  _$ProcessNlpDto._(
      {this.message,
      this.confirm,
      this.sessionId,
      this.parsedData,
      this.selectedRuleId,
      this.selectedAccount,
      this.viewpointAccount,
      this.viewpointCategory,
      this.viewpointFlow})
      : super._();

  @override
  ProcessNlpDto rebuild(void Function(ProcessNlpDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProcessNlpDtoBuilder toBuilder() => new ProcessNlpDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessNlpDto &&
        message == other.message &&
        confirm == other.confirm &&
        sessionId == other.sessionId &&
        parsedData == other.parsedData &&
        selectedRuleId == other.selectedRuleId &&
        selectedAccount == other.selectedAccount &&
        viewpointAccount == other.viewpointAccount &&
        viewpointCategory == other.viewpointCategory &&
        viewpointFlow == other.viewpointFlow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, confirm.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, parsedData.hashCode);
    _$hash = $jc(_$hash, selectedRuleId.hashCode);
    _$hash = $jc(_$hash, selectedAccount.hashCode);
    _$hash = $jc(_$hash, viewpointAccount.hashCode);
    _$hash = $jc(_$hash, viewpointCategory.hashCode);
    _$hash = $jc(_$hash, viewpointFlow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProcessNlpDto')
          ..add('message', message)
          ..add('confirm', confirm)
          ..add('sessionId', sessionId)
          ..add('parsedData', parsedData)
          ..add('selectedRuleId', selectedRuleId)
          ..add('selectedAccount', selectedAccount)
          ..add('viewpointAccount', viewpointAccount)
          ..add('viewpointCategory', viewpointCategory)
          ..add('viewpointFlow', viewpointFlow))
        .toString();
  }
}

class ProcessNlpDtoBuilder
    implements Builder<ProcessNlpDto, ProcessNlpDtoBuilder> {
  _$ProcessNlpDto? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _confirm;
  bool? get confirm => _$this._confirm;
  set confirm(bool? confirm) => _$this._confirm = confirm;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  ClientParsedDataDtoBuilder? _parsedData;
  ClientParsedDataDtoBuilder get parsedData =>
      _$this._parsedData ??= new ClientParsedDataDtoBuilder();
  set parsedData(ClientParsedDataDtoBuilder? parsedData) =>
      _$this._parsedData = parsedData;

  String? _selectedRuleId;
  String? get selectedRuleId => _$this._selectedRuleId;
  set selectedRuleId(String? selectedRuleId) =>
      _$this._selectedRuleId = selectedRuleId;

  String? _selectedAccount;
  String? get selectedAccount => _$this._selectedAccount;
  set selectedAccount(String? selectedAccount) =>
      _$this._selectedAccount = selectedAccount;

  String? _viewpointAccount;
  String? get viewpointAccount => _$this._viewpointAccount;
  set viewpointAccount(String? viewpointAccount) =>
      _$this._viewpointAccount = viewpointAccount;

  String? _viewpointCategory;
  String? get viewpointCategory => _$this._viewpointCategory;
  set viewpointCategory(String? viewpointCategory) =>
      _$this._viewpointCategory = viewpointCategory;

  ProcessNlpDtoViewpointFlowEnum? _viewpointFlow;
  ProcessNlpDtoViewpointFlowEnum? get viewpointFlow => _$this._viewpointFlow;
  set viewpointFlow(ProcessNlpDtoViewpointFlowEnum? viewpointFlow) =>
      _$this._viewpointFlow = viewpointFlow;

  ProcessNlpDtoBuilder() {
    ProcessNlpDto._defaults(this);
  }

  ProcessNlpDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _confirm = $v.confirm;
      _sessionId = $v.sessionId;
      _parsedData = $v.parsedData?.toBuilder();
      _selectedRuleId = $v.selectedRuleId;
      _selectedAccount = $v.selectedAccount;
      _viewpointAccount = $v.viewpointAccount;
      _viewpointCategory = $v.viewpointCategory;
      _viewpointFlow = $v.viewpointFlow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessNlpDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProcessNlpDto;
  }

  @override
  void update(void Function(ProcessNlpDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessNlpDto build() => _build();

  _$ProcessNlpDto _build() {
    _$ProcessNlpDto _$result;
    try {
      _$result = _$v ??
          new _$ProcessNlpDto._(
              message: message,
              confirm: confirm,
              sessionId: sessionId,
              parsedData: _parsedData?.build(),
              selectedRuleId: selectedRuleId,
              selectedAccount: selectedAccount,
              viewpointAccount: viewpointAccount,
              viewpointCategory: viewpointCategory,
              viewpointFlow: viewpointFlow);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parsedData';
        _parsedData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProcessNlpDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
