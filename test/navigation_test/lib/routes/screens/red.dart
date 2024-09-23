import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RedSex extends StatelessWidget {
  const RedSex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.redAccent,
      body: const Placeholder(),
    );
  }
}
