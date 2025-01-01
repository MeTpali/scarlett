import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';

import '../features/meta_modification/update/widget.dart';

@RoutePage()
class UpdateMetaScreen extends StatelessWidget {
  const UpdateMetaScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Обновление меты"),
          centerTitle: true,
        ),
        body: const UpdateMetaWidget(),
      );
}
