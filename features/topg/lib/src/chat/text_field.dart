import 'package:flutter/material.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({super.key});

  @override
  Widget build(BuildContext context) => const ColoredBox(
        color: Colors.blueAccent,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
            child: Row(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Сообщение',
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
