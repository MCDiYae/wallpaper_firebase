import 'package:flutter/material.dart';



class WallpaperList extends StatelessWidget {
  final String category;
  const WallpaperList({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final wallpaperRepository = ApiService();
    return FutureBuilder<List<Wallpaper>>(
      future: wallpaperRepository.fetchWallpaperByCategory(category),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Erreur : ${snapshot.error}');
        } else if (snapshot.hasData) {
          final wallpapers = snapshot.data;

          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(12.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              mainAxisExtent: 220,
            ),
            itemCount: wallpapers?.length,
            itemBuilder: (context, index) {
              final wallpaper = wallpapers![index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WallpaperPage(imageUrl: wallpaper.src.portrait,photographerName: wallpaper.photographer),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      height: 170,
                      width: 110,
                      fit: BoxFit.cover,
                      wallpaper.src.portrait),
                ),
              );
            },
          );
        } else {
          return const Text('Aucune donnée disponible.');
        }
      },
    );
  }
}
