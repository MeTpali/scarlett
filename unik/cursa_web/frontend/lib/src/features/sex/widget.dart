import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/dota_di.dart';

class SexWidget extends ConsumerWidget {
  const SexWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sex = ref.watch(DotaDi.sexProvider.notifier);
    return ElevatedButton(
      onPressed: () async {
        await sex.haha();
      },
      child: Text('sex'),
    );
  }
}
