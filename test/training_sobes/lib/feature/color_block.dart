import 'package:flutter/material.dart';

class ColorBlock extends StatefulWidget {
  final Color color;

  const ColorBlock({
    required this.color,
    super.key,
  });

  @override
  State<ColorBlock> createState() => _ColorBlockState();
}

class _ColorBlockState extends State<ColorBlock> {
  late Color color;

  @override
  void initState() {
    super.initState();
    color = widget.color;
  }

  void incrementColor() {
    setState(() {
      color = Color.fromARGB(
        color.alpha,
        (color.red + 4) % 256,
        (color.green + 4) % 256,
        (color.blue + 4) % 256,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: incrementColor,
      child: Container(
        color: color,
        width: 100.0,
        height: 100.0,
      ),
    );
  }
}
