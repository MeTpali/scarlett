import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../chat_screen.dart';
import '../settings_screen.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: ChatRoute.page, initial: true)
      ];
}
