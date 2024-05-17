import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../clients/test_check_client.dart';

@singleton
class TestCheckService {
  final Dio _client;

  const TestCheckService(@testCheckClient this._client);

  Future<TestCheckResponse> sendPhoto(String path) async {
    final fileName = path.split('/').last;
    final data = FormData.fromMap({
      'photo': [
        await MultipartFile.fromFile(
          path,
          filename: fileName,
        )
      ],
    });

    // final response = await _client.post<dynamic>(
    //   '/upload',
    //   data: data,
    // );

    return TestCheckResponse();
  }
}

class TestCheckResponse {
  const TestCheckResponse();
  factory TestCheckResponse.fromJson(Map<String, dynamic> json) =>
      const TestCheckResponse();
}
