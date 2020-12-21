import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class CommsCategoryData {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Tiểu sử Phan Bội Châu',
      imageUrl: 'assets/images/pbc.jpg',
      route: Routes.pBCHistory,
      fromAssets: true,
    ),
    Category(
      name: 'Tuyển sinh - Hướng nghiệp',
      imageUrl: 'assets/images/counsel.jpg',
      route: Routes.couseling,
      fromAssets: true,
    ),
    Category(
      name: 'Lịch sử hình thành',
      imageUrl: 'assets/images/history.jpg',
      route: Routes.qTPT,
      fromAssets: true,
    ),
    Category(
      name: 'Thành tích',
      imageUrl: 'assets/images/achievement.jpg',
      route: Routes.thanhTich,
      fromAssets: true,
    ),
    Category(
      name: 'Phong trào đoàn',
      imageUrl: 'assets/images/movement.jpg',
      route: 'https://www.facebook.com/profile.php?id=100010555541728',
      isLink: true,
      fromAssets: true,
    ),
    Category(
      name: 'Chủ đề tháng',
      imageUrl: 'assets/images/monthlytopic.jpg',
      route: Routes.monthPlanning,
      fromAssets: true,
    ),
  ];
}
