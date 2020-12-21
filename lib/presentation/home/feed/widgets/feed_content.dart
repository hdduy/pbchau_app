import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phanboichau_app/data/categories/feed_category_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:phanboichau_app/data/classes/category.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/info_card.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/row_title.dart';

class FeedContent extends StatelessWidget {
  final data = FeedCategoryData();

  final firestore = FirebaseFirestore.instance;

  String _numberFormat(var number) {
    return NumberFormat.currency(
      locale: 'vi-VN',
      name: ' lượt',
      decimalDigits: 0,
      customPattern: '#,###\u00A4',
    ).format(number);
  }

  String _greetings(DateTime date) {
    String timeOfDay;
    if (date.hour > 4 && date.hour < 10) {
      timeOfDay = 'Buổi sáng';
    } else if (date.hour < 13) {
      timeOfDay = 'Buổi trưa';
    } else if (date.hour < 18) {
      timeOfDay = 'Buổi chiều';
    } else {
      timeOfDay = 'Buổi tối';
    }
    return '$timeOfDay vui vẻ nhé!';
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 20.0,
            bottom: 10.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            'Tuổi trẻ Phan Bội Châu, Kết nối và chia sẻ',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const RowTitle(
          title: 'Tổng quan',
          padding: 20,
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
        const RowTitle(
          title: 'Thông tin thêm',
          padding: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          height: 200,
          width: double.infinity,
          child: InfoCard(
            category: Category(
              name:
                  'Website chính thức của\ntrường THPT Phan Bội Châu, Cam Ranh',
              route: 'http://pbchau.khanhhoa.edu.vn/',
              isLink: true,
              fromAssets: true,
              imageUrl: 'assets/images/website.jpg',
            ),
          ),
        ),
        const RowTitle(
          title: 'Thống kê',
          padding: 20,
        ),
        StreamBuilder(
          stream: firestore.collection('public').doc('app_status').snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData ||
                snapshot.connectionState == ConnectionState.done) {
              return GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.1,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                children: [
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              color: Colors.blueAccent,
                              child: Text(
                                _numberFormat(snapshot.data['app_reads']),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Lượt truy cập ứng dụng',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              color: Colors.redAccent,
                              child: Text(
                                _numberFormat(snapshot.data['questions_taken']),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Lượt trả lời câu hỏi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        const SizedBox(height: 10),
        const Center(
          child: Text(
            'Phiên bản 1.2.10',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
