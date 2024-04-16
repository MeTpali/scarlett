import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Chat'), //TODO
          centerTitle: true,
          actions: [
            SettingsButton(
              onTap: () {}, //TODO
            ),
          ],
        ),
        body: const Column(
          children: [
            Expanded(child: Placeholder()),
            ChatTextField(),
          ],
        ),
      );
}

class ChatTextField extends StatelessWidget {
  const ChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Sex',
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.send))
        ],
      ),
    );
  }
}
