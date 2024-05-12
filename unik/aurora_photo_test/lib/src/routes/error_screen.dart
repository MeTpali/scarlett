import 'package:flutter/material.dart';

import '../theme/constants/constants.dart';

class ErrorScreen extends StatelessWidget {
  final String message;
  const ErrorScreen({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              message,
              style: const TextStyle(
                color: TopGColors.yRed,
                fontSize: 20,
              ),
            ),
          ),
        ),
      );
}
