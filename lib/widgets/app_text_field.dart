import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final String title;
  final Widget leading;
  final TextInputType type;
  final TextEditingController controller;
  final String errorText;

  const AppTextField({
    @required this.text,
    this.title,
    this.leading,
    this.type,
    this.controller,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTextTF(context),
        Container(
          alignment: Alignment.centerLeft,
          child: TextField(
            keyboardType: type,
            style: Theme.of(context).textTheme.headline2,
            controller: controller,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: Color(0xFF636363),
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: Color(0xFF636363),
                  width: 1.0,
                ),
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 14.0, 0, 0),
              prefixIcon: leading,
              hintText: text,
              hintStyle: Theme
                  .of(context)
                  .textTheme
                  .headline2
                  .merge(TextStyle(color: Color(0xFF9E9E9E),
              ),
              ),
              errorText: errorText,
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextTF(BuildContext context) {
    if (title != null) {
      return Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          title,
          style: Theme
              .of(context)
              .textTheme
              .headline1,
        ),
      );
    } else {
      return Container();
    }
  }
}
