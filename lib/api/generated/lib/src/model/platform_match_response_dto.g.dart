// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_match_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlatformMatchResponseDtoMatchTypeEnum
    _$platformMatchResponseDtoMatchTypeEnum_none =
    const PlatformMatchResponseDtoMatchTypeEnum._('none');
const PlatformMatchResponseDtoMatchTypeEnum
    _$platformMatchResponseDtoMatchTypeEnum_exact =
    const PlatformMatchResponseDtoMatchTypeEnum._('exact');
const PlatformMatchResponseDtoMatchTypeEnum
    _$platformMatchResponseDtoMatchTypeEnum_prefix =
    const PlatformMatchResponseDtoMatchTypeEnum._('prefix');
const PlatformMatchResponseDtoMatchTypeEnum
    _$platformMatchResponseDtoMatchTypeEnum_substring =
    const PlatformMatchResponseDtoMatchTypeEnum._('substring');

PlatformMatchResponseDtoMatchTypeEnum
    _$platformMatchResponseDtoMatchTypeEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$platformMatchResponseDtoMatchTypeEnum_none;
    case 'exact':
      return _$platformMatchResponseDtoMatchTypeEnum_exact;
    case 'prefix':
      return _$platformMatchResponseDtoMatchTypeEnum_prefix;
    case 'substring':
      return _$platformMatchResponseDtoMatchTypeEnum_substring;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlatformMatchResponseDtoMatchTypeEnum>
    _$platformMatchResponseDtoMatchTypeEnumValues = new BuiltSet<
        PlatformMatchResponseDtoMatchTypeEnum>(const <PlatformMatchResponseDtoMatchTypeEnum>[
  _$platformMatchResponseDtoMatchTypeEnum_none,
  _$platformMatchResponseDtoMatchTypeEnum_exact,
  _$platformMatchResponseDtoMatchTypeEnum_prefix,
  _$platformMatchResponseDtoMatchTypeEnum_substring,
]);

Serializer<PlatformMatchResponseDtoMatchTypeEnum>
    _$platformMatchResponseDtoMatchTypeEnumSerializer =
    new _$PlatformMatchResponseDtoMatchTypeEnumSerializer();

class _$PlatformMatchResponseDtoMatchTypeEnumSerializer
    implements PrimitiveSerializer<PlatformMatchResponseDtoMatchTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'exact': 'exact',
    'prefix': 'prefix',
    'substring': 'substring',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'exact': 'exact',
    'prefix': 'prefix',
    'substring': 'substring',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PlatformMatchResponseDtoMatchTypeEnum
  ];
  @override
  final String wireName = 'PlatformMatchResponseDtoMatchTypeEnum';

  @override
  Object serialize(
          Serializers serializers, PlatformMatchResponseDtoMatchTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlatformMatchResponseDtoMatchTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlatformMatchResponseDtoMatchTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlatformMatchResponseDto extends PlatformMatchResponseDto {
  @override
  final BuiltList<PlatformMatchResultDto> platforms;
  @override
  final PlatformMatchResponseDtoMatchTypeEnum matchType;
  @override
  final num total;
  @override
  final bool hasMore;

  factory _$PlatformMatchResponseDto(
          [void Function(PlatformMatchResponseDtoBuilder)? updates]) =>
      (new PlatformMatchResponseDtoBuilder()..update(updates))._build();

  _$PlatformMatchResponseDto._(
      {required this.platforms,
      required this.matchType,
      required this.total,
      required this.hasMore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        platforms, r'PlatformMatchResponseDto', 'platforms');
    BuiltValueNullFieldError.checkNotNull(
        matchType, r'PlatformMatchResponseDto', 'matchType');
    BuiltValueNullFieldError.checkNotNull(
        total, r'PlatformMatchResponseDto', 'total');
    BuiltValueNullFieldError.checkNotNull(
        hasMore, r'PlatformMatchResponseDto', 'hasMore');
  }

  @override
  PlatformMatchResponseDto rebuild(
          void Function(PlatformMatchResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformMatchResponseDtoBuilder toBuilder() =>
      new PlatformMatchResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformMatchResponseDto &&
        platforms == other.platforms &&
        matchType == other.matchType &&
        total == other.total &&
        hasMore == other.hasMore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, matchType.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, hasMore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformMatchResponseDto')
          ..add('platforms', platforms)
          ..add('matchType', matchType)
          ..add('total', total)
          ..add('hasMore', hasMore))
        .toString();
  }
}

class PlatformMatchResponseDtoBuilder
    implements
        Builder<PlatformMatchResponseDto, PlatformMatchResponseDtoBuilder> {
  _$PlatformMatchResponseDto? _$v;

  ListBuilder<PlatformMatchResultDto>? _platforms;
  ListBuilder<PlatformMatchResultDto> get platforms =>
      _$this._platforms ??= new ListBuilder<PlatformMatchResultDto>();
  set platforms(ListBuilder<PlatformMatchResultDto>? platforms) =>
      _$this._platforms = platforms;

  PlatformMatchResponseDtoMatchTypeEnum? _matchType;
  PlatformMatchResponseDtoMatchTypeEnum? get matchType => _$this._matchType;
  set matchType(PlatformMatchResponseDtoMatchTypeEnum? matchType) =>
      _$this._matchType = matchType;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  bool? _hasMore;
  bool? get hasMore => _$this._hasMore;
  set hasMore(bool? hasMore) => _$this._hasMore = hasMore;

  PlatformMatchResponseDtoBuilder() {
    PlatformMatchResponseDto._defaults(this);
  }

  PlatformMatchResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platforms = $v.platforms.toBuilder();
      _matchType = $v.matchType;
      _total = $v.total;
      _hasMore = $v.hasMore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformMatchResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformMatchResponseDto;
  }

  @override
  void update(void Function(PlatformMatchResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformMatchResponseDto build() => _build();

  _$PlatformMatchResponseDto _build() {
    _$PlatformMatchResponseDto _$result;
    try {
      _$result = _$v ??
          new _$PlatformMatchResponseDto._(
              platforms: platforms.build(),
              matchType: BuiltValueNullFieldError.checkNotNull(
                  matchType, r'PlatformMatchResponseDto', 'matchType'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'PlatformMatchResponseDto', 'total'),
              hasMore: BuiltValueNullFieldError.checkNotNull(
                  hasMore, r'PlatformMatchResponseDto', 'hasMore'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platforms';
        platforms.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlatformMatchResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
