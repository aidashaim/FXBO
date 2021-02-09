import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {

  final Icon icon;
  final String title;
  final String text;

  const AppDialog({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
