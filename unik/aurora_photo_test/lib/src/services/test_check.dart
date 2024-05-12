import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../clients/test_check_client.dart';
// import '../models/test_check_response.dart';

@singleton
class TestCheckService {
  final Dio _client;

  const TestCheckService(@testCheckClient this._client);

  Future<TestCheckResponse> sendPhoto(String path) async {
    Future<FormData> createFormData() async => FormData.fromMap(
          {
            'photo': await MultipartFile.fromFile(path, filename: 'test.jpg'),
          },
        );

    final response = await _client.post<dynamic>(
      'test_check',
      data: {
        'photo': await createFormData(),
      },
    );

    return TestCheckResponse.fromJson(response.data as Map<String, dynamic>);
  }
}

class TestCheckResponse {
  const TestCheckResponse();
  factory TestCheckResponse.fromJson(Map<String, dynamic> json) =>
      const TestCheckResponse();
}
