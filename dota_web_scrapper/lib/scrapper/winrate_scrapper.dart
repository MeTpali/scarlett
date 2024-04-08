import 'package:web_scraper/web_scraper.dart';

abstract class WinrateScraper{
  static final webScraper = WebScraper('https://webscraper.io');
  static getHeroWinrate(String heroName)async {
    if (await webScraper.loadWebPage('/test-sites/e-commerce/allinone/computers/laptops')){
      print(true);
    }
    final box = webScraper.getElement('div.thumbnail > div.caption > h4 > a.title', ['href', 'title']);
    print(box);
  }
}