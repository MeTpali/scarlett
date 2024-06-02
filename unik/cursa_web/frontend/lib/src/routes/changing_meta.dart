import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import 'app_router/app_router.dart';

@RoutePage()
class ChangingMetaScreen extends StatelessWidget {
  const ChangingMetaScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).connectionSettings),
          centerTitle: true,
          actions: [
            SettingsButton(
              onTap: () async {
                await context.router.push(const SettingsRoute());
              },
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 15),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MainButton(
                title: const Text('Update'),
                onPressed: () {},
                type: TopGType.action,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MainButton(
                title: const Text('Update'),
                onPressed: () {},
                type: TopGType.action,
              ),
            ),
          ],
        ),
      );
}
