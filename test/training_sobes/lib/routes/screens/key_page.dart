import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../feature/color_block.dart';
import '../../feature/random_color_block.dart';

@RoutePage()
class KeyPage extends StatefulWidget {
  const KeyPage({Key? key}) : super(key: key);

  @override
  State<KeyPage> createState() => _KeyPageState();
}

class _KeyPageState extends State<KeyPage> {
  var _colorBlocks = <Widget>[];
  var _randomColorBlocks = <Widget>[];
  var colKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    final random = Random().nextInt(Colors.primaries.length - 2);
    _colorBlocks = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ColorBlock(
          color: Colors.primaries[random],
          key: Key(Colors.primaries[random].toString()),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ColorBlock(
          color: Colors.primaries[random + 1],
          key: Key(Colors.primaries[random + 1].toString()),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ColorBlock(
          color: Colors.primaries[random + 2],
          key: Key(Colors.primaries[random + 2].toString()),
        ),
      ),
    ];
    _generateRandomColorBlocks();
  }

  void _generateRandomColorBlocks() {
    setState(() {
      _randomColorBlocks = List.generate(
        3,
        (_) => RandomColorBlock(key: UniqueKey()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
        appBar: AppBar(
          title: Text('sex'),
        ),
        body: orientation == Orientation.portrait
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: _colorBlocks),
                    Column(children: _randomColorBlocks),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: _colorBlocks),
                  Column(key: colKey, children: _randomColorBlocks),
                ],
              ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.swap_vert),
          onPressed: () {
            setState(() {
              _colorBlocks = _colorBlocks.reversed.toList();
              _randomColorBlocks = _randomColorBlocks.reversed.toList();
            });
          },
        ),
      );
    });
  }
}
