import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ErrorScreen extends StatelessWidget {
  // final String message;
  const ErrorScreen({
    // required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body:
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     child: Text(
            //       message,
            //       style: const TextStyle(
            //         color: TopGColors.yRed,
            //         fontSize: 20,
            //       ),
            //     ),
            //   ),
            // ),
            Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Material(
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
            ),
          ],
        ),
      );
}
