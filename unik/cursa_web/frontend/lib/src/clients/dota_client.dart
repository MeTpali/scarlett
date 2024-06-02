import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../features/log/log.dart';
import 'log_interceptor.dart';

const dotaClient = Named('TKSBPClient');

Dio createDotaClient(Log logger) {
  final Dio client = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.0.101:1337',
    ),
  )..interceptors.addAll([logInterceptor(logger)]);

  return client;
}
