import 'package:flutter_test/flutter_test.dart';
import 'package:nevis_demo/news/news_headline_tab.dart';

int main () {
  group("News tests", () {
    test("Initializing NewsHeadlineTab", () {
      final newsHeadline = NewsHeadlineTab();
      expect(newsHeadline is NewsHeadlineTab, true);
      
    });
    test("Properly sets url", () {
      final url = 'http://google.com/';
      final newsHeadline = NewsHeadlineTab(url: url);
      expect(newsHeadline.url, url);
    });
    test("Properly sets Headline", () {
      final headline = 'Al Gore on 2020 Democratic Primaries.';
      final newsHeadline = NewsHeadlineTab(headline: headline);
      expect(newsHeadline.headline, headline);
    });
    test("Properly sets source", () {
      final source = 'CNN';
      final newsHeadline = NewsHeadlineTab(source: source);
      expect(newsHeadline.source, source);
    });
    test("Properly sets image name", () {
      final imageName = 'assets/test_images/zodiac.png';
      final newsHeadline = NewsHeadlineTab(imageName: imageName);
      expect(newsHeadline.imageName, imageName);
    });
    test("All properties of NewsHeadlineTab are properly set when initialized together", () {
      final imageName = 'assets/test_images/zodiac.png';
      final source = 'CNN';
      final headline = 'Al Gore on 2020 Democratic Primaries.';
      final url = 'http://google.com/';
      final newsHeadline = NewsHeadlineTab(imageName: imageName, source: source, headline: headline, url: url);
      expect(newsHeadline.imageName, imageName);
      expect(newsHeadline.headline, headline);
      expect(newsHeadline.source, source);
      expect(newsHeadline.url, url);
    });
  });
}
