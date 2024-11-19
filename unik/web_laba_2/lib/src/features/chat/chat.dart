import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/locale.dart';
import 'package:topg/topg.dart';

import '../../di/chat_di.dart';
import '../../routes/app_router/app_router.dart';

class Chat extends ConsumerWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatNotifier = ref.watch(SocketChatDi.chatNotifier.notifier);
    final chat = ref.watch(SocketChatDi.chatNotifier);
    final theme = TopGTheme.of(context);
    final backgroundImage = theme.mode == TopGMode.light
        ? const AssetImage('assets/back.png')
        : const AssetImage('assets/background_dark.png');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(S.of(context).chat),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            unawaited(chatNotifier.leaveChat());
            unawaited(context.router.maybePop());
          },
          icon: const Icon(Icons.chevron_left),
        ),
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            alignment: Alignment.topCenter,
            image: backgroundImage,
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(0.7),
          ),
          Positioned(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 0,
            right: 0,
            top: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: ChatView(
                    messageList: chat.maybeMap(
                      orElse: () => [],
                      resolved: (value) => value.messageList.reversed.toList(),
                    ),
                  ),
                ),
                ChatTextField(
                  labelText: S.of(context).message,
                  onSend: (text) async {
                    await chatNotifier.sendMessage(
                      message: text,
                      author: MessageAuthor.you,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
