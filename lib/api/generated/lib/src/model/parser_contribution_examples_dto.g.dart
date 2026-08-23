// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parser_contribution_examples_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParserContributionExamplesDto extends ParserContributionExamplesDto {
  @override
  final BuiltList<ExpectedTransactionDto> expectedTransactions;

  factory _$ParserContributionExamplesDto(
          [void Function(ParserContributionExamplesDtoBuilder)? updates]) =>
      (new ParserContributionExamplesDtoBuilder()..update(updates))._build();

  _$ParserContributionExamplesDto._({required this.expectedTransactions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(expectedTransactions,
        r'ParserContributionExamplesDto', 'expectedTransactions');
  }

  @override
  ParserContributionExamplesDto rebuild(
          void Function(ParserContributionExamplesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParserContributionExamplesDtoBuilder toBuilder() =>
      new ParserContributionExamplesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParserContributionExamplesDto &&
        expectedTransactions == other.expectedTransactions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expectedTransactions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParserContributionExamplesDto')
          ..add('expectedTransactions', expectedTransactions))
        .toString();
  }
}

class ParserContributionExamplesDtoBuilder
    implements
        Builder<ParserContributionExamplesDto,
            ParserContributionExamplesDtoBuilder> {
  _$ParserContributionExamplesDto? _$v;

  ListBuilder<ExpectedTransactionDto>? _expectedTransactions;
  ListBuilder<ExpectedTransactionDto> get expectedTransactions =>
      _$this._expectedTransactions ??=
          new ListBuilder<ExpectedTransactionDto>();
  set expectedTransactions(
          ListBuilder<ExpectedTransactionDto>? expectedTransactions) =>
      _$this._expectedTransactions = expectedTransactions;

  ParserContributionExamplesDtoBuilder() {
    ParserContributionExamplesDto._defaults(this);
  }

  ParserContributionExamplesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expectedTransactions = $v.expectedTransactions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParserContributionExamplesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParserContributionExamplesDto;
  }

  @override
  void update(void Function(ParserContributionExamplesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParserContributionExamplesDto build() => _build();

  _$ParserContributionExamplesDto _build() {
    _$ParserContributionExamplesDto _$result;
    try {
      _$result = _$v ??
          new _$ParserContributionExamplesDto._(
              expectedTransactions: expectedTransactions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'expectedTransactions';
        expectedTransactions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParserContributionExamplesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
