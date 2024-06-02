import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import '../features/model_lists/hero_picker.dart';
import '../features/sex/widget.dart';
import 'app_router/app_router.dart';

@RoutePage()
class ChangingScreen extends StatefulWidget {
  const ChangingScreen({super.key});

  @override
  State<ChangingScreen> createState() => _ChangingScreenState();
}

class _ChangingScreenState extends State<ChangingScreen> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      controller: controller,
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SexWidget(),
            ),
          ],
        ),
      );
}
