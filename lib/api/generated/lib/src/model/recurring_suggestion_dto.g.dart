// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_suggestion_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnum_WEEKLY =
    const RecurringSuggestionDtoSuggestedFrequencyEnum._('WEEKLY');
const RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnum_BIWEEKLY =
    const RecurringSuggestionDtoSuggestedFrequencyEnum._('BIWEEKLY');
const RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnum_MONTHLY =
    const RecurringSuggestionDtoSuggestedFrequencyEnum._('MONTHLY');
const RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnum_BIMONTHLY =
    const RecurringSuggestionDtoSuggestedFrequencyEnum._('BIMONTHLY');
const RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnum_QUARTERLY =
    const RecurringSuggestionDtoSuggestedFrequencyEnum._('QUARTERLY');
const RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnum_YEARLY =
    const RecurringSuggestionDtoSuggestedFrequencyEnum._('YEARLY');
const RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnum_CUSTOM =
    const RecurringSuggestionDtoSuggestedFrequencyEnum._('CUSTOM');

RecurringSuggestionDtoSuggestedFrequencyEnum
    _$recurringSuggestionDtoSuggestedFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'WEEKLY':
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_WEEKLY;
    case 'BIWEEKLY':
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_BIWEEKLY;
    case 'MONTHLY':
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_MONTHLY;
    case 'BIMONTHLY':
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_BIMONTHLY;
    case 'QUARTERLY':
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_QUARTERLY;
    case 'YEARLY':
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_YEARLY;
    case 'CUSTOM':
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_CUSTOM;
    default:
      return _$recurringSuggestionDtoSuggestedFrequencyEnum_CUSTOM;
  }
}

final BuiltSet<RecurringSuggestionDtoSuggestedFrequencyEnum>
    _$recurringSuggestionDtoSuggestedFrequencyEnumValues = new BuiltSet<
        RecurringSuggestionDtoSuggestedFrequencyEnum>(const <RecurringSuggestionDtoSuggestedFrequencyEnum>[
  _$recurringSuggestionDtoSuggestedFrequencyEnum_WEEKLY,
  _$recurringSuggestionDtoSuggestedFrequencyEnum_BIWEEKLY,
  _$recurringSuggestionDtoSuggestedFrequencyEnum_MONTHLY,
  _$recurringSuggestionDtoSuggestedFrequencyEnum_BIMONTHLY,
  _$recurringSuggestionDtoSuggestedFrequencyEnum_QUARTERLY,
  _$recurringSuggestionDtoSuggestedFrequencyEnum_YEARLY,
  _$recurringSuggestionDtoSuggestedFrequencyEnum_CUSTOM,
]);

Serializer<RecurringSuggestionDtoSuggestedFrequencyEnum>
    _$recurringSuggestionDtoSuggestedFrequencyEnumSerializer =
    new _$RecurringSuggestionDtoSuggestedFrequencyEnumSerializer();

class _$RecurringSuggestionDtoSuggestedFrequencyEnumSerializer
    implements
        PrimitiveSerializer<RecurringSuggestionDtoSuggestedFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WEEKLY': 'WEEKLY',
    'BIWEEKLY': 'BIWEEKLY',
    'MONTHLY': 'MONTHLY',
    'BIMONTHLY': 'BIMONTHLY',
    'QUARTERLY': 'QUARTERLY',
    'YEARLY': 'YEARLY',
    'CUSTOM': 'CUSTOM',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WEEKLY': 'WEEKLY',
    'BIWEEKLY': 'BIWEEKLY',
    'MONTHLY': 'MONTHLY',
    'BIMONTHLY': 'BIMONTHLY',
    'QUARTERLY': 'QUARTERLY',
    'YEARLY': 'YEARLY',
    'CUSTOM': 'CUSTOM',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RecurringSuggestionDtoSuggestedFrequencyEnum
  ];
  @override
  final String wireName = 'RecurringSuggestionDtoSuggestedFrequencyEnum';

  @override
  Object serialize(Serializers serializers,
          RecurringSuggestionDtoSuggestedFrequencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecurringSuggestionDtoSuggestedFrequencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecurringSuggestionDtoSuggestedFrequencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RecurringSuggestionDto extends RecurringSuggestionDto {
  @override
  final bool shouldSuggest;
  @override
  final RecurringSuggestionDtoSuggestedFrequencyEnum suggestedFrequency;
  @override
  final num confidence;
  @override
  final num similarCount;
  @override
  final num averageAmount;
  @override
  final num? suggestedExpectedDay;

  factory _$RecurringSuggestionDto(
          [void Function(RecurringSuggestionDtoBuilder)? updates]) =>
      (new RecurringSuggestionDtoBuilder()..update(updates))._build();

  _$RecurringSuggestionDto._(
      {required this.shouldSuggest,
      required this.suggestedFrequency,
      required this.confidence,
      required this.similarCount,
      required this.averageAmount,
      this.suggestedExpectedDay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shouldSuggest, r'RecurringSuggestionDto', 'shouldSuggest');
    BuiltValueNullFieldError.checkNotNull(
        suggestedFrequency, r'RecurringSuggestionDto', 'suggestedFrequency');
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'RecurringSuggestionDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(
        similarCount, r'RecurringSuggestionDto', 'similarCount');
    BuiltValueNullFieldError.checkNotNull(
        averageAmount, r'RecurringSuggestionDto', 'averageAmount');
  }

  @override
  RecurringSuggestionDto rebuild(
          void Function(RecurringSuggestionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecurringSuggestionDtoBuilder toBuilder() =>
      new RecurringSuggestionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecurringSuggestionDto &&
        shouldSuggest == other.shouldSuggest &&
        suggestedFrequency == other.suggestedFrequency &&
        confidence == other.confidence &&
        similarCount == other.similarCount &&
        averageAmount == other.averageAmount &&
        suggestedExpectedDay == other.suggestedExpectedDay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shouldSuggest.hashCode);
    _$hash = $jc(_$hash, suggestedFrequency.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, similarCount.hashCode);
    _$hash = $jc(_$hash, averageAmount.hashCode);
    _$hash = $jc(_$hash, suggestedExpectedDay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecurringSuggestionDto')
          ..add('shouldSuggest', shouldSuggest)
          ..add('suggestedFrequency', suggestedFrequency)
          ..add('confidence', confidence)
          ..add('similarCount', similarCount)
          ..add('averageAmount', averageAmount)
          ..add('suggestedExpectedDay', suggestedExpectedDay))
        .toString();
  }
}

