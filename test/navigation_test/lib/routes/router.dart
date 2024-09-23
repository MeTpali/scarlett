import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'screens/dashboard_page.dart';
import 'screens/blue.dart';
import 'screens/demo_screen.dart';
import 'screens/green.dart';
import 'screens/red.dart';
import 'screens/tab_dashboard_page.dart';
import 'screens/yellow.dart';

part "router.gr.dart";

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Sex,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DemoRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: TabDashboardRoute.page,
          path: '/tabdashboard',
          children: [
            AutoRoute(page: BlueRoute.page, path: 'BlueRoute'),
            AutoRoute(page: RedRoute.page, path: 'RedRoute'),
            AutoRoute(page: Sex.page, path: 'Sex'),
            AutoRoute(page: YellowRoute.page, path: 'YellowRoute'),
          ],
        ),
        AutoRoute(
          page: DashboardRoute.page,
          path: '/dashboard',
          children: [
            AutoRoute(page: BlueRoute.page, path: 'blue', initial: true),
            AutoRoute(page: RedRoute.page, path: 'red'),
            AutoRoute(page: Sex.page, path: 'sex'),
            AutoRoute(page: YellowRoute.page, path: 'yellow'),
          ],
        ),
        AutoRoute(page: BlueRoute.page),
        CustomRoute(
          page: RedRoute.page,
          customRouteBuilder:
              <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
            return PageRouteBuilder<T>(
              fullscreenDialog: page.fullscreenDialog,
              // this is important
              settings: page,
              pageBuilder: (_, __, ___) => child,
            );
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ),
        AutoRoute(page: Sex.page),
        AutoRoute(page: YellowRoute.page),
      ];
}
