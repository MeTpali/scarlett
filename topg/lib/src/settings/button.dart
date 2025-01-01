import 'package:flutter/material.dart';

import '../../topg.dart';

class SettingsIconButton extends StatelessWidget {
  final VoidCallback onTap;
  const SettingsIconButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final settingsTheme = theme.settings;
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.settings,
        color: settingsTheme.buttonColor,
      ),
    );
  }
}
