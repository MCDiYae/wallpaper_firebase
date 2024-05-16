import 'package:flutter/material.dart';
import 'package:wallpaper_firebase/core/constant.dart';
import 'package:wallpaper_firebase/presentation/widgets/my_app_bar.dart';

import '../widgets/category/categories_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // app Bar
            MyAppBar(title: appName),
            
            // Category Bar
            CategoriesBar(),

            // Trend Bar
            TrendsBar(),

            Flexible(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: GridTrends(),
            )),

            
          ],
        ),
      ),
    );
  }
}