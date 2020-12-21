import 'package:flutter/material.dart';
import 'package:phanboichau_app/data/categories/test_category_data.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/info_card.dart';

class PsychologyTestScreen extends StatelessWidget {
  final data = TestCategoryData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tâm lí học đường'),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Lưu ý: Mọi câu trả lời đều ẩn danh.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.1,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return InfoCard(category: data.content[index]);
            },
            itemCount: data.size,
          ),
        ],
      ),
    );
  }
}
