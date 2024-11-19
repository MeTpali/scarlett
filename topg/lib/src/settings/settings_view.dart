import 'package:flutter/material.dart';

import '../../topg.dart';

class SettingsView extends StatelessWidget {
  final List<SettingsBlock> _settingBlocksList;
  const SettingsView({
    required List<SettingsBlock> settingBlocksList,
    super.key,
  }) : _settingBlocksList = settingBlocksList;

  SettingsView.fromDefault({
    required List<SettingsBlock> settingBlocksList,
    super.key,
  }) : _settingBlocksList = [
          ...settingBlocksList,
        ];

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: _settingBlocksList.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (BuildContext context, int index) =>
            _settingBlocksList[index],
      );
}
