import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/s.dart';
import 'package:pure_analog/resources/images.dart';

@RoutePage()
class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            S.of(context).localeFull == 'Русский' ? 'Публикации' : 'Posts'),
      ),
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
            child: Text(
              S.of(context).localeFull == 'Русский'
                  ? 'Прежде чем смотреть посты нужно авторизоваться'
                  : 'Before watching the posts, you need to log in',
            ),
          ),
        ],
      ),
    );
  }
}
