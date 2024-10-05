import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  final VoidCallback onTap;
  const SettingsButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.settings,
      ),
    );
  }
}
