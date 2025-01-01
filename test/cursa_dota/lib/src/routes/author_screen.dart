import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';

@RoutePage()
class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Информация'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            '''Автор:
Терещук Артемий Алексеевич
Группа:
М3О-310Б-21
Тема курсовой:
Контрпики dota 2
''',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      );
}
