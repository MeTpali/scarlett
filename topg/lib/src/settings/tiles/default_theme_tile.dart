import 'package:flutter/material.dart';

import '../../theme/topg_theme.dart';
import '../settings_tyle.dart';

class DefaultThemeTile extends StatelessWidget {
  final String title;
  const DefaultThemeTile({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);

    final themeIcon = theme.map(
      light: (_) => Icons.sunny,
      dark: (_) => Icons.nightlight_round_outlined,
    );

    return SettingsTyle(
      title: title,
      icon: themeIcon,
      onTap: () async {},
    );
  }
}
