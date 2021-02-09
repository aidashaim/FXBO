import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  final String title;
  final Function(bool) onChanged;

  const AppCheckBox({
    this.title,
    this.onChanged,
  });

  @override
  _AppCheckBoxState createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      value: isSelected,
      onChanged: (value) {
        setState(() {
          isSelected = value;
          widget.onChanged.call(value);
        });
      },
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.headline1.merge(
              TextStyle(fontSize: 13.0),
            ),
      ),
    );
  }
}
