import 'package:flutter/material.dart';

import '../../topg.dart';

class ChatTextField extends StatefulWidget {
  final String? labelText;
  final void Function(String value) onSend;
  const ChatTextField({
    required this.onSend,
    this.labelText,
    super.key,
  });

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final chatTheme = theme.chat;
    return ColoredBox(
      color: theme.colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: widget.labelText,
                ),
                onChanged: (value) => setState(() {
                  text = value;
                }),
              ),
            ),
            IconButton(
              onPressed: text.isNotEmpty
                  ? () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      widget.onSend(text);
                    }
                  : null,
              icon: const Icon(Icons.send),
              color: chatTheme.buttonActiveColor,
              disabledColor: chatTheme.buttonDisabledColor,
              splashColor: chatTheme.splashColor,
            ),
          ],
        ),
      ),
    );
  }
}
