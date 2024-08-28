import 'package:dio/dio.dart';
import 'package:helloworld/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=yourAPIKEY&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel newArticle = ArticleModel.fromJson(article);

        articlesList.add(newArticle);
      }
      return articlesList;
    } catch (e) {
      // TODO
      return [];
    }
  }
}
