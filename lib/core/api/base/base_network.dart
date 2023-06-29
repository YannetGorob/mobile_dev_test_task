import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile_dev_test_task/core/api/base/api_result.dart';
import 'package:mobile_dev_test_task/core/api/base/request_method.dart';

class BaseNetwork {
  BaseNetwork(this._dio);

  static const String _unexpectedErrorMessage = 'Unexpected error';
  final Dio _dio;

  Future<ApiResult<T>> sendRequest<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? parseResponse,
    T Function(List<dynamic> json)? parseListResponse,
    RequestMethod method = RequestMethod.post,
    Map<dynamic, dynamic>? body,
  }) async {
    if (parseResponse == null && parseListResponse == null && T != Null) {
      throw ArgumentError();
    }

    try {
      final result = await _dio.request<dynamic>(
        path,
        queryParameters: queryParameters,
        data: body,
        options: Options(method: method.name),
      );

      final data = result.data;

      if (kDebugMode) {
        print(data);
      }

      if (result.statusCode == HttpStatus.ok ||
          result.statusCode == HttpStatus.created) {
        if (data is Map<String, dynamic> && parseResponse != null) {
          final value = parseResponse(data);
          return ApiResult<T>.success(value);
        } else if (data is List && parseListResponse != null) {
          final value = parseListResponse(data);
          return ApiResult<T>.success(value);
        } else {
          return ApiResult<T>.failure(_unexpectedErrorMessage);
        }
      } else if (data is Map) {
        final error = data['error'];
        if (error is String) {
          return ApiResult<T>.failure(error);
        } else {
          return ApiResult<T>.failure(_unexpectedErrorMessage);
        }
      } else {
        return ApiResult<T>.failure(_unexpectedErrorMessage);
      }
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print('$error: {$stacktrace}');
      }
      return ApiResult<T>.failure(_unexpectedErrorMessage);
    }
  }
}
