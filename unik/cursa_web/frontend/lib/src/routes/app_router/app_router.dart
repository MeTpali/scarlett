import 'package:auto_route/auto_route.dart';
import 'package:cursa_web/src/routes/pick_screen.dart';
import 'package:injectable/injectable.dart';

import '../add_hero_screen.dart';
import '../add_meta_screen.dart';
import '../author_screen.dart';
import '../changing_heroes.dart';
import '../changing_meta.dart';
import '../delete_hero_screen.dart';
import '../settings_screen.dart';
import '../update_hero_screen.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PickRoute.page),
        AutoRoute(page: ChangingRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: AddHeroRoute.page),
        AutoRoute(page: UpdateHeroRoute.page),
        AutoRoute(page: DeleteHeroRoute.page),
        AutoRoute(page: AuthorRoute.page),
        AutoRoute(page: AddMetaRoute.page, initial: true)
      ];
}
