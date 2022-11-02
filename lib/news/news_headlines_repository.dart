import 'news_headline_tab.dart';

class NewsHeadlinesRepository {
  static const _allHeadlines = <NewsHeadlineTab>[
    NewsHeadlineTab(
        headline:
            "South African fintech statup Jumo raises second \$50M+ VC round.",
        source: "TechCrunch",
        url:
            'https://techcrunch.com/2020/02/26/south-african-fintech-startup-jumo-raises-second-50m-vc-round/',
        imageName: 'assets/news_tab_images/jumo.jpeg'),
    NewsHeadlineTab(
        headline: "ZipLine Medical touts Zip incision closure studies.",
        source: "Mass Device",
        url:
            'https://www.massdevice.com/zipline-medical-touts-zip-incision-closure-studies/',
        imageName: "assets/news_tab_images/zipline.jpeg"),
    NewsHeadlineTab(
        headline:
            "AgTech startup AgBiome lands Gates Foundation grant to research pest-resistant crops.",
        source: "The News & Observer",
        url: 'https://www.newsobserver.com/news/business/article234973437.html',
        imageName: "assets/news_tab_images/agbiome.jpeg"),
    NewsHeadlineTab(
        headline:
            "senseFly Enters 2020 With Landmark Show of Support From Parrot.",
        source: "sUAS News",
        url:
            'https://www.suasnews.com/2020/02/sensefly-enters-2020-with-landmark-show-of-support-from-parrot/',
        imageName: "assets/news_tab_images/sensefly.jpeg"),
    NewsHeadlineTab(
        headline: "Startup Apeel Sciences names foodservice director.",
        source: "AmericaFruit",
        url:
            'http://www.fruitnet.com/americafruit/article/181022/improved-results',
        imageName: "assets/news_tab_images/apeel.jpeg"),
    NewsHeadlineTab(
        headline:
            "VA Department and Virta Health Focus on Reversing Diabetes with Keto Diet.",
        source: "MyHealthyClick",
        url:
            'https://www.myhealthyclick.com/va-department-and-virta-health-focus-on-reversing-diabetes-with-keto-diet/',
        imageName: "assets/news_tab_images/virta.jpeg"),
  ];

  static List<NewsHeadlineTab> loadHeadlines() {
    return _allHeadlines;
  }
}
