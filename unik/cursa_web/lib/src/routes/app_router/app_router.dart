import 'package:auto_route/auto_route.dart';
import 'package:cursa_web/src/routes/pick_screen.dart';
import 'package:injectable/injectable.dart';

import '../settings_screen.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PickRoute.page, initial: true),
        AutoRoute(page: SettingsRoute.page),
      ];
}
