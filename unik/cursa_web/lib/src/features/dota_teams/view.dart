import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:topg/topg.dart';

import '../../models/hero_model.dart';

class DotaTeamsView extends StatelessWidget {
  final List<HeroRateModel> radiant;
  final List<HeroRateModel> dire;
  final VoidCallback onLongPress;
  final VoidCallback onAdd;
  const DotaTeamsView({
    super.key,
    required this.radiant,
    required this.dire,
    required this.onLongPress,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: radiant.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, i) => DotaRateTile(
              heroName: radiant[i].name,
              rate: radiant[i].rate,
              symbol: DotaTileImage(url: radiant[i].url),
              onLongPress: onLongPress,
              backgroundType: i % 2 == 0
                  ? RateTileBackgroundType.even
                  : RateTileBackgroundType.odd,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: dire.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, i) => DotaRateTile(
              heroName: dire[i].name,
              rate: dire[i].rate,
              symbol: DotaTileImage(url: dire[i].url),
              onLongPress: onLongPress,
              type: RateTileType.right,
              backgroundType: i % 2 == 0
                  ? RateTileBackgroundType.even
                  : RateTileBackgroundType.odd,
            ),
          ),
        ),
      ],
    );
  }
}
