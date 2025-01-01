import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:topg/locale.dart';
import 'package:pure_analog/di/pure_analog_di.dart';
import 'package:topg/topg.dart';

import '../../features/incognito/payment_modal.dart';

@RoutePage()
class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = TopGTheme.of(context);
    final themeMode = theme.mode;
    final themeTitle = themeMode == TopGMode.light
        ? S.of(context).lightTheme
        : S.of(context).darkTheme;
    final themeIcon = themeMode == TopGMode.light
        ? Icons.sunny
        : Icons.nightlight_round_outlined;

    final incognito = ref.watch(PureAnalogDi.incognitoProvider);
    final incognitoNotifier =
        ref.watch(PureAnalogDi.incognitoProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
        centerTitle: true,
      ),
      body: SettingsView(
        settingBlocksList: [
          // Общие настройки
          SettingsBlock(
            title: "Общие",
            hasDivider: true,
            settingsList: [
              // Смена темы
              SettingsTyle(
                title: themeTitle,
                icon: themeIcon,
                onTap: () async {},
              ),
              // Смена языка
              SettingsTyle(
                title: S.of(context).language,
                icon: Icons.language,
                lastInBlock: true,
                trailing: Text(
                  S.of(context).localeFull,
                  style: const TextStyle(color: TopGColors.blueCrayola),
                ),
                onTap: () async {},
              ),
            ],
          ),
          // Инкогнито
          SettingsBlock(
            title: S.of(context).chat,
            hasDivider: true,
            settingsList: [
              // Ключение режима
              SettingsTyle(
                title: S.of(context).localeFull == 'Русский'
                    ? 'Режим инкогнито'
                    : 'Incognito mode',
                onTap: () async {
                  incognito.map(
                    active: (_) => incognitoNotifier.deactivate(),
                    inactive: (_) => incognitoNotifier.tryActivate(),
                  );
                },
                trailing: Text(
                  incognito.map(
                    active: (_) => S.of(context).localeFull == 'Русский'
                        ? 'Включен'
                        : 'Activated',
                    inactive: (_) => S.of(context).localeFull == 'Русский'
                        ? 'Выключен'
                        : 'Disabled',
                  ),
                  style: const TextStyle(color: TopGColors.blueCrayola),
                ),
              ),
              // Смена языка
              SettingsTyle(
                title:
                    S.of(context).localeFull == 'Русский' ? 'Маски' : 'Masks',
                lastInBlock: true,
                trailing: Text(
                  '${incognito.left}',
                  style: const TextStyle(color: TopGColors.blueCrayola),
                ),
                onTap: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) => IncognitoPaymentModal(
                      onClose: () => context.router.maybePop(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
