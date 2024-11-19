import 'package:flutter/material.dart';

import '../../topg.dart';

class ChatTextField extends StatefulWidget {
  final String? labelText;
  final TextStyle? labelStyle;
  final Widget? leading;
  final List<Widget>? actions;
  final InputDecoration? textFieldDecoration;
  final void Function(String value) onSend;
  final double height;
  final double width;
  final EdgeInsetsGeometry textFieldPadding;
  const ChatTextField({
    required this.onSend,
    this.labelText,
    this.labelStyle,
    this.textFieldDecoration,
    this.leading,
    this.actions,
    this.height = 70,
    this.width = double.infinity,
    this.textFieldPadding = EdgeInsets.zero,
    super.key,
  });

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  late final TextEditingController controller;
  bool canSend = false;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(_onListen);
  }

  void _onListen() {
    if (controller.text.isEmpty) {
      setState(() {
        canSend = false;
      });
    } else {
      setState(() {
        canSend = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final chatTheme = theme.chat;
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ColoredBox(
        color: theme.colorScheme.surface,
        child: Row(
          children: [
            widget.leading ?? const SizedBox.shrink(),
            Expanded(
              child: Padding(
                padding: widget.textFieldPadding,
                child: TextField(
                  controller: controller,
                  decoration: widget.textFieldDecoration ??
                      InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: widget.labelText,
                        labelStyle: widget.labelStyle,
                      ),
                ),
              ),
            ),
            ...!canSend && widget.actions != null
                ? widget.actions!
                : [
                    IconButton(
                      onPressed: canSend
                          ? () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              widget.onSend(controller.text);
                              controller.clear();
                            }
                          : null,
                      icon: const Icon(Icons.send),
                      color: chatTheme.buttonActiveColor,
                      disabledColor: chatTheme.buttonDisabledColor,
                      splashColor: chatTheme.splashColor,
                    ),
                  ],
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.removeListener(() {});
    controller.dispose();
    super.dispose();
  }
}
