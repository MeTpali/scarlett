import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../../di/dota_di.dart';

class AddHeroWidget extends ConsumerWidget {
  const AddHeroWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addHeroNotifier = ref.watch(DotaDi.addHero.notifier);
    final addHero = ref.watch(DotaDi.addHero);
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
                  addHeroNotifier.updateName(value);
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
                  addHeroNotifier.updateIcon(value);
                },
                decoration: const InputDecoration(labelText: 'Icon'),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Add'),
              onPressed: () async {
                await addHeroNotifier.add();
                await context.router.maybePop();
              },
              type: addHero.name.isEmpty || addHero.icon.isEmpty
                  ? TopGType.disabled
                  : TopGType.knowledge,
            ),
          ),
        ],
      ),
    );
  }
}
