import 'package:flutter/material.dart';
import 'package:wallpaper_firebase/presentation/widgets/category/category_list.dart';



class CategoriesBar extends StatelessWidget {
  const CategoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Categories',
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontSize: 24.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          const SizedBox(height: 8.0),
          const CategoryList(),

          // Horizontal ListView of categories
        ],
      ),
    );
  }
}
