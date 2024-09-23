import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Sex')
class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.greenAccent,
      body: const Placeholder(),
    );
  }
}
