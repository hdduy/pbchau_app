import 'package:phanboichau_app/data/classes/category.dart';

class ClubCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Câu lạc bộ Văn Nghệ',
      imageUrl: 'assets/images/entertainment.jpg',
      route: 'https://www.facebook.com/clbvannghepbc/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Câu lạc bộ Thể Thao',
      imageUrl: 'assets/images/exercise.jpg',
      route: 'https://www.facebook.com/clbthethaopbc/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Câu lạc bộ Học Tập',
      imageUrl: 'assets/images/study.jpg',
      route: 'https://www.facebook.com/clbhoctappbc/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Câu lạc bộ\nHỗ trợ Thích ứng',
      imageUrl: 'assets/images/support.jpg',
      route: 'https://www.facebook.com/clbhotrothichungpbc/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Hội thao khối 12',
      imageUrl: 'assets/images/sports.png',
      route:
          'https://www.facebook.com/H%E1%BB%99i-thao-kh%E1%BB%91i-12-THPT-Phan-B%E1%BB%99i-Ch%C3%A2u-104513490920173/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Hội thao khối 11',
      imageUrl: 'assets/images/soccer.png',
      route:
          'https://www.facebook.com/H%E1%BB%99i-thao-PBC-kh%E1%BB%91i-11-112064880242634/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Câu lạc bộ BONGZ',
      imageUrl: 'assets/images/bongz.jpg',
      route: 'https://www.facebook.com/BONGZOfficial/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Đoàn trường\nPhan Bội Châu',
      imageUrl: 'assets/images/doantruong.jpg',
      route: 'https://www.facebook.com/profile.php?id=100010555541728',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Phan Bội Châu\nConfessions',
      imageUrl: 'assets/images/confession.jpg',
      route: 'https://www.facebook.com/PbcCrConfessions',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Phan Bội Châu\nHalloween',
      imageUrl: 'assets/images/halloween.jpg',
      route:
          'https://www.facebook.com/Halloween-Phan-B%E1%BB%99i-Ch%C3%A2u-241066093234839/',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'CLB Bóng Rổ PBC',
      imageUrl: 'assets/images/halloween.jpg',
      route:
          'https://www.facebook.com/CLB-B%C3%B3ng-R%E1%BB%95-Phan-B%E1%BB%99i-Ch%C3%A2u-105891087951247/',
      isLink: true,
      fromAssets: true,
    ),
  ];
}
