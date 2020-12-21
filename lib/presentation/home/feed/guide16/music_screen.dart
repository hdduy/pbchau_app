import 'package:flutter/material.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/info_card.dart';
import 'package:phanboichau_app/data/categories/music_category_data.dart';

class MusicScreen extends StatelessWidget {
  final data = MusicCategoryData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài hát'),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.1,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return InfoCard(category: data.content[index]);
            },
            itemCount: data.size,
          ),
        ],
      ),
    );
  }
}
