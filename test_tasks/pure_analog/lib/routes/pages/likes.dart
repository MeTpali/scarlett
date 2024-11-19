import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:topg/locale.dart';

import '../../resources/images.dart';

@RoutePage()
class LikesPage extends StatelessWidget {
  const LikesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              PureImages.logo,
              scale: 0.2,
              opacity: const AlwaysStoppedAnimation(0.2),
            ),
          ),
          Center(
            child: Text(S.of(context).localeFull == 'Русский'
                ? 'Так много лайков, аж на страницу не поместились'
                : "So many likes, they didn't even fit on the page"),
          ),
        ],
      ),
    );
  }
}
