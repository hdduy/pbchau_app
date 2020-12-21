import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class ShortStoriesCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'CUỘC ĐIỆN THOẠI NGÀY MƯA',
      imageUrl: 'assets/images/study.jpg',
      route: Routes.shortStory1,
      fromAssets: true,
    ),
    Category(
      name: 'HẠ ƠI',
      imageUrl: 'assets/images/study.jpg',
      route: Routes.shortStory2,
      fromAssets: true,
    ),
    Category(
      name: 'HỒI ỨC MÙA HÈ',
      imageUrl: 'assets/images/study.jpg',
      route: Routes.shortStory3,
      fromAssets: true,
    ),
    Category(
      name: 'TÌNH BẠN MÙA ĐÔNG',
      imageUrl: 'assets/images/study.jpg',
      route: Routes.shortStory4,
      fromAssets: true,
    ),
    Category(
      name: 'TÌNH YÊU ĐẦU TIÊN',
      imageUrl: 'assets/images/study.jpg',
      route: Routes.shortStory5,
      fromAssets: true,
    ),
  ];
}
