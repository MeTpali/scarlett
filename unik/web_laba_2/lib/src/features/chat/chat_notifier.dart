import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/topg.dart';

import '../../models/chat_model.dart';
import '../log/log_provider.dart';

class ChatNotifier extends StateNotifier<ChatModel> {
  final LogProvider _logProvider;
  ChatNotifier({
    required LogProvider logProvider,
  })  : _logProvider = logProvider,
        super(const ChatModel.idle());
  Socket? socket;
  String name = '_Knownaim_';

  Future<void> connectServer({
    required String nickname,
    required String host,
    required int port,
  }) async {
    name = nickname;
    state = const ChatModel.loading();
    try {
      socket = await Socket.connect(host, port);
    } on SocketException catch (_) {
      state = const ChatModel.error(
        message:
            '😞Упс, произошла ошибка.\nПроверьте правильность ввода данных.',
      );
      return;
    }

    socket?.write(nickname);

    socket?.listen(
      (event) {
        final response = String.fromCharCodes(event);

        updateMessagesFromString(response, nickname);
      },
      onDone: () {
        state = const ChatModel.error(message: '😦Сервер закрылся');
        socket?.destroy();
      },
      onError: (_) {
        state = const ChatModel.error(
          message:
              '😞Упс, произошла ошибка на сервере.\nПопробуйте подключиться позже.',
        );
        socket?.destroy();
      },
    );

    state = ChatModel.resolved(
      nickname: nickname,
      messageList: [],
    );
  }

  Future<void> updateMessagesFromString(
      String messages, String nickname) async {
    const splitter = LineSplitter();
    final messageList = splitter.convert(messages);

    final newList = <MessageModel>[];
    final oldList = List<MessageModel>.from(
      state.maybeMap(
        orElse: () => <MessageModel>[],
        resolved: (value) => value.messageList,
      ),
      growable: true,
    );

    for (final message in messageList) {
      final messageComponents = message.split(': ');
      if (messageComponents.length < 2) {
        continue;
      }

      final nick = messageComponents[0].trim();
      final text = messageComponents[1].trim();
      final author =
          nickname == nick ? MessageAuthor.you : MessageAuthor.interlocutor;

      final messageModel = MessageModel(
        author: author,
        name: nick,
        message: text,
        date: null,
      );

      if (nick != 'CHAT') {
        newList.add(messageModel);
        await _logProvider.logMessage(key: name, message: text, nickname: nick);
      }
    }

    if (messageList.length > 1) {
      state = ChatModel.resolved(nickname: nickname, messageList: newList);
      return;
    }
    oldList.addAll(newList);
    state = ChatModel.resolved(nickname: nickname, messageList: oldList);
  }

  Future<void> leaveChat() async {
    await socket?.close();
  }

  Future<void> sendMessage({
    required String message,
    required MessageAuthor author,
    String? nickname,
  }) async {
    socket?.write(message);
    await _addMessage(
      message: message,
      author: author,
      nickname: nickname,
    );
  }

  Future<void> _addMessage({
    required String message,
    required MessageAuthor author,
    String? nickname,
  }) async {
    state.whenOrNull(
      resolved: (nick, list) {
        final messageList = List<MessageModel>.from(list, growable: true);
        messageList.add(
          MessageModel(
            name: nickname,
            author: author,
            message: message,
            date: null,
          ),
        );
        state = ChatModel.resolved(nickname: nick, messageList: messageList);
      },
    );
    if (nickname != 'CHAT') {
      await _logProvider.logMessage(
          key: name, message: message, nickname: name);
    }
  }

  @override
  void dispose() {
    socket?.destroy();
    super.dispose();
  }
}
