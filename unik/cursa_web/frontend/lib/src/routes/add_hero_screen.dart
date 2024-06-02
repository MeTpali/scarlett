import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

import '../features/heroes_modification/add/widget.dart';

@RoutePage()
class AddHeroScreen extends StatelessWidget {
  const AddHeroScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).connectionSettings),
          centerTitle: true,
        ),
        body: const AddHeroWidget(),
      );
}
