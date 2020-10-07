import 'package:flutter/material.dart';

class AppLink extends StatelessWidget {

  final String text;
  //final TextStyle textStyle;
  //final Alignment textAlignment;
  //final double relativeWidth;
  //final EdgeInsetsGeometry textMargin;
  //final Border border;
  final Function onPressed;
  final double size;
  //final bool enabled;

  const AppLink({@required
  this.text,
    this.size,
    //this.textStyle,
    //this.textAlignment,
    //this.relativeWidth,
    //this.textMargin,
    //this.border,
    this.onPressed,});
  //this.enabled = true});

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: onPressed,
        //padding: EdgeInsets.only(right: 0.0),
        child: Text(
          text,
          style: TextStyle(fontSize: size, color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}