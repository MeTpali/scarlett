import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../clients/dota_client.dart';
import '../models/heroes/hero_model.dart';
import '../models/heroes/heroes.dart';

@singleton
class HeroesService {
  final Dio _client;

  const HeroesService(@dotaClient this._client);

  Future<Heroes> getAll() async {
    final response = await _client.get<List<dynamic>>('/heroes');
    final json = <String, dynamic>{
      'heroes': response.data,
    };

    return Heroes.fromJson(json);
  }

  Future<HeroModel> getById(int id) async {
    final response = await _client.get<Map<String, dynamic>>('/heroes/$id');
    return HeroModel.fromJson(response.data!);
  }

  Future<void> add(HeroModel hero) async {
    await _client.post<Map<String, dynamic>>(
      '/heroes',
      data: {
        'name': hero.name,
        'icon': hero.icon,
      },
    );
  }

  Future<void> updateById(HeroModel hero) async {
    await _client.patch<Map<String, dynamic>>(
      '/heroes/${hero.id}',
      data: {
        'name': hero.name,
        'icon': hero.icon,
      },
    );
  }

  Future<void> deleteById(int id) async {
    await _client.delete<Map<String, dynamic>>('/heroes/$id');
  }
}
