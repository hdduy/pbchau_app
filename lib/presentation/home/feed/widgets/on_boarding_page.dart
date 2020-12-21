import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final firestore = FirebaseFirestore.instance;
  @override
  void initState() {
    firestore.collection('public').doc('app_status').update(
      {
        'app_reads': FieldValue.increment(1),
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.all(40.0),
    );

    return SafeArea(
      child: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.black),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Xin chào.',
              body:
                  'Chào mừng bạn đã đến với ứng dụng giáo dục — Phan Bội Châu App.',
              image: Image.asset('assets/images/logo.jpg'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: 'Học, học nữa, học mãi',
              body:
                  'Phan Bội Châu App mang lại trải nghiệm tuyệt vời cho cả học sinh và giáo viên, nhằm đạt được năng suất cao hơn',
              image: Image.asset('assets/icons/books2.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: 'Công nghệ vượt trội.',
              body:
                  'Giờ đây không cần phải đến bảng thông báo để xem những thay đổi về thời khoá biểu hay những thông báo mới nữa!',
              image: Image.asset('assets/icons/technology.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: 'Liên lạc dễ dàng',
              body:
                  'Học sinh, phụ huynh và nhà trường có thể liên lạc với nhau dễ dàng, giúp giải quyết mọi vấn đề nhanh hơn!',
              image: Image.asset('assets/icons/chat.png'),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: 'Đừng lãng phí thời gian!',
              body: 'Đã đến lúc khám phá, mau đi thôi!',
              image: Image.asset('assets/icons/time.png'),
              footer: RaisedButton(
                onPressed: () =>
                    ExtendedNavigator.of(context).replace(Routes.homeScreen),
                color: Colors.black,
                child: const Text(
                  'Bắt đầu',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              decoration: pageDecoration,
            ),
          ],
          onDone: () {},
          showSkipButton: true,
          skipFlex: 0,
          nextFlex: 0,
          skip: const Text(
            'Bỏ qua',
            style: TextStyle(color: Colors.black),
          ),
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          done: Container(),
          dotsDecorator: const DotsDecorator(
            color: Color(0xFFBDBDBD),
            activeColor: Colors.black,
            activeSize: Size(20.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
