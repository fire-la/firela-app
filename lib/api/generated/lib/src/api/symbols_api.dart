//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:firela_api/src/api_util.dart';

class SymbolsApi {
  final Dio _dio;

  final Serializers _serializers;

  const SymbolsApi(this._dio, this._serializers);

  /// symbolController
  ///
  ///
  /// Parameters:
  /// * [region] - Region code (cn, us, de)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> symbolController({
    required String region,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/market/symbols/yahoo/batch-update'.replaceAll(
        '{' r'region' '}',
        encodeQueryParameter(_serializers, region, const FullType(String))
            .toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Gather symbol data for specific date
  /// Retrieve historical symbol data for a specific date
  ///
  /// Parameters:
  /// * [dataSource] - Data source provider
  /// * [dateString] - Date in ISO 8601 format (YYYY-MM-DD)
  /// * [symbol] - Symbol identifier (e.g., ticker code)
  /// * [region] - Region code (cn, us, de)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> symbolControllerGatherSymbolForDate({
    required String dataSource,
    required String dateString,
    required String symbol,
    required String region,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/market/symbols/{dataSource}/{symbol}/{dateString}'
        .replaceAll(
            '{' r'dataSource' '}',
            encodeQueryParameter(
                    _serializers, dataSource, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'dateString' '}',
            encodeQueryParameter(
                    _serializers, dateString, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'symbol' '}',
            encodeQueryParameter(_serializers, symbol, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'region' '}',
            encodeQueryParameter(_serializers, region, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Get symbol data
  /// Retrieve detailed symbol information including optional historical data
  ///
  /// Parameters:
  /// * [dataSource] - Data source provider
  /// * [symbol] - Symbol identifier (e.g., ticker code)
  /// * [region] - Region code (cn, us, de)
  /// * [includeHistoricalData] - Include historical price data (0 or 1)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> symbolControllerGetSymbolData({
    required String dataSource,
    required String symbol,
    required String region,
    JsonObject? includeHistoricalData,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/market/symbols/{dataSource}/{symbol}'
        .replaceAll(
            '{' r'dataSource' '}',
            encodeQueryParameter(
                    _serializers, dataSource, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'symbol' '}',
            encodeQueryParameter(_serializers, symbol, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'region' '}',
            encodeQueryParameter(_serializers, region, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (includeHistoricalData != null)
        r'includeHistoricalData': encodeQueryParameter(
            _serializers, includeHistoricalData, const FullType(JsonObject)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Search for symbols
  /// Search symbols by query with optional filters for asset class, area, and indices
  ///
  /// Parameters:
  /// * [region] - Region code (cn, us, de)
  /// * [includeIndices] - Include index symbols in results
  /// * [assetSubClass] - Asset sub-class filter
  /// * [assetClass] - Asset class filter
  /// * [area] - Geographic area filter (e.g., CN, US)
  /// * [query] - Search query string
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> symbolControllerLookupSymbol({
    required String region,
    JsonObject? includeIndices,
    JsonObject? assetSubClass,
    JsonObject? assetClass,
    JsonObject? area,
    JsonObject? query,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/market/symbols/lookup'.replaceAll(
        '{' r'region' '}',
        encodeQueryParameter(_serializers, region, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (includeIndices != null)
        r'includeIndices': encodeQueryParameter(
            _serializers, includeIndices, const FullType(JsonObject)),
      if (assetSubClass != null)
        r'assetSubClass': encodeQueryParameter(
            _serializers, assetSubClass, const FullType(JsonObject)),
      if (assetClass != null)
        r'assetClass': encodeQueryParameter(
            _serializers, assetClass, const FullType(JsonObject)),
      if (area != null)
        r'area': encodeQueryParameter(
            _serializers, area, const FullType(JsonObject)),
      if (query != null)
        r'query': encodeQueryParameter(
            _serializers, query, const FullType(JsonObject)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }
}
