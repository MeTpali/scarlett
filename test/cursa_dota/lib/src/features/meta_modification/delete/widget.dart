import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../../di/dota_di.dart';
import '../../model_lists/meta_list.dart';

class DeleteMetaWidget extends ConsumerWidget {
  const DeleteMetaWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deleteMetaNotifier = ref.watch(DotaDi.deleteMeta.notifier);
    final deleteMeta = ref.watch(DotaDi.deleteMeta);
    final deleteButtonType =
        deleteMeta.id == 0 ? TopGType.disabled : TopGType.warning;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                deleteMetaNotifier.updateId(value);
              },
              decoration: const InputDecoration(
                labelText: 'Идентификатор',
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              title: const Text('Delete'),
              onPressed: () async {
                await deleteMetaNotifier.delete();
                await context.router.maybePop();
              },
              type: deleteButtonType,
            ),
          ),
          const SizedBox(height: 15),
          MetaList(
            shrinkWrap: true,
            showFilters: true,
            onTap: (meta) async {
              await deleteMetaNotifier.delete(meta.id);
              await context.router.maybePop();
            },
          ),
        ],
      ),
    );
  }
}
