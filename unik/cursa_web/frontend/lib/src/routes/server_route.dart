import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddMetaScreen extends StatelessWidget {
  const AddMetaScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Добавление меты'),
          centerTitle: true,
        ),
        body: TextField(),
      );
}
