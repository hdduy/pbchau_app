import 'package:flutter/material.dart';

import 'package:phanboichau_app/presentation/home/feed/feed_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({
    Key key,
    this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FeedScreen(),
    );
  }
}
