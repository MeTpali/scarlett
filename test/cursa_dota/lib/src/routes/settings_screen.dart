import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';
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
        scrolledUnderElevation: 0,
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
                  final mode = themeMode == TopGMode.light
                      ? TopGMode.dark
                      : TopGMode.light;
                  await TopG.setThemeModeOf(context, mode);
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
                onTap: () async {},
              ),
            ],
          ),
          // Изменение героев
          SettingsBlock(
            title: S.of(context).localeName == 'en' ? 'Heroes' : 'Герои',
            hasDivider: true,
            settingsList: [
              // Добавление героя
              SettingsTyle(
                title: S.of(context).localeName == 'en'
                    ? 'Adding a Hero'
                    : 'Добавление героя',
                icon: Icons.add,
                onTap: () async {
                  await context.router.push(const AddHeroRoute());
                },
              ),
              // Изменение героя
              SettingsTyle(
                title: S.of(context).localeName == 'en'
                    ? 'Changing hero'
                    : 'Изменение героя',
                icon: Icons.update,
                onTap: () async {
                  await context.router.push(const UpdateHeroRoute());
                },
              ),
              // Удаление героя
              SettingsTyle(
                title: S.of(context).localeName == 'en'
                    ? 'Deleting hero'
                    : 'Удаление героя',
                icon: Icons.delete,
                lastInBlock: true,
                onTap: () async {
                  await context.router.push(const DeleteHeroRoute());
                },
              ),
            ],
          ),
          // Изменение меты
          SettingsBlock(
            title: S.of(context).localeName == 'en' ? 'Meta' : 'Мета',
            hasDivider: true,
            settingsList: [
              // Добавление записи в мету
              SettingsTyle(
                title: S.of(context).localeName == 'en'
                    ? 'Adding an entry'
                    : 'Добавление записи',
                icon: Icons.add,
                onTap: () async {
                  await context.router.push(const AddMetaRoute());
                },
              ),
              // Изменение записи в мете
              SettingsTyle(
                title: S.of(context).localeName == 'en'
                    ? 'Changing an entry'
                    : 'Изменение записи',
                icon: Icons.update,
                onTap: () async {
                  await context.router.push(const UpdateMetaRoute());
                },
              ),
              // Удаление записи из меты
              SettingsTyle(
                title: S.of(context).localeName == 'en'
                    ? 'Deleting an entry'
                    : 'Удаление записи',
                icon: Icons.delete,
                lastInBlock: true,
                onTap: () async {
                  await context.router.push(const DeleteMetaRoute());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
