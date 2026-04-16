// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_problem_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiProblemResponseDto extends ApiProblemResponseDto {
  @override
  final String type;
  @override
  final String title;
  @override
  final num status;
  @override
  final String detail;
  @override
  final String? instance;
  @override
  final JsonObject? extensions;

  factory _$ApiProblemResponseDto(
          [void Function(ApiProblemResponseDtoBuilder)? updates]) =>
      (new ApiProblemResponseDtoBuilder()..update(updates))._build();

  _$ApiProblemResponseDto._(
      {required this.type,
      required this.title,
      required this.status,
      required this.detail,
      this.instance,
      this.extensions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'ApiProblemResponseDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        title, r'ApiProblemResponseDto', 'title');
    BuiltValueNullFieldError.checkNotNull(
        status, r'ApiProblemResponseDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        detail, r'ApiProblemResponseDto', 'detail');
  }

  @override
  ApiProblemResponseDto rebuild(
          void Function(ApiProblemResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiProblemResponseDtoBuilder toBuilder() =>
      new ApiProblemResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiProblemResponseDto &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        instance == other.instance &&
        extensions == other.extensions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, instance.hashCode);
    _$hash = $jc(_$hash, extensions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiProblemResponseDto')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('instance', instance)
          ..add('extensions', extensions))
        .toString();
  }
}

class ApiProblemResponseDtoBuilder
    implements Builder<ApiProblemResponseDto, ApiProblemResponseDtoBuilder> {
  _$ApiProblemResponseDto? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  num? _status;
  num? get status => _$this._status;
  set status(num? status) => _$this._status = status;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _instance;
  String? get instance => _$this._instance;
  set instance(String? instance) => _$this._instance = instance;

  JsonObject? _extensions;
  JsonObject? get extensions => _$this._extensions;
  set extensions(JsonObject? extensions) => _$this._extensions = extensions;

  ApiProblemResponseDtoBuilder() {
    ApiProblemResponseDto._defaults(this);
  }

  ApiProblemResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _instance = $v.instance;
      _extensions = $v.extensions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiProblemResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiProblemResponseDto;
  }

  @override
  void update(void Function(ApiProblemResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiProblemResponseDto build() => _build();

  _$ApiProblemResponseDto _build() {
    final _$result = _$v ??
        new _$ApiProblemResponseDto._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ApiProblemResponseDto', 'type'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ApiProblemResponseDto', 'title'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ApiProblemResponseDto', 'status'),
            detail: BuiltValueNullFieldError.checkNotNull(
                detail, r'ApiProblemResponseDto', 'detail'),
            instance: instance,
            extensions: extensions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
