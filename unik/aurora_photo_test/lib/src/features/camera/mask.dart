import 'package:flutter/material.dart';

class CameraMask extends StatelessWidget {
  const CameraMask({super.key});

  @override
  Widget build(BuildContext context) => const Expanded(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Color.fromARGB(54, 0, 0, 0),
            BlendMode.xor,
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Material(
              color: Color.fromARGB(54, 0, 0, 0),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ),
      );
}
