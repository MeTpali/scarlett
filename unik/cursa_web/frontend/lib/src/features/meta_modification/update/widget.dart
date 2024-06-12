import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../../di/dota_di.dart';
import '../../model_lists/meta_list.dart';

class UpdateMetaWidget extends ConsumerWidget {
  const UpdateMetaWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateMetaNotifier = ref.watch(DotaDi.updateMeta.notifier);
    final updateMeta = ref.watch(DotaDi.updateMeta);
    final updateButtonType = updateMeta.id == 0 ||
            updateMeta.hero1Id == 0 ||
            updateMeta.hero2Id == 0 ||
            updateMeta.disadvantage.isEmpty ||
            updateMeta.winrate.isEmpty ||
            updateMeta.matchesPlayed == 0
        ? TopGType.disabled
        : TopGType.statistics;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        updateMetaNotifier.updateId(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Идентификатор',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        updateMetaNotifier.updateFirstHeroId(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Идентификатор первого героя',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        updateMetaNotifier.updateSecondHeroId(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Идентификатор второго героя',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        updateMetaNotifier.updateDisadvantage(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Удобство',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        updateMetaNotifier.updateWinrate(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Винрейт',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        updateMetaNotifier.updateMatchesPlayed(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Сыграно матчей',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Update'),
              onPressed: () async {
                await updateMetaNotifier.update();
                await context.router.maybePop();
              },
              type: updateButtonType,
            ),
          ),
          const SizedBox(height: 15),
          const MetaList(shrinkWrap: true, showFilters: true),
        ],
      ),
    );
  }
}
