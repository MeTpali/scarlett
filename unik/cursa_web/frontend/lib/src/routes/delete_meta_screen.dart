import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

import '../features/meta_modification/delete/widget.dart';

@RoutePage()
class DeleteMetaScreen extends StatelessWidget {
  const DeleteMetaScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Удаление меты"),
          centerTitle: true,
        ),
        body: const DeleteMetaWidget(),
      );
}
