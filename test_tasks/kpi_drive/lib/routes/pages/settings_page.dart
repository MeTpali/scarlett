import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kpi_drive/theme/constants.dart';
import 'package:kpi_drive/theme/kpi_theme.dart';

import '../../features/settings/settings_block.dart';
import '../../features/settings/settings_tyle.dart';
import '../../features/settings/settings_view.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = KpiTheme.of(context);
    final themeMode = theme.mode;
    final themeTitle = themeMode == KpiThemeMode.light ? 'Светлая' : 'Тёмная';
    final themeIcon = themeMode == KpiThemeMode.light
        ? Icons.sunny
        : Icons.nightlight_round_outlined;

    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
        centerTitle: true,
      ),
      body: SettingsView(
        settingBlocksList: [
          SettingsBlock(
            title: 'Общие',
            hasDivider: true,
            settingsList: [
              SettingsTyle(
                title: themeTitle,
                icon: themeIcon,
                onTap: () async {
                  await KpiThemeProvider.toggleThemeOf(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
