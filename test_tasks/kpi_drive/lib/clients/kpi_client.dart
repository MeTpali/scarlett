import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

const kpiClient = Named('KpiClient');

Dio createKpiClient() {
  final Dio client = Dio(
    BaseOptions(
      baseUrl: 'https://development.kpi-drive.ru/_api/indicators',
    ),
  )..interceptors.addAll([TalkerDioLogger()]);

  return client;
}
