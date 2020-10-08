import 'package:flutter/material.dart';

class AppLink extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double fontSize;

  const AppLink({
    @required this.text,
    this.fontSize,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:
              TextStyle(fontSize: fontSize, color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
