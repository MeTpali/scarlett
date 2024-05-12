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
          'path: ${prettifyJson(options.path)}',
          'query: ${prettifyJson(options.queryParameters)}',
          'data: ${prettifyJson(options.data)}',
        ].join('\n'),
      );
      handler.next(options);
    },
    onResponse: (response, handler) {
      logger.d(
        [
          'path: ${prettifyJson(response.requestOptions.path)}',
          'data: ${prettifyJson(response.data)}',
        ].join('\n'),
      );
      handler.next(response);
    },
    onError: (exception, handler) {
      logger.e(
        [
          'error: ${prettifyJson(exception.error)}',
          'message: ${prettifyJson(exception.message)}',
          'data: ${prettifyJson(exception.response?.data)}',
        ].join('\n'),
      );
      handler.next(exception);
    },
  );
}
