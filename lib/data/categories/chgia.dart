import 'package:phanboichau_app/data/classes/category.dart';

class ChgiaCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Tiến sĩ Tâm lý học Nguyễn Hoàng Khắc Hiếu',
      imageUrl: 'assets/images/khieu.jpg',
      route: 'https://unica.vn/teacher/nguyen-hoang-khac-hieu',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'TS Lê Thẩm Dương',
      imageUrl: 'assets/images/ltduong.jpg',
      route: 'https://www.facebook.com/lethamduong.edu.vn/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Tổ tư vấn tâm lý PBC',
      imageUrl: 'assets/images/tvtl.png',
      route: 'https://m.facebook.com/profile.php?id=100007998736559',
      isLink: true,
      fromAssets: true,
    ),
  ];
}
