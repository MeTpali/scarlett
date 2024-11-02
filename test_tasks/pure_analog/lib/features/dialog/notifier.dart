import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pure_analog/models/dialog.dart';
import 'package:pure_analog/models/message.dart';

import '../../resources/jsons.dart';

class DialogNotifier extends StateNotifier<DialogModel> {
  DialogNotifier() : super(DialogModel.loading());

  Future<void> loadUser(String id) async {
    state = DialogModel.loading();
    try {
      final resp = json.decode(await rootBundle.loadString(Jsons.dialog(id)))
          as Map<String, dynamic>;
      resp['runtimeType'] = 'resolved';
      await Future.delayed(const Duration(seconds: 3));

      state = DialogModel.fromJson(resp);
    } catch (e) {
      state = DialogModel.error(message: e.toString());
    }
  }

  void sendMessage(String text) => state.maybeWhen(
        resolved: (avatarId, userId, hasStory, temptationCount, messages) {
          final messageList =
              List<PureMessageModel>.from(messages, growable: true);
          messageList.add(
            PureMessageModel(
              timestamp: DateTime.now(),
              text: text,
              isRead: true,
              isMy: true,
            ),
          );

          state = DialogModel.resolved(
            avatarId: avatarId,
            userId: userId,
            hasStory: hasStory,
            temptationCount: temptationCount,
            messages: messageList,
          );
          return null;
        },
        orElse: () {
          return null;
        },
      );
}
