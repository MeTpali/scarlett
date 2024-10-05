import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kpi_drive/models/messages/messages_model.dart';
import 'package:kpi_drive/models/response/response_model.dart';
import 'package:kpi_drive/utils/utils.dart';

import '../clients/kpi_client.dart';

@singleton
class BoardService {
  final Dio _client;
  const BoardService(@kpiClient this._client);

  Future<ResponseModel> fetchTasks({
    required DateTime periodStart,
    required DateTime periodEnd,
  }) async {
    final data = {
      'period_start': DateTimeUtils.periodToBackwardString(periodStart),
      'period_end': DateTimeUtils.periodToBackwardString(periodEnd),
      'period_key': 'month',
      'requested_mo_id': 478,
      'behaviour_key': 'task,kpi_task',
      'with_result': false,
      'response_fields': 'name,indicator_to_mo_id,parent_id,order',
      'auth_user_id': 2,
    };
    try {
      final json = await _client.post<dynamic>(
        '/get_mo_indicators',
        options: Options(
          headers: {'Authorization': 'Bearer 48ab34464a5573519725deb5865cc74c'},
        ),
        data: FormData.fromMap(data),
      );

      json.data['runtimeType'] = 'success';
      final response = ResponseModel.fromJson(json.data);
      return response;
    } on DioException catch (e) {
      return ResponseModel.error(
        message: MessagesModel(error: e.message == null ? null : [e.message!]),
        status: e.response?.statusCode.toString() ?? '',
      );
    }
  }

  Future<ResponseModel> dragAndDrop({
    required DateTime periodStart,
    required DateTime periodEnd,
    required int taskId,
    required int parentId,
    required int order,
  }) async {
    try {
      final data = FormData.fromMap({
        'period_start': DateTimeUtils.periodToBackwardString(periodStart),
        'period_end': DateTimeUtils.periodToBackwardString(periodEnd),
        'period_key': 'month',
        'indicator_to_mo_id': taskId,
        'field_name': ['parent_id', 'order'],
        'field_value': [parentId, order],
        'auth_user_id': 2,
      });

      final json = await _client.post<dynamic>(
        '/save_indicator_instance_field',
        options: Options(
          headers: {'Authorization': 'Bearer 48ab34464a5573519725deb5865cc74c'},
        ),
        data: data,
      );

      json.data['runtimeType'] = 'success';
      final responseModel = ResponseModel.fromJson(json.data);
      return responseModel;
    } on DioException catch (e) {
      return ResponseModel.error(
        message: MessagesModel(error: e.message == null ? null : [e.message!]),
        status: e.response?.statusCode.toString() ?? '',
      );
    }
  }
}
