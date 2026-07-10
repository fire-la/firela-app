//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:firela_api/src/api_util.dart';
import 'package:firela_api/src/model/holding_pnl_response_dto.dart';

class InvestmentApi {

  final Dio _dio;

  final Serializers _serializers;

  const InvestmentApi(this._dio, this._serializers);

  /// Get per-holding unrealized + realized P&amp;L
  /// Average-cost unrealized P&amp;L per account × commodity, plus cumulative realized P&amp;L on sold lots (method &#x3D; FIFO | average, default average).
  ///
  /// Parameters:
  /// * [region] - Region code for tenant context
  /// * [asOf] - As-of date (ISO 8601), defaults to today
  /// * [accountId] - Scope to a single account
  /// * [method] - Realized-P&L lot-matching method (default average). Does not affect the average-cost unrealized basis.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [HoldingPnlResponseDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<HoldingPnlResponseDto>> holdingPnlControllerGetHoldingPnl({ 
    required String region,
    String? asOf,
    String? accountId,
    String? method,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/{region}/investment/holdings/pnl'.replaceAll('{' r'region' '}', encodeQueryParameter(_serializers, region, const FullType(String)).toString());
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
      if (asOf != null) r'asOf': encodeQueryParameter(_serializers, asOf, const FullType(String)),
      if (accountId != null) r'accountId': encodeQueryParameter(_serializers, accountId, const FullType(String)),
      if (method != null) r'method': encodeQueryParameter(_serializers, method, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    HoldingPnlResponseDto? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(HoldingPnlResponseDto),
      ) as HoldingPnlResponseDto;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<HoldingPnlResponseDto>(
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
