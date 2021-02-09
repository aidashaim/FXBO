import 'package:flutter/material.dart';

class AppDropDownButton extends StatefulWidget {
  final String initialValue;
  final List<String> values;
  final Function(String) onChanged;
  final String title;
  final EdgeInsetsGeometry margin;
  final String hintText;
  final String errorText;

  const AppDropDownButton({
    @required this.values,
    @required this.onChanged,
    this.title,
    this.initialValue,
    this.margin = EdgeInsets.zero,
    this.hintText = '',
    this.errorText,
  });

  @override
  AppDropDownButtonState createState() => new AppDropDownButtonState();
}

class AppDropDownButtonState extends State<AppDropDownButton> {
  String value;

  @override
  void initState() {
    if (widget.initialValue != null) {
      value = widget.initialValue;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTitleWidget(),
        Container(
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.errorText == null ? Color(0xFF636363) : Colors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(
                widget.hintText,
                style: Theme.of(context).textTheme.headline2.merge(
                      TextStyle(
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
              ),
              style: TextStyle(
                color: Color(0xFF303030),
              ),
              value: value,
              onChanged: (String value) {
                this.value = value;
                if (widget.onChanged != null) {
                  widget.onChanged(value);
                }
                setState(() {});
              },
              items: widget.values.map(
                (String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ),
        _buildErrorWidget(),
      ],
    );
  }

  Widget _buildErrorWidget() {
    if (widget.errorText != null) {
      return Padding(
        padding: EdgeInsets.only(top: 8, left: 20, right: 20,),
        child: Text(widget.errorText, style: TextStyle(color: Colors.red, fontSize: 12),),
      );
    } else {
      return Container();
    }
  }

  Widget _buildTitleWidget() {
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
}
