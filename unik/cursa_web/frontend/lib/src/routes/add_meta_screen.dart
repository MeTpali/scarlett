import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

import '../features/meta_modification/add/widget.dart';

@RoutePage()
class AddMetaScreen extends StatelessWidget {
  const AddMetaScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Добавление меты'),
          centerTitle: true,
        ),
        body: const AddMetaWidget(),
      );
}
