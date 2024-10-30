import 'package:flutter/material.dart';
import 'package:yandex_maps_mapkit_lite/init.dart' as ya;
import 'package:yandex_maps_mapkit_lite/mapkit.dart';
import 'package:yandex_maps_mapkit_lite/mapkit_factory.dart';
import 'package:yandex_maps_mapkit_lite/yandex_map.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ya.initMapkit(
    apiKey: '05973deb-f4b5-45ab-a170-72df39da7a07',
  );
  mapkit.onStart();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MapWindow? _mapWindow;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: YandexMap(
          onMapCreated: (mapWindow) => _mapWindow = mapWindow,
        ),
      ),
    );
  }
}
