import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../di/dota_di.dart';
import '../../models/hero_picker_model/hero_picker_model.dart';
import '../../models/heroes/hero_model.dart';
import '../tyles/hero.dart';

final _focusNode = FocusNode(debugLabel: 'sort');

class HeroPicker extends ConsumerWidget {
  final void Function(HeroModel hero)? onTap;
  const HeroPicker({required this.onTap, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heroPick = ref.watch(DotaDi.heroPicker);
    final heroesPicker = ref.watch(DotaDi.heroPicker.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 100,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    onChanged: (value) {
                      heroesPicker.filter(value);
                    },
                  ),
                ),
              ),
              MenuAnchor(
                childFocusNode: _focusNode,
                menuChildren: [
                  Text(''),
                  for (final sortType in SortType.values)
                    MenuItemButton(
                      onPressed: () {
                        heroesPicker.setSortType(sortType);
                      },
                      child: FaIcon(sortType.resolveIcon()),
                    ),
                ],
                builder: (context, controller, child) => IconButton(
                  focusNode: _focusNode,
                  onPressed: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  icon: Icon(heroPick.sortType.resolveIcon()),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: heroPick.heroes.length,
            itemBuilder: (context, index) => Card(
              child: HeroTyle(
                hero: heroPick.heroes[index],
                onTap: onTap,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
