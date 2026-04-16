// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewListResponseDto extends ReviewListResponseDto {
  @override
  final BuiltList<ReviewSummaryDto> items;
  @override
  final num total;
  @override
  final num page;
  @override
  final num limit;
  @override
  final bool hasMore;

  factory _$ReviewListResponseDto(
          [void Function(ReviewListResponseDtoBuilder)? updates]) =>
      (new ReviewListResponseDtoBuilder()..update(updates))._build();

  _$ReviewListResponseDto._(
      {required this.items,
      required this.total,
      required this.page,
      required this.limit,
      required this.hasMore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'ReviewListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'ReviewListResponseDto', 'total');
    BuiltValueNullFieldError.checkNotNull(
        page, r'ReviewListResponseDto', 'page');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'ReviewListResponseDto', 'limit');
    BuiltValueNullFieldError.checkNotNull(
        hasMore, r'ReviewListResponseDto', 'hasMore');
  }

  @override
  ReviewListResponseDto rebuild(
          void Function(ReviewListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewListResponseDtoBuilder toBuilder() =>
      new ReviewListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewListResponseDto &&
        items == other.items &&
        total == other.total &&
        page == other.page &&
        limit == other.limit &&
        hasMore == other.hasMore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, hasMore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewListResponseDto')
          ..add('items', items)
          ..add('total', total)
          ..add('page', page)
          ..add('limit', limit)
          ..add('hasMore', hasMore))
        .toString();
  }
}

class ReviewListResponseDtoBuilder
    implements Builder<ReviewListResponseDto, ReviewListResponseDtoBuilder> {
  _$ReviewListResponseDto? _$v;

  ListBuilder<ReviewSummaryDto>? _items;
  ListBuilder<ReviewSummaryDto> get items =>
      _$this._items ??= new ListBuilder<ReviewSummaryDto>();
  set items(ListBuilder<ReviewSummaryDto>? items) => _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  num? _page;
  num? get page => _$this._page;
  set page(num? page) => _$this._page = page;

  num? _limit;
  num? get limit => _$this._limit;
  set limit(num? limit) => _$this._limit = limit;

  bool? _hasMore;
  bool? get hasMore => _$this._hasMore;
  set hasMore(bool? hasMore) => _$this._hasMore = hasMore;

  ReviewListResponseDtoBuilder() {
    ReviewListResponseDto._defaults(this);
  }

  ReviewListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _page = $v.page;
      _limit = $v.limit;
      _hasMore = $v.hasMore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewListResponseDto;
  }

  @override
  void update(void Function(ReviewListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewListResponseDto build() => _build();

  _$ReviewListResponseDto _build() {
    _$ReviewListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ReviewListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'ReviewListResponseDto', 'total'),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'ReviewListResponseDto', 'page'),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'ReviewListResponseDto', 'limit'),
              hasMore: BuiltValueNullFieldError.checkNotNull(
                  hasMore, r'ReviewListResponseDto', 'hasMore'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReviewListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
