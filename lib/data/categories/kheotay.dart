import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class KTayCategory {
  List<Category> get content => _categoryData;
  int get size => _categoryData.length;

  final List<Category> _categoryData = [
    Category(
      name: 'Lẵng hoa yêu thương',
      imageUrl: 'assets/images/lamhoa.png',
      route: Routes.lamHoa,
      fromAssets: true,
    ),
    Category(
      name: 'Thơ',
      imageUrl: 'assets/images/poem.jpg',
      route: Routes.mH,
      fromAssets: true,
    ),
    Category(
      name: 'Thiệp tặng người yêu thương',
      imageUrl: 'assets/images/lamthiep.jpg',
      route: Routes.lamThiep,
      fromAssets: true,
    ),
  ];
}
