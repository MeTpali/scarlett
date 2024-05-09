import 'package:flutter/material.dart';
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListView.builder(
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
              if (radiant.length < 5)
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: SkeletButton(
                    title: const Text(
                      '+',
                      style: TextStyle(fontSize: 32),
                    ),
                    onPressed: onAdd,
                    type: TopGType.knowledge,
                    height: 48,
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListView.builder(
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
              if (dire.length < 5)
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: SkeletButton(
                    title: const Text(
                      '+',
                      style: TextStyle(fontSize: 32),
                    ),
                    onPressed: onAdd,
                    type: TopGType.knowledge,
                    height: 48,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class SkeletButton extends StatelessWidget {
  final Widget title;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final TopGType type;
  final double height;
  final double width;
  const SkeletButton({
    required this.title,
    required this.onPressed,
    required this.type,
    this.onLongPress,
    this.height = 70,
    this.width = double.infinity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onPress = type == TopGType.disabled ? null : onPressed;
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPress,
        onLongPress: onLongPress,
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(type.resolveColor()),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                color: type.resolveColor(),
                width: 4,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        child: title,
      ),
    );
  }
}
