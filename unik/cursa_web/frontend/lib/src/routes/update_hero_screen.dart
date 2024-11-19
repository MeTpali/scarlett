import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';

import '../features/heroes_modification/update/widget.dart';

@RoutePage()
class UpdateHeroScreen extends StatelessWidget {
  const UpdateHeroScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Обновление героя"),
          centerTitle: true,
        ),
        body: const UpdateHeroWidget(),
      );
}
