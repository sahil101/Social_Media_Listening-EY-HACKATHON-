class PieInfo {
  Map<String, int> mostUsedHashtags = {};
  Map<String, int> mostcommonMention = {};
  String averageTweetspermonth;
  String monthwithmaximumtweetsyear;
  String monthwithmaximumtweetsmonth;
  String averagelikeperPost;
  String averageCommentPerpost;
  String averaeRetweetPerpost;
  String maximumlikeonpost;
  String maximumcommentonpost;
  String maximumretweetonpost;
  String image;
  PieInfo(
      this.mostUsedHashtags,
      this.mostcommonMention,
      this.averageTweetspermonth,
      this.monthwithmaximumtweetsyear,
      this.monthwithmaximumtweetsmonth,
      this.averagelikeperPost,
      this.averageCommentPerpost,
      this.averaeRetweetPerpost,
      this.maximumlikeonpost,
      this.maximumcommentonpost,
      this.maximumretweetonpost,
      this.image);
}

class PieData {
  List<PieInfo> data = [
    PieInfo({
      '#automotive': 55,
      '#strategy': 50,
      '#BetterWorkingWorld': 49,
      '#EY': 44,
      '#COVID19': 38
    }, {
      '@EY_UKI': 23,
      '@EYnews': 21,
      '@EY_US': 14,
      '@EY_India': 14,
      '@EY': 12
    }, '68.73', '2019', '5', '1.73', '0.082', '0.79', '326.0', '36.0', '239.0',
        'images/image1.png'),
    PieInfo({
      '#tax': 438,
      '#EY': 160,
      '#Tax': 135,
      '#COVID19': 79,
      '#BetterWorkingWorld': 78
    }, {
      '@EY_Tax': 176,
      '@EY_India': 66,
      '@KateBartonEY': 49,
      '@EY_US': 37,
      '@EY_Africa': 36
    }, '112.72', '2019', '3', '3.12', '0.150', '1.91', '1300.0', '53.0',
        '829.0', 'images/image2.png'),
    PieInfo({
      '#EY': 35,
      '#apprenticeships': 15,
      '#Assurance': 14,
      '#BetterWorkingWorld': 13,
      '#assurance': 10
    }, {
      '@EY_Africa': 14,
      '@EY_CareersUK': 12,
      '@EY_UKI': 8,
      '@RandallTavierne': 6,
      '@EY_US': 6
    }, '16.217', '2019', '1', '2.29', '0.117', '1.07', '56.0', '12.0', '101.0',
        'images/image3.png'),
    PieInfo({
      '#EY': 16,
      '#Brexit': 8,
      '#Consultancy': 8,
      '#COVID19': 5,
      '#consultancy': 5
    }, {
      '@EY_UKI': 13,
      '@EY_India': 6,
      '@Consultancy_uk': 5,
      '@EYnews': 4,
      '@EY_Australia': 4
    }, '7.782', '2019', '1', '5.56', '0.268', '2.916', '129.0', '11.0', '87.0',
        'images/image4.png')
  ];
  PieInfo getService(int index) {
    return data[index];
  }
}
