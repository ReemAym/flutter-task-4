import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/services/news_service.dart';
import 'package:helloworld/views/home_view.dart';

void main() {
  // NewsServices(Dio()).getNews();
  runApp(const NewsApp());
}

final dio = Dio();

// void getNews() async {
//   final response = await dio.get(
//       'https://newsapi.org/v2/everything?q=tesla&from=2024-07-24&sortBy=publishedAt&apiKey=');
//   print(response);
// }

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      // home: Text(NewsServices(Dio()).getNews() as dynamic)
    );
  }
}
