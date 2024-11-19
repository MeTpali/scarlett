import 'package:flutter/material.dart';

import '../theme_modes.dart';
import '../topg_theme.dart';

class DarkLightButton extends StatelessWidget {
  const DarkLightButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final icon = theme.map(
      light: (_) => Icons.sunny,
      dark: (_) => Icons.nightlight_round_outlined,
    );

    final mode = theme.map(
      light: (_) => TopGMode.dark,
      dark: (_) => TopGMode.light,
    );

    return ElevatedButton(
      onPressed: () async {
        await TopG.setThemeModeOf(context, mode);
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(11),
        elevation: 3,
      ),
      child: Icon(icon),
    );
  }
}
