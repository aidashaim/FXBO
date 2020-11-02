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
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      value: chValue,
      onChanged: (_value) {
        setState(() {
          chValue = _value;
        });
      },
      title: Text(
        widget.text,
        style: Theme.of(context).textTheme.headline1.merge(TextStyle(fontSize: 13.0)),
      ),
    );
  }
}