import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../di/dota_di.dart';
import '../../routes/app_router/app_router.dart';
import '../dota_teams/view.dart';
import '../model_lists/hero_picker.dart';

class PickWidget extends ConsumerWidget {
  const PickWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pick = ref.watch(DotaDi.pickNotifier);
    final pickNotifier = ref.watch(DotaDi.pickNotifier.notifier);
    return Column(
      children: [
        DotaTeamsView(
          radiant: pick.radiant,
          dire: pick.dire,
          onLongPress: (id, isRadiant) {
            pickNotifier.remove(id, isRadiant);
          },
          onAdd: (isRadiant) async {
            await showDialog<dynamic>(
              context: context,
              builder: (context) => Material(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 100,
                  child: HeroPicker(
                    onTap: (hero) {
                      pickNotifier.add(hero, isRadiant);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: MainButton(
            title: const Text('Heroes'),
            onPressed: () async {
              await context.router.push(const DeleteHeroRoute());
            },
            type: TopGType.action,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: MainButton(
            title: const Text('Meta'),
            onPressed: () {},
            type: TopGType.action,
          ),
        ),
      ],
    );
  }
}
