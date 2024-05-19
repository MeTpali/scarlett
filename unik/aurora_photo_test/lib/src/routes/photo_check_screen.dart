import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../di/di.dart';
import '../di/photo_test_di.dart';
import '../features/camera/manager.dart';
import '../features/settings/button.dart';
import '../theme/topg_theme.dart';
import 'app_router/app_router.dart';

@RoutePage()
class PhotoCheckScreen extends ConsumerWidget {
  const PhotoCheckScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoCheckModel = ref.watch(PhotoTestDi.photoCheckProvider);
    final testResultsNotifier =
        ref.watch(PhotoTestDi.testResultsProvider.notifier);
    final theme = TopGTheme.of(context);
    final settingsTheme = theme.settings;

    return Scaffold(
      backgroundColor: settingsTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: settingsTheme.backgroundColor,
        toolbarHeight: 28,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: photoCheckModel.maybeWhen(
              photo: (path) {
                if (kIsWeb) {
                  return Image.network(
                    path,
                    fit: BoxFit.fill,
                  );
                }
                return Image.file(
                  File(path),
                  fit: BoxFit.fill,
                );
              },
              orElse: () => const Placeholder(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: IconButton(
                    onPressed: () {
                      final camerasManager = getIt.get<CamerasManager>();
                      unawaited(camerasManager.getAvailableCameras());
                      unawaited(context.router.maybePop());
                    },
                    icon: Icon(
                      size: 40,
                      Icons.change_circle,
                      color: settingsTheme.buttonColor,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: IconButton(
                    onPressed: photoCheckModel.maybeMap(
                      orElse: () => () {},
                      photo: (photo) => () {
                        testResultsNotifier.setPath(photo.path);
                        unawaited(
                          context.router.push(const TestResultsRoute()),
                        );
                      },
                    ),
                    icon: Icon(
                      size: 40,
                      Icons.send,
                      color: settingsTheme.buttonColor,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: SettingsButton(
                    onTap: () async {
                      await context.router.push(const SettingsRoute());
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
