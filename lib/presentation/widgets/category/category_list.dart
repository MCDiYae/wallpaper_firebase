import 'package:flutter/material.dart';
import 'package:wallpaper_firebase/presentation/widgets/category/category_card.dart';



class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0, // Adjust the height based on your design
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryCard(categoryName: category.name);
        },
      ),
    );
  }
}
