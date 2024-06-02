import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import 'app_router/app_router.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final themeMode = theme.mode;
    final themeTitle = themeMode == TopGMode.light
        ? S.of(context).lightTheme
        : S.of(context).darkTheme;
    final themeIcon = themeMode == TopGMode.light
        ? Icons.sunny
        : Icons.nightlight_round_outlined;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
        centerTitle: true,
      ),
      body: SettingsView(
        settingBlocksList: [
          // Общие настройки
          SettingsBlock(
            title: S.of(context).settings,
            hasDivider: true,
            settingsList: [
              // Смена темы
              SettingsTyle(
                title: themeTitle,
                icon: themeIcon,
                onTap: () async {
                  await TopG.toggleThemeOf(context);
                },
              ),
              // Смена языка
              SettingsTyle(
                title: S.of(context).language,
                icon: Icons.language,
                trailing: Text(
                  S.of(context).localeFull,
                  style: const TextStyle(color: TopGColors.blueCrayola),
                ),
                onTap: () async {
                  await ScarlettLocalization.switchLocaleOf(context);
                },
              ),
              // Об авторе
              SettingsTyle(
                title: 'Об авторе',
                icon: themeIcon,
                lastInBlock: true,
                onTap: () async {
                  await context.router.push(const AuthorRoute());
                },
              ),
            ],
          ),
          // Изменение героев
          SettingsBlock(
            title: 'Heroes',
            hasDivider: true,
            settingsList: [
              // Добавление героя
              SettingsTyle(
                title: 'Добавление героя',
                icon: Icons.add,
                onTap: () async {
                  await context.router.push(const AddHeroRoute());
                },
              ),
              // Изменение героя
              SettingsTyle(
                title: 'Изменение героя',
                icon: Icons.update,
                onTap: () async {
                  await context.router.push(const UpdateHeroRoute());
                },
              ),
              // Удаление героя
              SettingsTyle(
                title: 'Удаление героя',
                icon: Icons.delete,
                lastInBlock: true,
                onTap: () async {
                  await context.router.push(const DeleteHeroRoute());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
