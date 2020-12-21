import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class PhhsCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Nội quy học sinh',
      imageUrl: 'assets/images/vo.jpg',
      route: Routes.nQ,
      fromAssets: true,
    ),
    Category(
      name: 'Thang điểm thi đua',
      imageUrl: 'assets/images/vo1.jpg',
      route: Routes.thangDiemtd,
      fromAssets: true,
    ),
    Category(
      name: 'Thông tư 58',
      imageUrl: 'assets/images/vo2.jpg',
      route: Routes.tT58,
      fromAssets: true,
    ),
    Category(
      name: 'Thông tư 26',
      imageUrl: 'assets/images/vo3.jpg',
      route: Routes.tT26,
      fromAssets: true,
    ),
  ];
}
