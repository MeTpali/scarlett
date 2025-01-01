import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import '../../main.dart';
import '../clients/dota_client.dart';
import '../models/heroes/hero_model.dart';
import '../models/heroes/heroes.dart';

final dotaList = [
  "abaddon",
  "alchemist",
  "ancient-apparition",
  "anti-mage",
  "arc-warden",
  "axe",
  "bane",
  "batrider",
  "beastmaster",
  "bloodseeker",
  "bounty-hunter",
  "brewmaster",
  "bristleback",
  "broodmother",
  "centaur-warrunner",
  "chaos-knight",
  "chen",
  "clinkz",
  "clockwerk",
  "crystal-maiden",
  "dark-seer",
  "dark-willow",
  "dawnbreaker",
  "dazzle",
  "death-prophet",
  "disruptor",
  "doom",
  "dragon-knight",
  "drow-ranger",
  "earth-spirit",
  "earthshaker",
  "elder-titan",
  "ember-spirit",
  "enchantress",
  "enigma",
  "faceless-void",
  "grimstroke",
  "gyrocopter",
  "hoodwink",
  "huskar",
  "invoker",
  "io",
  "jakiro",
  "juggernaut",
  "keeper-of-the-light",
  "kunkka",
  "legion-commander",
  "leshrac",
  "lich",
  "lifestealer",
  "lina",
  "lion",
  "lone-druid",
  "luna",
  "lycan",
  "magnus",
  "marci",
  "mars",
  "medusa",
  "meepo",
  "mirana",
  "monkey-king",
  "morphling",
  "naga-siren",
  "nature's-prophet",
  "necrophos",
  "night-stalker",
  "nyx-assassin",
  "ogre-magi",
  "omniknight",
  "oracle",
  "outworld-destroyer",
  "pangolier",
  "phantom-assassin",
  "phantom-lancer",
  "phoenix",
  "primal-beast",
  "puck",
  "pudge",
  "pugna",
  "queen-of-pain",
  "razor",
  "riki",
  "rubick",
  "sand-king",
  "shadow-demon",
  "shadow-fiend",
  "shadow-shaman",
  "silencer",
  "skywrath-mage",
  "slardar",
  "slark",
  "snapfire",
  "sniper",
  "spectre",
  "spirit-breaker",
  "storm-spirit",
  "sven",
  "techies",
  "templar-assassin",
  "terrorblade",
  "tidehunter",
  "timbersaw",
  "tinker",
  "tiny",
  "treant-protector",
  "troll-warlord",
  "tusk",
  "underlord",
  "undying",
  "ursa",
  "vengeful-spirit",
  "venomancer",
  "viper",
  "visage",
  "void-spirit",
  "warlock",
  "weaver",
  "windranger",
  "winter-wyvern",
  "witch-doctor",
  "wraith-king",
  "zeus",
];

@singleton
class HeroesService {
  final Dio _client;

  const HeroesService(@dotaClient this._client);

  Future<Heroes> getAll() async {
    // Декодирование JSON-строки в Map
    final jsonData = await rootBundle.loadString('assets/images.json');
    final jsonPum = jsonDecode(jsonData) as Map<String, dynamic>;

    for (final hero in dotaList) {
      await Future.delayed(const Duration(seconds: 1));
      await add(HeroModel(id: 0, name: hero, icon: jsonPum[hero]));
    }

    final address = ipNotifier.value;
    final response = await _client.get<List<dynamic>>('$address/heroes');
    final json = <String, dynamic>{
      'heroes': response.data,
    };

    return Heroes.fromJson(json);
  }

  Future<HeroModel> getById(int id) async {
    final address = ipNotifier.value;
    final response =
        await _client.get<Map<String, dynamic>>('$address/heroes/$id');
    return HeroModel.fromJson(response.data!);
  }

  Future<void> add(HeroModel hero) async {
    final address = ipNotifier.value;
    await _client.post<Map<String, dynamic>>(
      '$address/heroes',
      data: {
        'name': hero.name,
        'icon': hero.icon,
      },
    );
  }

  Future<void> updateById(HeroModel hero) async {
    final address = ipNotifier.value;
    await _client.patch<Map<String, dynamic>>(
      '$address/heroes/${hero.id}',
      data: {
        'name': hero.name,
        'icon': hero.icon,
      },
    );
  }

  Future<void> deleteById(int id) async {
    final address = ipNotifier.value;
    await _client.delete<Map<String, dynamic>>('$address/heroes/$id');
  }
}
