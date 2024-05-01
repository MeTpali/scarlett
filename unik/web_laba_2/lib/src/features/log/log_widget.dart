import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../di/chat_di.dart';

class LogWidget extends ConsumerWidget {
  const LogWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final log = ref.watch(SocketChatDi.logNotifier);
    return log.maybeMap(
      orElse: () => const Center(
        child: CircularProgressIndicator(),
      ),
      resolved: (resolvedLog) => ChatView(
        messageList: resolvedLog.messages.reversed.toList(),
      ),
    );
  }
}
