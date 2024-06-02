import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../clients/dota_client.dart';
import '../models/meta/meta.dart';
import '../models/meta/meta_model.dart';

@singleton
class MetaService {
  final Dio _client;

  const MetaService(@dotaClient this._client);

  Future<Meta> getAll() async {
    final response = await _client.get<List<dynamic>>('/meta');
    final json = <String, dynamic>{
      'meta': response.data,
    };

    return Meta.fromJson(json);
  }

  Future<MetaModel> getById(int id) async {
    final response = await _client.get<Map<String, dynamic>>('/meta/$id');
    return MetaModel.fromJson(response.data!);
  }

  Future<void> add(MetaModel meta) async {
    await _client.post<Map<String, dynamic>>(
      '/meta',
      data: {
        'winrate': meta.winrate,
        'matches_played': meta.matchesPlayed,
        'disadvantage': meta.disadvantage,
        'hero1_id': meta.hero1Id,
        'hero2_id': meta.hero2Id,
      },
    );
  }

  Future<void> updateById(MetaModel meta) async {
    await _client.patch<Map<String, dynamic>>(
      '/meta/${meta.id}',
      data: {
        'winrate': meta.winrate,
        'matches_played': meta.matchesPlayed,
        'disadvantage': meta.disadvantage,
        'hero1_id': meta.hero1Id,
        'hero2_id': meta.hero2Id,
      },
    );
  }

  Future<void> deleteById(int id) async {
    await _client.delete<Map<String, dynamic>>('/meta/$id');
  }
}
