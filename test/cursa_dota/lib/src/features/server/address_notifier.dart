import 'package:flutter/material.dart';

class ServerIpNotifier extends ValueNotifier<String> {
  ServerIpNotifier() : super('http://192.168.0.112:1337');

  void changeIp(String ip) => value = 'http://$ip:1337';
}
