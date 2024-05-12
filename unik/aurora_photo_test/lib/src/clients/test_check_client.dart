import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../features/log/log.dart';
import 'log_interceptor.dart';

const testCheckClient = Named('TestCheckClient');

Dio createTestCheckClient(Log logger) {
  final Dio client = Dio(
    BaseOptions(
      baseUrl: 'https://muramasa666.com/api/v1',
    ),
  )..interceptors.addAll([logInterceptor(logger)]);

  return client;
}
