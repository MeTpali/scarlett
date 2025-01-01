import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

import '../../models/heroes/hero_model.dart';

class HeroTyle extends StatelessWidget {
  final HeroModel hero;
  final void Function(HeroModel hero)? onTap;
  const HeroTyle({
    required this.hero,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        onTap: () => onTap?.call(hero),
        splashColor: Colors.transparent,
        leading: DotaTileImage(url: hero.icon),
        title: Text(
          hero.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 30),
        ),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      );
}
