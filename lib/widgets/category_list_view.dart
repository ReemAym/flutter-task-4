import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/models/category_model.dart';
import 'package:helloworld/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Business', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Mathmatics', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Biology', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Chemistry', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Others', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
