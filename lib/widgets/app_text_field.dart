import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final String title;
  final Widget leading;
  final TextInputType type;
  final bool isLast;

  const AppTextField({
    @required this.text,
    this.title,
    this.leading,
    this.type,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final darkColor = Color(0xFF636363);

    Widget _buildTextTF() {
      if (title != null) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
        );
      } else {
        return Container();
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTextTF(),
        Container(
          alignment: Alignment.centerLeft,
          child: TextField(
            keyboardType: type,
            style: Theme.of(context).textTheme.headline2,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: darkColor,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: darkColor,
                  width: 1.0,
                ),
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 14.0, 0, 0),
              prefixIcon: leading,
              hintText: text,
              hintStyle: Theme.of(context).textTheme.headline2.merge(TextStyle(color: Color(0xFF9E9E9E))),
            ),
          ),
        ),
        isLast ? Container() : SizedBox(height: 20.0),
      ],
    );
  }
}
