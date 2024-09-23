import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation_test/routes/router.dart';
import 'package:navigation_test/routes/screens/yellow.dart';

@RoutePage()
class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bm = Bomzh(count: 1);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListView(),
            ElevatedButton(
              onPressed: () {
                context.router.push(const RedRoute());
              },
              child: const Text('red'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(YellowRoute(bm: bm));
              },
              child: const Text('yellow'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(const Sex());
              },
              child: const Text('green'),
            ),
          ],
        ),
      ),
    );
  }
}
