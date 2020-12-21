import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class FeedCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Cổng thông tin nhà trường & Hoạt động phong trào',
      imageUrl: 'assets/images/schoolcomms.jpg',
      route: Routes.communicationPortalScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Khi tôi 16',
      imageUrl: 'assets/images/khitoi16.jpg',
      route: Routes.guide16Screen,
      fromAssets: true,
    ),
    Category(
      name: 'Tâm lý học đường',
      imageUrl: 'assets/images/tamlyhocduong.jpg',
      route: Routes.psychologyTestScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Câu lạc bộ',
      imageUrl: 'assets/images/clb.png',
      route: Routes.clubScreen,
      fromAssets: true,
    ),
    Category(
      name: 'Phụ huynh - Nhà trường',
      imageUrl: 'assets/images/parentteacher.png',
      route: Routes.pHhs,
      fromAssets: true,
    ),
    Category(
      name: 'Cựu học sinh',
      imageUrl: 'assets/images/oldstudent.jpg',
      route: Routes.oldStudentScreen,
      fromAssets: true,
    ),
  ];
}
