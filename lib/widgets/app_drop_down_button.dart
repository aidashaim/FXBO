import 'package:flutter/material.dart';

class AppDropDownButton extends StatefulWidget {
  final EdgeInsetsGeometry margin;
  final String initialValue;
  final List<String> itemsList;
  final String hintText;
  final Function(String) onChanged;
  final String title;

  const AppDropDownButton({
    this.margin = const EdgeInsets.all(0),
    this.initialValue,
    this.itemsList,
    this.hintText,
    this.onChanged,
    this.title,
  });

  @override
  AppDropDownButtonState createState() => new AppDropDownButtonState();
}

class AppDropDownButtonState extends State<AppDropDownButton> {
  final darkColor = Color(0xFF636363);
  String value;

  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  Widget _buildTextTF() {
    if (widget.title != null) {
      return Padding(
        padding: EdgeInsets.only(bottom: 12.0),
        child: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline1,
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTextTF(),
        Container(
          padding: EdgeInsets.only(left: 20.0),
          decoration: BoxDecoration(
            border: Border.all(color: darkColor, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(
                widget.hintText,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .merge(TextStyle(color: Color(0xFF9E9E9E))),
              ),
              style: TextStyle(color: Color(0xFF303030)),
              value: value,
              onChanged: (String value) {
                this.value = value;
                if (widget.onChanged != null) {
                  widget.onChanged(value);
                }
                setState(() {

                });
              },
              items: widget.itemsList.map(
                (String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value,
                        style: Theme.of(context).textTheme.headline2),
                  );
                },
              ).toList(),
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
