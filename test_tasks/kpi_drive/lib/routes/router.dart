import 'package:auto_route/auto_route.dart';

import '../pupupu/basic_example.dart';
import '../pupupu/custom_navigation_drawer.dart';
import '../pupupu/drag_handle_example.dart';
import '../pupupu/drag_into_list_example.dart';
import '../pupupu/expansion_tile_example.dart';
import '../pupupu/fixed_example.dart';
import '../pupupu/horizontal_example.dart';
import '../pupupu/list_tile_example.dart';
import '../pupupu/sliver_example.dart';
import 'pages/tracker_page.dart';
import 'pages/settings_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Example,Route')
class KpiRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: TrackerRoute.page, initial: true),
        AutoRoute(page: SettingsRoute.page),
      ];
}
