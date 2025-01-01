import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';
import 'package:topg/topg.dart';

import '../features/pick/widget.dart';
import 'app_router/app_router.dart';

@RoutePage()
class PickScreen extends StatelessWidget {
  const PickScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Контрпики"),
          centerTitle: true,
          actions: [
            SettingsIconButton(
              onTap: () async {
                await context.router.push(const SettingsRoute());
              },
            )
          ],
        ),
        body: const PickWidget(),
      );
}
