import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/s.dart';

import '../di/di.dart';
import '../di/photo_test_di.dart';
import '../features/camera/manager.dart';
import '../features/main_button/main_button.dart';
import '../features/settings/button.dart';
import '../theme/constants/types.dart';
import 'app_router/app_router.dart';

@RoutePage()
class PhotoCheckScreen extends ConsumerWidget {
  const PhotoCheckScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoCheckModel = ref.watch(PhotoTestDi.photoCheckProvider);

    final sendButtonType = photoCheckModel.maybeMap(
      orElse: () => TopGType.disabled,
      photo: (_) => TopGType.action,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).connectionSettings),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            final camerasManager = getIt.get<CamerasManager>();
            unawaited(camerasManager.getAvailableCameras());
            unawaited(context.router.maybePop());
          },
          icon: const Icon(Icons.chevron_left),
        ),
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: photoCheckModel.maybeWhen(
              photo: (path) => Image.file(
                File(path),
                fit: BoxFit.fill,
              ),
              orElse: () => const Placeholder(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: MainButton(
                    title: const Text('Переделать'),
                    onPressed: () {
                      final camerasManager = getIt.get<CamerasManager>();
                      unawaited(camerasManager.getAvailableCameras());
                      unawaited(context.router.maybePop());
                    },
                    type: TopGType.lightRegular,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: MainButton(
                    title: const Text('Отправить'),
                    onPressed: photoCheckModel.maybeMap(
                      orElse: () => () {},
                      photo: (photo) => () {
                        final testResultsNotifier =
                            ref.watch(PhotoTestDi.testResultsProvider.notifier);
                        unawaited(testResultsNotifier.sendPhoto(photo.path));
                        unawaited(
                          context.router.push(const TestResultsRoute()),
                        );
                      },
                    ),
                    type: sendButtonType,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
