//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:firela_api/src/api_util.dart';
import 'package:firela_api/src/model/provider_sync_dto.dart';
import 'package:firela_api/src/model/provider_sync_response_dto.dart';
import 'package:firela_api/src/model/supported_providers_response_dto.dart';

class ProviderSyncApi {
  final Dio _dio;

  final Serializers _serializers;

  const ProviderSyncApi(this._dio, this._serializers);

  /// Get supported providers
  /// Returns a list of all providers supported by the sync endpoint.
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
  /// Returns a [Future] containing a [Response] with a [SupportedProvidersResponseDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SupportedProvidersResponseDto>>
      providerSyncControllerGetSupportedProviders({
    required String region,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/{region}/bean/import/provider/supported'.replaceAll(
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

    SupportedProvidersResponseDto? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(SupportedProvidersResponseDto),
            ) as SupportedProvidersResponseDto;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SupportedProvidersResponseDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Check if provider is supported
  /// Returns whether a specific provider is supported.
  ///
  /// Parameters:
  /// * [providerName] - Provider name to check
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
  Future<Response<void>> providerSyncControllerIsProviderSupported({
    required String providerName,
    required String region,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/api/v1/{region}/bean/import/provider/{providerName}/supported'
            .replaceAll(
                '{' r'providerName' '}',
                encodeQueryParameter(
                        _serializers, providerName, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'region' '}',
                encodeQueryParameter(
                        _serializers, region, const FullType(String))
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

  /// Sync transactions from financial data provider
  ///  Accepts raw transactions from external financial data providers, transforms them to Beancount format, and processes them through the ingestion pipeline.  **Supported Providers:** - **plaid**: Plaid API (US, Canada, Europe) - **teller**: Teller API (US) - **truelayer**: TrueLayer Open Banking (UK, Europe) - **gocardless**: GoCardless Bank Account Data (Europe) - **simplefin**: SimpleFIN (Self-hosted) - **yodlee**: Yodlee (Global) - **beancount-direct**: Beancount format transactions  **Processing Flow:** 1. Transform raw data via provider adapter 2. Validate transaction format 3. Deduplicate using originalId 4. Classify using rule engine 5. Route low-confidence to Review Center 6. Persist validated transactions
  ///
  /// Parameters:
  /// * [providerName] - Provider name
  /// * [region] - Region code
  /// * [providerSyncDto]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ProviderSyncResponseDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ProviderSyncResponseDto>> providerSyncControllerSync({
    required String providerName,
    required JsonObject region,
    required ProviderSyncDto providerSyncDto,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/{region}/bean/import/provider/{providerName}/sync'
        .replaceAll(
            '{' r'providerName' '}',
            encodeQueryParameter(
                    _serializers, providerName, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'region' '}',
            encodeQueryParameter(
                    _serializers, region, const FullType(JsonObject))
                .toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ProviderSyncDto);
      _bodyData = _serializers.serialize(providerSyncDto, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ProviderSyncResponseDto? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(ProviderSyncResponseDto),
            ) as ProviderSyncResponseDto;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ProviderSyncResponseDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
