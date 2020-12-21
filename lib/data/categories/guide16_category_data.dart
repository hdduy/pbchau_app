import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class Guide16CategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Thơ tuổi học trò',
      imageUrl: 'assets/images/poem.jpg',
      route: Routes.poemsScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Truyện ngắn',
      imageUrl: 'assets/images/study.jpg',
      route: Routes.shortStories,
      fromAssets: true,
    ),
    Category(
      name: 'Bài hát',
      imageUrl: 'assets/images/clb.png',
      route: Routes.musicScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Học sinh tài năng',
      imageUrl: 'assets/images/child.jpg',
      route: Routes.tNangScreen,
      fromAssets: true,
    ),
  ];
}
