import 'package:flutter/material.dart';

import 'package:web_scraper/web_scraper.dart';

void main() => runApp(const WebScraperApp());

class WebScraperApp extends StatefulWidget {
  const WebScraperApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WebScraperAppState createState() => _WebScraperAppState();
}

class _WebScraperAppState extends State<WebScraperApp> {
  // initialize WebScraper by passing base url of website
  final webScraper = WebScraper('https://www.dotabuff.com/heroes/');

  // Response of getElement is always List<Map<String, dynamic>>
  List<Map<String, dynamic>>? productNames;
  late List<Map<String, dynamic>> productDescriptions;

  void fetchProducts() async {
    // Loads web page and downloads into local state of library
    if (await webScraper.loadWebPage('/pudge/counters')) {
      setState(() {
        // getElement takes the address of html tag/element and attributes you want to scrap from website
        // it will return the attributes in the same order passed
        productNames = webScraper.getElement('table', []);
        print(productNames);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Requesting to fetch before UI drawing starts
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product Catalog'),
        ),
        body: SafeArea(
          child: productNames == null
              ? const Center(
                  child:
                      CircularProgressIndicator(), // Loads Circular Loading Animation
                )
              : Placeholder(),
          // ListView.builder(
          //     itemCount: productNames!.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       // Attributes are in the form of List<Map<String, dynamic>>.
          //       Map<String, dynamic> attributes =
          //           productNames![index]['attributes'];
          //       return ExpansionTile(
          //         title: Text(attributes['title']),
          //         children: <Widget>[
          //           Padding(
          //             padding: const EdgeInsets.all(10.0),
          //             child: Column(
          //               children: <Widget>[
          //                 Container(
          //                   margin: const EdgeInsets.only(bottom: 10.0),
          //                   child:
          //                       Text(productDescriptions[index]['title']),
          //                 ),
          //                 InkWell(
          //                   onTap: () {},
          //                   child: const Text(
          //                     'View Product',
          //                     style: TextStyle(color: Colors.blue),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           )
          //         ],
          //       );
          //     },
          //   ),
        ),
      ),
    );
  }
}
