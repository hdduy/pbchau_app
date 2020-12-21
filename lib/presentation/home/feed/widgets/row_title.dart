import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget {
  final String title;
  final double padding;
  final bool showAllButton;
  final bool darkText;

  const RowTitle({
    Key key,
    @required this.title,
    this.padding = 10.0,
    this.showAllButton = false,
    this.darkText = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: darkText ? Colors.black : Colors.white,
            ),
          ),
          if (showAllButton)
            InkWell(
              onTap: () {},
              child: const Text(
                'Show All',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
