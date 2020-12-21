import 'package:flutter/material.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/address_bar.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/feed_content.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: AddressBar(),
          centerTitle: true,
        ),
        body: FeedContent(),
      ),
    );
  }
}
