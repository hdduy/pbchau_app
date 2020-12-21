import 'package:flutter/material.dart';

class OutlinedCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final String holderClass;

  const OutlinedCircleAvatar({
    Key key,
    this.imageUrl = '',
    this.holderClass = '?',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 32,
          child: imageUrl.isNotEmpty
              ? CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(imageUrl),
                  radius: 30,
                )
              : Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFF9482),
                        Color(0xFF7D77FF),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
        ),
        Text(
          holderClass,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
