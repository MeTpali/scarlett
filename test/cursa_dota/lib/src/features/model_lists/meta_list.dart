import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/dota_di.dart';
import '../../models/meta/meta_model.dart';
import '../tyles/meta.dart';

class MetaList extends ConsumerWidget {
  final bool shrinkWrap;
  final bool showFilters;
  final void Function(MetaModel hero)? onTap;
  const MetaList({
    this.shrinkWrap = false,
    super.key,
    this.onTap,
    this.showFilters = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metaList = ref.watch(DotaDi.metaList);
    final metaListNotifier = ref.watch(DotaDi.metaList.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showFilters)
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      metaListNotifier.filter1(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Фильтр1',
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
                      metaListNotifier.filter1(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Фильтр2',
                    ),
                  ),
                ),
              ),
            ],
          ),
        const SizedBox(height: 15),
        ListView.builder(
          shrinkWrap: shrinkWrap,
          itemCount: metaList.list.length,
          itemBuilder: (context, index) => MetaTyle(
            meta: metaList.list[index],
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
