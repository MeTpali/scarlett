import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/dota_di.dart';
import '../tyles/meta.dart';

class MetaList extends ConsumerWidget {
  final bool shrinkWrap;
  const MetaList({
    this.shrinkWrap = false,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metaList = ref.watch(DotaDi.metaList);
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      itemCount: metaList.list.length,
      itemBuilder: (context, index) => MetaTyle(meta: metaList.list[index]),
    );
  }
}
