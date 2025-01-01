import 'package:auto_route/auto_route.dart';
import 'package:cursa_dota/main.dart';
import 'package:cursa_dota/src/di/di.dart';
import 'package:cursa_dota/src/repositories/heroes_repo.dart';
import 'package:cursa_dota/src/repositories/meta_repo.dart';
import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

import 'app_router/app_router.dart';

@RoutePage()
class ServerScreen extends StatefulWidget {
  const ServerScreen({super.key});

  @override
  State<ServerScreen> createState() => _ServerScreenState();
}

class _ServerScreenState extends State<ServerScreen> {
  late final TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '192.168.11.25');
    _controller.addListener(onListen);
  }

  void onListen() {
    ipNotifier.value = 'http://${_controller.value.text}:1337';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройка ip'),
        centerTitle: true,
      ),
      body: Column(
        spacing: 15,
        children: [
          TextField(
            controller: _controller,
          ),
          MainButton(
            title: const Text("Continue"),
            onPressed: () async {
              await getIt.get<MetaRepo>().update();
              await getIt.get<HeroesRepo>().update();
              context.router.push(const PickRoute());
            },
            type: TopGType.action,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(onListen);
    _controller.dispose();
    super.dispose();
  }
}
