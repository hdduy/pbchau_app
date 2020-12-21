import 'package:phanboichau_app/data/classes/category.dart';

class MusicCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'MÌNH CÙNG NHAU ĐÓNG BĂNG - THUỲ CHI',
      imageUrl: 'assets/images/clb.png',
      route: 'https://www.youtube.com/watch?v=zCpJ9Irw4EQ',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'BẠN CẤP 3 - LOU HOÀNG',
      imageUrl: 'assets/images/clb.png',
      route: 'https://www.youtube.com/watch?v=4UB-ZTidXls',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'THỜI HỌC SINH - SUNI HẠ LINH',
      imageUrl: 'assets/images/clb.png',
      route: 'https://www.youtube.com/watch?v=ltkta3Ilez8',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'TRÊN TÌNH BẠN DƯỚI TÌNH YÊU - MIN',
      imageUrl: 'assets/images/clb.png',
      route: 'https://www.youtube.com/watch?v=0R8IbpKXavM',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'NGƯỜI ƠI NGƯỜI ĐỪNG VỀ - ĐỨC PHÚC x SUBOI',
      imageUrl: 'assets/images/clb.png',
      route: 'https://www.youtube.com/watch?v=PP_Fu65IqNc',
      isLink: true,
      fromAssets: true,
    ),
  ];
}
