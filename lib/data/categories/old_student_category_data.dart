import 'package:phanboichau_app/data/classes/category.dart';

class OldStudentCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Kỉ niệm 20 năm về trường, NK 1997 - 2000',
      imageUrl: 'assets/images/oldstudent1.jpg',
      route: 'https://www.youtube.com/watch?v=tDNqKSS1cuY',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Cổng thông tin cựu học sinh Phan Bội Châu',
      imageUrl: 'assets/images/counsel.jpg',
      route:
          'http://pbchau.khanhhoa.edu.vn/trang-tin-hoc-sinh/cuu-hoc-sinh-phan-boi-chau',
      isLink: true,
      fromAssets: true,
    ),
  ];
}
