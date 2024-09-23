import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class Bomzh {
  final int count;

  Bomzh({required this.count});
}

@RoutePage()
class YellowScreen extends StatelessWidget {
  final Bomzh bm;
  const YellowScreen(this.bm, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.yellowAccent,
      body: const Placeholder(),
    );
  }
}
