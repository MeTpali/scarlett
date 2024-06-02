import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../../di/dota_di.dart';
import '../../model_lists/meta_list.dart';

class AddMetaWidget extends ConsumerWidget {
  const AddMetaWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addHeroNotifier = ref.watch(DotaDi.addHero.notifier);
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
                        addHeroNotifier.updateName(value);
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
                        addHeroNotifier.updateName(value);
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
                        addHeroNotifier.updateName(value);
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
                        addHeroNotifier.updateName(value);
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
                        addHeroNotifier.updateName(value);
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
              title: const Text('Add'),
              onPressed: () async {},
              type: TopGType.statistics,
            ),
          ),
          const SizedBox(height: 15),
          const MetaList(shrinkWrap: true),
        ],
      ),
    );
  }
}
