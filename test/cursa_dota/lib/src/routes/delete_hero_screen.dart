import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';

import '../features/heroes_modification/delete/widget.dart';

@RoutePage()
class DeleteHeroScreen extends StatelessWidget {
  const DeleteHeroScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Удаление героя'),
          centerTitle: true,
        ),
        body: const DeleteHeroWidget(),
      );
}
