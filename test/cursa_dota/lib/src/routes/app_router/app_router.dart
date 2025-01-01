import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../add_hero_screen.dart';
import '../add_meta_screen.dart';
import '../author_screen.dart';
import '../delete_hero_screen.dart';
import '../delete_meta_screen.dart';
import '../pick_screen.dart';
import '../server_route.dart';
import '../settings_screen.dart';
import '../update_hero_screen.dart';
import '../update_meta_screen.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PickRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: AddHeroRoute.page),
        AutoRoute(page: UpdateHeroRoute.page),
        AutoRoute(page: DeleteHeroRoute.page),
        AutoRoute(page: AddMetaRoute.page),
        AutoRoute(page: UpdateMetaRoute.page),
        AutoRoute(page: DeleteMetaRoute.page),
        AutoRoute(page: AuthorRoute.page),
        AutoRoute(page: ServerRoute.page, initial: true)
      ];
}
