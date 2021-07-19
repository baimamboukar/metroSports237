class Article {
  final String title;
  final String subtitle;
  final String imagePath;
  final List<dynamic>? media;
  final DateTime date;
  final List<String>? comments;
  final int likesCount;
  final int sharesCount;
  final int viewsCount;

  Article(
      {required this.title,
      required this.subtitle,
      required this.imagePath,
      this.media,
      required this.date,
      required this.comments,
      required this.likesCount,
      required this.sharesCount,
      required this.viewsCount});
}
