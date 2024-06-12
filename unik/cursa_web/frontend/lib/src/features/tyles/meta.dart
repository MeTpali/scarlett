import 'package:flutter/material.dart';

import '../../models/meta/meta_model.dart';
import '../../models/meta_list/meta_list_model.dart';

class MetaTyle extends StatelessWidget {
  final MetaListRate meta;
  final void Function(MetaModel hero)? onTap;
  const MetaTyle({
    required this.meta,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Card(
        child: InkWell(
          enableFeedback: onTap != null,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          onTap: () => onTap?.call(meta.meta),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      meta.meta.id.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: Text(
                        '${meta.meta.hero1Id}) ${meta.hero1}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '${meta.meta.hero2Id}) ${meta.hero2}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(meta.meta.disadvantage,
                          textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text(
                        meta.meta.winrate,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        meta.meta.matchesPlayed.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
