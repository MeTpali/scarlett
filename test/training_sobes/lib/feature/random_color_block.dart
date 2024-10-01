import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorBlock extends StatefulWidget {
  const RandomColorBlock({super.key});

  @override
  State<RandomColorBlock> createState() => _RandomColorBlockState();
}

class _RandomColorBlockState extends State<RandomColorBlock> {
  late Color color;

  @override
  void initState() {
    super.initState();
    final random = Random();
    color = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100.0,
      height: 100.0,
    );
  }
}
