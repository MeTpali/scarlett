import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../../di/dota_di.dart';
import '../../model_lists/hero_picker.dart';
import '../../tyles/hero.dart';

class DeleteHeroWidget extends ConsumerWidget {
  const DeleteHeroWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deleteHero = ref.watch(DotaDi.deleteHero);
    final deleteHeroNotifier = ref.watch(DotaDi.deleteHero.notifier);
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
                          deleteHeroNotifier.chooseHero(hero);
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
          if (deleteHero.hero != null) ...[
            const SizedBox(height: 15),
            HeroTyle(hero: deleteHero.hero!),
          ],
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Delete'),
              onPressed: () async {
                await deleteHeroNotifier.deleteHero();
                await context.router.maybePop();
              },
              type: deleteHero.hero == null
                  ? TopGType.disabled
                  : TopGType.statistics,
            ),
          ),
        ],
      ),
    );
  }
}
