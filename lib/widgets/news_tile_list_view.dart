// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:helloworld/models/article_model.dart';
// import 'package:helloworld/services/news_service.dart';
// import 'package:helloworld/widgets/news_tile.dart';

// class NewsTileListView extends StatefulWidget {
//   const NewsTileListView({Key? key}) : super(key: key);

//   @override
//   State<NewsTileListView> createState() => _NewsTileListViewState();
// }

// class _NewsTileListViewState extends State<NewsTileListView> {
//   List<ArticleModel> articles = const [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//     // if (articles == null) {
//     //   print('not empty');
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 15),
//               child: NewsTile(articleModel: articles[index]),
//             );
//           }));
//     // ListView.builder(
//     //     shrinkWrap: true,
//     //     physics: const NeverScrollableScrollPhysics(),
//     //     itemCount: articles.length,
//     //     itemBuilder: (context, index) {
//     //       return Padding(
//     //         padding: const EdgeInsets.only(bottom: 15.0),
//     //         child: NewsTile(articleModel: articles[index]),
//     //       );
//     //     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:helloworld/models/article_model.dart';
import 'package:helloworld/services/news_service.dart';
import 'package:helloworld/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsTileListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: NewsTile(articleModel: articles[index]),
      );
    }));
  }
}
