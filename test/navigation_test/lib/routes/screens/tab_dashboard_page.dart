import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation_test/routes/router.dart';
import 'package:navigation_test/routes/screens/yellow.dart';

@RoutePage()
class TabDashboardPage extends StatelessWidget {
  const TabDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        const BlueRoute(),
        const RedRoute(),
        const Sex(),
        YellowRoute(bm: Bomzh(count: 1)),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: pageController,
              tabs: const [
                Tab(text: '1', icon: Icon(Icons.abc)),
                Tab(text: '2', icon: Icon(Icons.abc)),
                Tab(text: '3', icon: Icon(Icons.abc)),
                Tab(text: '4', icon: Icon(Icons.abc)),
              ],
            ),
          ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.send_time_extension),
                label: 'BlueRoute',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.on_device_training),
                label: 'RedRoute',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.offline_share_outlined),
                label: 'Sex',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.candlestick_chart),
                label: 'YellowRoute',
              ),
            ],
          ),
        );
      },
    );
  }
}
