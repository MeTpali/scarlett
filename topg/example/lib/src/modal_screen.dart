import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

class ModalScreen extends StatelessWidget {
  const ModalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const TopGBottomSheet();
              },
            );
          },
          child: const Text('Push me'),
        ),
      ),
    );
  }
}
