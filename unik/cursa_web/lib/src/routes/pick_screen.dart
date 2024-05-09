import 'package:auto_route/auto_route.dart';
import 'package:cursa_web/src/features/dota_teams/view.dart';
import 'package:flutter/material.dart';
import 'package:i18n/s.dart';
import 'package:topg/topg.dart';

import '../models/hero_model.dart';
import 'app_router/app_router.dart';

@RoutePage()
class PickScreen extends StatelessWidget {
  const PickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).connectionSettings),
        centerTitle: true,
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: Column(
        children: [
          DotaTeamsView(
            radiant: radiant,
            dire: dire,
            onLongPress: () {},
            onAdd: () {},
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Update'),
              onPressed: () {},
              type: TopGType.action,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Update'),
              onPressed: () {},
              type: TopGType.action,
            ),
          ),
        ],
      ),
    );
  }
}

final radiant = [
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
];

final dire = [
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
  const HeroRateModel(
    id: 'sex',
    name: 'Keeper of the light',
    rate: 90.2,
    url:
        'https://www.dotabuff.com/assets/heroes/abaddon-d92ae1c43fdd883ba8502775fcc9679028fcde28a8ef3bdea87e95024a61a480.jpg',
  ),
];
