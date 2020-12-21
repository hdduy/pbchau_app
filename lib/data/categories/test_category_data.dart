import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class TestCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Thang đo trầm cảm Beck',
      imageUrl: 'assets/images/psychology.jpg',
      route: Routes.beckScaleScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Khảo sát thích ứng',
      imageUrl: 'assets/images/question.jpg',
      route: Routes.surveyScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Trò chuyện cùng chuyên gia',
      imageUrl: 'assets/images/tamly.png',
      route: Routes.chGia,
      fromAssets: true,
    ),
    Category(
      name: 'Cẩm nang trầm cảm',
      imageUrl: 'assets/images/biasotay.png',
      route: Routes.cNang,
      fromAssets: true,
    ),
  ];
}
