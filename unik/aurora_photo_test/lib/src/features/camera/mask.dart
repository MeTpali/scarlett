import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CameraMask extends StatelessWidget {
  const CameraMask({super.key});

  @override
  Widget build(BuildContext context) => Material(
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(
            Colors.red,
            BlendMode.xor,
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: ColoredBox(
              color: Colors.red,
            ),
          ),
        ),
      );
}
