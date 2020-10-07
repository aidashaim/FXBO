import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {

  final String text;
  final String title;
  final IconData ico;
  final TextInputType type;
  //final double relativeWidth;
  //final bool enabled;

  const AppTextField({@required
    this.text,
    this.title,
    this.ico,
    this.type
    //this.relativeWidth,
    //this.enabled = true
  });

  @override
  Widget build(BuildContext context) {

    final darkColor = Color(0xFF636363);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextField(
              keyboardType: type,
              style: Theme.of(context).textTheme.bodyText1,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all( Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: darkColor,
                      width: 1.0,
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all( Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: darkColor,
                      width: 1.0,
                    )
                ),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  ico,
                  color: darkColor,
                ),
                hintText: text,
                hintStyle: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      );
  }
}