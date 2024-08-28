import 'package:flutter/material.dart';
import 'package:helloworld/models/article_model.dart';
import 'package:helloworld/services/news_service.dart';
import 'package:helloworld/widgets/category_card.dart';
import 'package:helloworld/widgets/category_list_view.dart';
import 'package:helloworld/widgets/news_list_view_builder.dart';
import 'package:helloworld/widgets/news_tile.dart';
import 'package:helloworld/widgets/news_tile_list_view.dart';
import 'package:dio/dio.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              ' Cloud',
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewListViewBuilder(
                category: 'general',
              ),
              // SliverList(
              //     delegate: SliverChildBuilderDelegate(
              //         (context, index) => NewsTileListView())),
              // SliverToBoxAdapter(
              //   child: NewsTileListView(),
              // ),
            ],
          )
          // const Column(
          //   children: [
          //     CategoryListView(),
          //     SizedBox(
          //       height: 30,
          //     ),
          //     Expanded(child: NewsTileListView()),
          //   ],
          // ),
          ),
    );
  }
}
