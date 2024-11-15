import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pure_analog/models/chat.dart';
import 'package:pure_analog/resources/jsons.dart';

import '../../models/chats.dart';

class ChatsNotifier extends StateNotifier<ChatsModel> {
  ChatsNotifier() : super(ChatsModel.resolved(chats: []));

  Future<void> init() => loadChats();

  Future<void> loadChats() async {
    state = ChatsModel.loading();
    try {
      final resp = json.decode(await rootBundle.loadString(Jsons.chats))
          as Map<String, dynamic>;

      await Future.delayed(const Duration(seconds: 3));
      final chats = <ChatModel>[];

      for (final chat in resp['chats']) {
        chats.add(ChatModel.fromJson(chat));
      }

      state = ChatsModel.resolved(chats: chats);
    } catch (e) {
      state = ChatsModel.error(message: e.toString());
    }
  }
}
