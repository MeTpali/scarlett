import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation_test/routes/router.dart';
import 'package:navigation_test/routes/screens/yellow.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(child: AutoRouter()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const NavLink(
                title: 'Blue',
                route: BlueRoute(),
              ),
              const NavLink(
                title: 'Red',
                route: RedRoute(),
              ),
              const NavLink(
                title: 'Green',
                route: Sex(),
              ),
              NavLink(
                title: 'Yellow',
                route: YellowRoute(bm: Bomzh(count: 1)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  final PageRouteInfo route;
  final String title;
  const NavLink({
    super.key,
    required this.route,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.router.navigate(route);
      },
      child: Text(title),
    );
  }
}
