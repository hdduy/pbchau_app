import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final String title;
  final bool padded;
  final Function onPress;
  const LongButton({
    Key key,
    @required this.title,
    @required this.onPress,
    this.padded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        onPressed: onPress,
        color: Colors.black,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
