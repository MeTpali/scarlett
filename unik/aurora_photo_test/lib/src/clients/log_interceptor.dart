import 'dart:convert';

import 'package:dio/dio.dart';

import '../features/log/log.dart';

InterceptorsWrapper logInterceptor(Log logger) {
  String prettifyJson(Object? object) =>
      const JsonEncoder.withIndent(' ').convert(object);

  return InterceptorsWrapper(
    onRequest: (options, handler) {
      logger.d(
        [
          'headers: ${options.headers}',
          'path: ${options.path}',
          'query: ${options.queryParameters}',
          'data: ${options.data}',
        ].join('\n'),
      );
      handler.next(options);
    },
    onResponse: (response, handler) {
      logger.d(
        [
          'path: ${response.requestOptions.path}',
          'data: ${response.data}',
        ].join('\n'),
      );
      handler.next(response);
    },
    onError: (exception, handler) {
      logger.e(
        [
          'error: ${exception.error}',
          'message: ${exception.message}',
          'data: ${exception.response?.data}',
        ].join('\n'),
      );
      handler.next(exception);
    },
  );
}
