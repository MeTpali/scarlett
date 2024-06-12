import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../di/dota_di.dart';
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
        const SizedBox(height: 30),
        SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 120,
                child: RadialScoreWidget(
                  child: Text(
                    '${pick.radiantRate}%',
                    style: TextStyle(
                      fontSize: 20,
                      color: pick.radiantRate == 50
                          ? null
                          : pick.radiantRate > 50
                              ? TopGColors.yGreen
                              : TopGColors.yRed,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  lineColor: TopGColors.yGreen,
                  freeColor: TopGColors.yRed,
                  lineWidth: 5,
                  percent: pick.radiantRate / 100,
                ),
              ),
              SizedBox(
                width: 120,
                child: RadialScoreWidget(
                  child: Text(
                    '${pick.direRate}%',
                    style: TextStyle(
                      fontSize: 20,
                      color: pick.direRate == 50
                          ? null
                          : pick.direRate > 50
                              ? TopGColors.yGreen
                              : TopGColors.yRed,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  lineColor: TopGColors.yGreen,
                  freeColor: TopGColors.yRed,
                  lineWidth: 5,
                  percent: pick.direRate / 100,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
