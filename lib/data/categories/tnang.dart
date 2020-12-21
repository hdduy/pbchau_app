import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class TNangCategory {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Khéo tay hay làm',
      imageUrl: 'assets/images/bt.jpg',
      route: Routes.kTayScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Tình bạn tình yêu tuổi học đường',
      imageUrl: 'assets/images/nt.png',
      route: Routes.tBan,
      fromAssets: true,
    ),
    Category(
      name: 'Phan Bội Châu trong tim tôi',
      imageUrl: 'assets/images/oldschool.jpg',
      route: Routes.pBCtt,
      fromAssets: true,
    ),
    Category(
      name: 'Tình bạn',
      imageUrl: 'assets/images/bcau.png',
      route: Routes.tinhBan,
      fromAssets: true,
    ),
    Category(
      name: 'Phụ nữ Việt Nam trong thời đại mới',
      imageUrl: 'assets/images/pn.jpg',
      route: Routes.phuNu,
      fromAssets: true,
    ),
  ];
}
