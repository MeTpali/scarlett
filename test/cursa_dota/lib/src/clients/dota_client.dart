import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../features/log/log.dart';
import 'log_interceptor.dart';

const dotaClient = Named('DotaClient');

Dio createDotaClient(Log logger) {
  final Dio client = Dio(
    BaseOptions(),
  )..interceptors.addAll([logInterceptor(logger)]);

  return client;
}
