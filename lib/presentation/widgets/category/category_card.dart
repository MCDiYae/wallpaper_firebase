import 'package:flutter/material.dart';



class CategoryCard extends StatelessWidget {
  final String categoryName;
  const CategoryCard({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryPage(
                    categoryName: categoryName,
                  )),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.light
                  ? shadowColor
                  : Colors.transparent,
              blurRadius: 10.0,
              offset: const Offset(1, 5),
              blurStyle: BlurStyle.normal,
            ),
          ],
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : darkPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
