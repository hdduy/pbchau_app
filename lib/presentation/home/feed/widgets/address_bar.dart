import 'package:flutter/material.dart';

class AddressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.school,
        ),
        SizedBox(width: 10),
        Flexible(
          child: Text(
            'Phan Bội Châu',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
