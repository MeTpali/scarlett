import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

import '../../models/hero_rate_model/hero_rate_model.dart';

class DotaTeamsView extends StatelessWidget {
  final List<HeroRateModel> radiant;
  final List<HeroRateModel> dire;
  final void Function(int id, bool isRadiant) onLongPress;
  final void Function(bool isRadiant) onAdd;
  const DotaTeamsView({
    required this.radiant,
    required this.dire,
    required this.onLongPress,
    required this.onAdd,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
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
                    onLongPress: () => onLongPress(radiant[i].id, true),
                    backgroundType: i.isEven
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
                    onLongPress: () => onLongPress(dire[i].id, false),
                    type: RateTileType.right,
                    backgroundType: i.isEven
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
                      isRadiant: false,
                    ),
                  ),
              ],
            ),
          ),
        ],
      );
}

class SkeletButton extends StatelessWidget {
  final Widget title;
  final void Function(bool isRadiant) onPressed;
  final VoidCallback? onLongPress;
  final TopGType type;
  final double height;
  final double width;
  final bool isRadiant;
  const SkeletButton({
    required this.title,
    required this.onPressed,
    required this.type,
    this.onLongPress,
    this.height = 70,
    this.width = double.infinity,
    this.isRadiant = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onPress = type == TopGType.disabled ? null : onPressed;
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () => onPress?.call(isRadiant),
        onLongPress: onLongPress,
        style: ButtonStyle(
          shadowColor: WidgetStateProperty.all(Colors.transparent),
          surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
          backgroundColor: WidgetStateProperty.all(
            TopGColors.yGreen.withOpacity(0.1),
          ),
          foregroundColor: WidgetStateProperty.all(type.resolveColor(context)),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                color: type.resolveColor(context),
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
