import 'package:flutter/material.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/row_title.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26262b),
      appBar: AppBar(
        title: const Text('Về chúng tôi'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'Ứng dụng được phát triển bởi',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Phuc Vo',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const RowTitle(
                      title: 'Thông tin nhà phát triển',
                      darkText: false,
                      padding: 0,
                    ),
                    const Text(
                      'Phát triển bởi Võ Hoàng Phúc, Học sinh lớp 12C1 (khoá 2018 - 2021), Trường THPT Phan Bội Châu, Cam Ranh, Khánh Hoà.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const RowTitle(
                      title: 'Mục đích',
                      darkText: false,
                      padding: 0,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'Ứng dụng này được tạo ra để phục vụ kiểm soát an ninh trước thềm ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Phan Bội Châu Halloween 2020',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text:
                                ', giúp quản lí vé một cách khách quan và bảo mật hơn',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const RowTitle(
                      title: 'Giải pháp công nghệ',
                      darkText: false,
                      padding: 0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'Ứng dụng ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Phan Bội Châu Halloween 2020',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue[100],
                            ),
                          ),
                          const TextSpan(
                            text: ' được phát triển bởi ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          const TextSpan(
                            text: 'Võ Hoàng Phúc (Phuc Vo)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const TextSpan(
                            text:
                                ', áp dụng công nghệ quét mã vạch thời gian thực cùng với hệ thống tự động nhận dạng trạng thái mã và bảo mật thông tin thông qua xử lí mã cơ sở dữ liệu.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Ứng dụng này là ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFff726f),
                        ),
                      ),
                      TextSpan(
                        text: 'MỘT BẢN THU GỌN TỐI GIẢN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[100],
                        ),
                      ),
                      const TextSpan(
                        text: ', được tách ra và tối ưu lại từ ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFff726f),
                        ),
                      ),
                      TextSpan(
                        text: 'Dự án Khoa Học Kĩ Thuật 2020 của Võ Hoàng Phúc',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[100],
                        ),
                      ),
                      const TextSpan(
                        text:
                            ' để thử nghiệm diện rộng tính năng quét mã vạch, kiểm tra và đánh giá quy trình hoạt động của dự án một cách khách quan hơn.\n\n',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFff726f),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Phiên bản 1.1.10',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
