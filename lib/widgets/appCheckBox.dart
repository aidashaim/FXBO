import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  final String text;

  const AppCheckBox({
    this.text,
  });

  @override
  _AppCheckBoxState createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  final darkColor = Color(0xFF636363);
  bool chValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Checkbox(
            value: chValue,
            checkColor: Theme.of(context).primaryColor,
            activeColor: Colors.white,
            onChanged: (_value) {
              setState(() {
                chValue = _value;
              });
            },
          ),
          Text(
            widget.text,
            style: TextStyle(fontSize: 16.0, color: darkColor),
          ),
        ],
    );
  }
}
