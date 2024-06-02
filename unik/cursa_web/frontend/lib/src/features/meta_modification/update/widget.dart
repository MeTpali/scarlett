import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../../di/dota_di.dart';
import '../../model_lists/hero_picker.dart';
import '../../tyles/hero.dart';

class UpdateHeroWidget extends ConsumerWidget {
  const UpdateHeroWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateHero = ref.watch(DotaDi.updateHero);
    final updateHeroNotifier = ref.watch(DotaDi.updateHero.notifier);
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  updateHeroNotifier.updateName(value);
                },
                decoration: const InputDecoration(labelText: 'Name'),
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  updateHeroNotifier.updateIcon(value);
                },
                decoration: const InputDecoration(labelText: 'Icon'),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Выбрать героя'),
              onPressed: () async {
                await showDialog<dynamic>(
                  context: context,
                  builder: (context) => Material(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 100,
                      child: HeroPicker(
                        onTap: (hero) {
                          updateHeroNotifier.chooseHero(hero);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                );
              },
              type: TopGType.statistics,
            ),
          ),
          if (updateHero.hero != null) ...[
            const SizedBox(height: 15),
            HeroTyle(hero: updateHero.hero!),
          ],
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Update'),
              onPressed: () async {
                await updateHeroNotifier.updateHero();
                await context.router.maybePop();
              },
              type: TopGType.statistics,
            ),
          ),
        ],
      ),
    );
  }
}