class RecurringSuggestionDtoBuilder
    implements Builder<RecurringSuggestionDto, RecurringSuggestionDtoBuilder> {
  _$RecurringSuggestionDto? _$v;

  bool? _shouldSuggest;
  bool? get shouldSuggest => _$this._shouldSuggest;
  set shouldSuggest(bool? shouldSuggest) =>
      _$this._shouldSuggest = shouldSuggest;

  RecurringSuggestionDtoSuggestedFrequencyEnum? _suggestedFrequency;
  RecurringSuggestionDtoSuggestedFrequencyEnum? get suggestedFrequency =>
      _$this._suggestedFrequency;
  set suggestedFrequency(
          RecurringSuggestionDtoSuggestedFrequencyEnum? suggestedFrequency) =>
      _$this._suggestedFrequency = suggestedFrequency;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  num? _similarCount;
  num? get similarCount => _$this._similarCount;
  set similarCount(num? similarCount) => _$this._similarCount = similarCount;

  num? _averageAmount;
  num? get averageAmount => _$this._averageAmount;
  set averageAmount(num? averageAmount) =>
      _$this._averageAmount = averageAmount;

  num? _suggestedExpectedDay;
  num? get suggestedExpectedDay => _$this._suggestedExpectedDay;
  set suggestedExpectedDay(num? suggestedExpectedDay) =>
      _$this._suggestedExpectedDay = suggestedExpectedDay;

  RecurringSuggestionDtoBuilder() {
    RecurringSuggestionDto._defaults(this);
  }

  RecurringSuggestionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shouldSuggest = $v.shouldSuggest;
      _suggestedFrequency = $v.suggestedFrequency;
      _confidence = $v.confidence;
      _similarCount = $v.similarCount;
      _averageAmount = $v.averageAmount;
      _suggestedExpectedDay = $v.suggestedExpectedDay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecurringSuggestionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecurringSuggestionDto;
  }

  @override
  void update(void Function(RecurringSuggestionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecurringSuggestionDto build() => _build();

  _$RecurringSuggestionDto _build() {
    final _$result = _$v ??
        new _$RecurringSuggestionDto._(
            shouldSuggest: BuiltValueNullFieldError.checkNotNull(
                shouldSuggest, r'RecurringSuggestionDto', 'shouldSuggest'),
            suggestedFrequency: BuiltValueNullFieldError.checkNotNull(
                suggestedFrequency,
                r'RecurringSuggestionDto',
                'suggestedFrequency'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, r'RecurringSuggestionDto', 'confidence'),
            similarCount: BuiltValueNullFieldError.checkNotNull(
                similarCount, r'RecurringSuggestionDto', 'similarCount'),
            averageAmount: BuiltValueNullFieldError.checkNotNull(
                averageAmount, r'RecurringSuggestionDto', 'averageAmount'),
            suggestedExpectedDay: suggestedExpectedDay);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
