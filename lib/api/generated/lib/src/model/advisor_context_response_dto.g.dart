// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor_context_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisorContextResponseDto extends AdvisorContextResponseDto {
  @override
  final String asOf;
  @override
  final NetWorthResponseDto netWorth;
  @override
  final Trailing12mDto trailing12m;
  @override
  final BuiltList<TopExpenseCategoryDto> topExpenseCategories;

  factory _$AdvisorContextResponseDto(
          [void Function(AdvisorContextResponseDtoBuilder)? updates]) =>
      (new AdvisorContextResponseDtoBuilder()..update(updates))._build();

  _$AdvisorContextResponseDto._(
      {required this.asOf,
      required this.netWorth,
      required this.trailing12m,
      required this.topExpenseCategories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        asOf, r'AdvisorContextResponseDto', 'asOf');
    BuiltValueNullFieldError.checkNotNull(
        netWorth, r'AdvisorContextResponseDto', 'netWorth');
    BuiltValueNullFieldError.checkNotNull(
        trailing12m, r'AdvisorContextResponseDto', 'trailing12m');
    BuiltValueNullFieldError.checkNotNull(topExpenseCategories,
        r'AdvisorContextResponseDto', 'topExpenseCategories');
  }

  @override
  AdvisorContextResponseDto rebuild(
          void Function(AdvisorContextResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisorContextResponseDtoBuilder toBuilder() =>
      new AdvisorContextResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisorContextResponseDto &&
        asOf == other.asOf &&
        netWorth == other.netWorth &&
        trailing12m == other.trailing12m &&
        topExpenseCategories == other.topExpenseCategories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, netWorth.hashCode);
    _$hash = $jc(_$hash, trailing12m.hashCode);
    _$hash = $jc(_$hash, topExpenseCategories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdvisorContextResponseDto')
          ..add('asOf', asOf)
          ..add('netWorth', netWorth)
          ..add('trailing12m', trailing12m)
          ..add('topExpenseCategories', topExpenseCategories))
        .toString();
  }
}

class AdvisorContextResponseDtoBuilder
    implements
        Builder<AdvisorContextResponseDto, AdvisorContextResponseDtoBuilder> {
  _$AdvisorContextResponseDto? _$v;

  String? _asOf;
  String? get asOf => _$this._asOf;
  set asOf(String? asOf) => _$this._asOf = asOf;

  NetWorthResponseDtoBuilder? _netWorth;
  NetWorthResponseDtoBuilder get netWorth =>
      _$this._netWorth ??= new NetWorthResponseDtoBuilder();
  set netWorth(NetWorthResponseDtoBuilder? netWorth) =>
      _$this._netWorth = netWorth;

  Trailing12mDtoBuilder? _trailing12m;
  Trailing12mDtoBuilder get trailing12m =>
      _$this._trailing12m ??= new Trailing12mDtoBuilder();
  set trailing12m(Trailing12mDtoBuilder? trailing12m) =>
      _$this._trailing12m = trailing12m;

  ListBuilder<TopExpenseCategoryDto>? _topExpenseCategories;
  ListBuilder<TopExpenseCategoryDto> get topExpenseCategories =>
      _$this._topExpenseCategories ??= new ListBuilder<TopExpenseCategoryDto>();
  set topExpenseCategories(
          ListBuilder<TopExpenseCategoryDto>? topExpenseCategories) =>
      _$this._topExpenseCategories = topExpenseCategories;

  AdvisorContextResponseDtoBuilder() {
    AdvisorContextResponseDto._defaults(this);
  }

  AdvisorContextResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asOf = $v.asOf;
      _netWorth = $v.netWorth.toBuilder();
      _trailing12m = $v.trailing12m.toBuilder();
      _topExpenseCategories = $v.topExpenseCategories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisorContextResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisorContextResponseDto;
  }

  @override
  void update(void Function(AdvisorContextResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvisorContextResponseDto build() => _build();

  _$AdvisorContextResponseDto _build() {
    _$AdvisorContextResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AdvisorContextResponseDto._(
              asOf: BuiltValueNullFieldError.checkNotNull(
                  asOf, r'AdvisorContextResponseDto', 'asOf'),
              netWorth: netWorth.build(),
              trailing12m: trailing12m.build(),
              topExpenseCategories: topExpenseCategories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'netWorth';
        netWorth.build();
        _$failedField = 'trailing12m';
        trailing12m.build();
        _$failedField = 'topExpenseCategories';
        topExpenseCategories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdvisorContextResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
