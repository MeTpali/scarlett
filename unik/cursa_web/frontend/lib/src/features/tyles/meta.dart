import 'package:flutter/material.dart';

import '../../models/heroes/hero_model.dart';
import '../../models/meta_list/meta_list_model.dart';

class MetaTyle extends StatelessWidget {
  final MetaListRate meta;
  final void Function(HeroModel hero)? onTap;
  const MetaTyle({
    required this.meta,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(meta.id.toString()),
              Text(meta.hero1),
              Text(meta.hero2),
              Text(meta.disadvantage),
              Text(meta.winrate),
              Text(meta.matchesPlayed.toString()),
            ],
          ),
        ),
      );
}
