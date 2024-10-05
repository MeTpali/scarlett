import 'package:flutter/material.dart';
import 'package:kpi_drive/theme/kpi_theme.dart';

import 'settings_tyle.dart';

class SettingsBlock extends StatelessWidget {
  final bool hasDivider;
  final List<SettingsTyle> settingsList;
  final String title;
  const SettingsBlock({
    required this.title,
    required this.settingsList,
    this.hasDivider = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final blockColor = KpiTheme.of(context).colorScheme.primaryContainer;
    return Card(
      borderOnForeground: false,
      color: blockColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              title,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: settingsList.length,
            separatorBuilder: (BuildContext context, int index) {
              if (hasDivider && index != settingsList.length - 1) {
                return Divider(
                  indent: 56,
                  height: 0,
                  thickness: 0.5,
                );
              }

              return const SizedBox.shrink();
            },
            itemBuilder: (BuildContext context, int index) =>
                settingsList[index],
          ),
        ],
      ),
    );
  }
}
