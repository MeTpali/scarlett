import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import 'app_router/app_router.dart';

final foo = ChatView(
  messageList: [
    MessageModel(
      author: MessageAuthor.you,
      name: 'Sex',
      message: 'Вокруг нас тут хоровод',
      date: DateTime.now(),
    ),
    MessageModel(
      author: MessageAuthor.interlocutor,
      name: 'Instructor',
      message: 'misterprovokacizkogotblsprovocirobval',
      date: DateTime.now(),
    ),
    MessageModel(
      author: MessageAuthor.you,
      name: 'Sex',
      message:
          'Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод ',
      date: DateTime.now(),
    ),
    MessageModel(
      author: MessageAuthor.interlocutor,
      name: 'Instructor',
      message:
          'misterprovokacizkogotblsprovocirobval misterprovokacizkogotblsprovocirobval misterprovokacizkogotblsprovocirobval misterprovokacizkogotblsprovocirobval',
      date: DateTime.now(),
    ),
    MessageModel(
      author: MessageAuthor.you,
      name: 'Sex',
      message:
          'Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод Вокруг нас тут хоровод ',
      date: DateTime.now(),
    ),
    MessageModel(
      author: MessageAuthor.you,
      name: 'Sex',
      message: 'Вокруг нас тут хоровод  ',
      date: DateTime.now(),
    ),
  ],
);

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final backgroundImage = theme.mode == TopGMode.light
        ? const AssetImage('assets/back.png')
        : const AssetImage('assets/background_dark.png');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(S.of(context).chat),
        centerTitle: true,
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
                Expanded(child: foo),
                ChatTextField(
                  labelText: S.of(context).message,
                  onSend: (text) {
                    print(text);
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
