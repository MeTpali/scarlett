import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sliver_spinner/sliver_spinner.dart';

@RoutePage()
class DemoScreen extends StatelessWidget {
  static const urls = <String>[
    'https://www.stockvault.net/data/2018/12/30/258501/preview16.jpg',
    'https://www.stockvault.net/data/2010/10/01/115175/preview16.jpg',
    'https://www.stockvault.net/data/2011/04/18/122242/preview16.jpg',
    'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
    'https://www.stockvault.net/data/2018/12/30/258501/preview16.jpg',
    'https://www.stockvault.net/data/2010/10/01/115175/preview16.jpg',
    'https://www.stockvault.net/data/2011/04/18/122242/preview16.jpg',
    'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
    'https://www.stockvault.net/data/2018/12/30/258501/preview16.jpg',
    'https://www.stockvault.net/data/2010/10/01/115175/preview16.jpg',
    'https://www.stockvault.net/data/2011/04/18/122242/preview16.jpg',
    'https://www.stockvault.net/data/2014/03/26/155336/preview16.jpg',
  ];

  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: urls
            .map(
              (url) => Spinner(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

abstract class Bum {
  abstract final int a;
}
