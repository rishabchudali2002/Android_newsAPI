import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class ApiService {

  static const String apiKey = '90d63128b07f0fa0d3369a4caf4454e1';

  static Future<List<NewsArticle>> fetchNews() async {

    final url = Uri.parse(
      'https://gnews.io/api/v4/top-headlines?country=np&lang=en&max=10&apikey=90d63128b07f0fa0d3369a4caf4454e1',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {

      final data = jsonDecode(response.body);

      List articles = data['articles'];

      return articles
          .map((article) => NewsArticle.fromJson(article))
          .toList();

    } else {
      throw Exception('Failed to load news');
    }
  }
}