import 'package:flutter/material.dart';
import 'package:helloworld/models/article_model.dart';
import 'package:helloworld/services/news_service.dart';
import 'package:helloworld/widgets/category_card.dart';
import 'package:helloworld/widgets/category_list_view.dart';
import 'package:helloworld/widgets/news_tile.dart';
import 'package:helloworld/widgets/news_tile_list_view.dart';
import 'package:dio/dio.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({
    super.key,
    required this.category,
  });

  final String category;
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  List<ArticleModel> articles = const [];
  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getNews(category: widget.category);
    isLoading = false;
    setState(() {});
    // if (articles == null) {
    //   print('not empty');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty
            ? NewsTileListView(
                articles: articles,
              )
            : SliverToBoxAdapter(
                child: Text('oops there was an error try later'),
              );
  }
}
