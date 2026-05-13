class NewsArticle {
  final String title;
  final String description;
  final String image;
  final String url;

  NewsArticle({
    required this.title,
    required this.description,
    required this.image,
    required this.url,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      url: json['url'] ?? '',
    );
  }
}