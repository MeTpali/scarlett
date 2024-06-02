import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

import '../features/heroes_modification/delete/widget.dart';

@RoutePage()
class DeleteHeroScreen extends StatelessWidget {
  const DeleteHeroScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).connectionSettings),
          centerTitle: true,
        ),
        body: const DeleteHeroWidget(),
      );
}
