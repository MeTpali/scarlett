import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import '../../di/chat_di.dart';
import '../../routes/app_router/app_router.dart';
import 'formatters.dart';

class ConnectionForm extends ConsumerWidget {
  const ConnectionForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(SocketChatDi.connectionSettingsNotifier);
    final log = ref.watch(SocketChatDi.logNotifier);
    final logButtonType = log.maybeMap(
      orElse: () => TopGType.disabled,
      resolved: (_) => TopGType.action,
    );
    final logButtonText = log.maybeMap(
      orElse: () => S.of(context).noSavedMessages,
      resolved: (_) =>
          '${S.of(context).viewV} ${S.of(context).savedMessages.toLowerCase()}',
    );

    final chatNotifier = ref.watch(SocketChatDi.chatNotifier.notifier);
    final settingsButtonType = settings.map(
      uncompleted: (_) => TopGType.disabled,
      completed: (_) => TopGType.action,
    );

    final settingsNotifier =
        ref.watch(SocketChatDi.connectionSettingsNotifier.notifier);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextField(
              onChanged: (nickname) {
                settingsNotifier.updateNickname(nickname);
              },
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: S.of(context).nickname,
              ),
              inputFormatters: [NicknameInputFormatter()],
              keyboardType: TextInputType.text,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 15),
          log.maybeMap(
            idle: (_) => const SizedBox.shrink(),
            orElse: () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MainButton(
                title: Text(
                  logButtonText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                onPressed: () {
                  unawaited(
                    context.router.push(const LogRoute()),
                  );
                },
                type: logButtonType,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    onChanged: (host) {
                      settingsNotifier.updateIp(host);
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: S.of(context).host,
                    ),
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Text(
                ':',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    onChanged: (port) {
                      settingsNotifier.updatePort(port);
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: S.of(context).port,
                    ),
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: MainButton(
              title: Text(
                S.of(context).connectToServer,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              onPressed: () {
                unawaited(
                  settings.whenOrNull(
                    completed: (nickname, host, port) async {
                      await chatNotifier.connectServer(
                        nickname: nickname,
                        host: host,
                        port: port,
                      );
                    },
                  ),
                );
                unawaited(
                  context.router.push(const ChatRoute()),
                );
              },
              type: settingsButtonType,
            ),
          ),
        ],
      ),
    );
  }
}
