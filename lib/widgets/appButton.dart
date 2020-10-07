import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  final String text;
  //final TextStyle textStyle;
  //final Alignment textAlignment;
  //final double relativeWidth;
  //final EdgeInsetsGeometry textMargin;
  //final Border border;
  final Function onTap;
  //final bool enabled;

  const AppButton({@required
    this.text,
    //this.textStyle,
    //this.textAlignment,
    //this.relativeWidth,
    //this.textMargin,
    //this.border,
    this.onTap,});
    //this.enabled = true});

  @override
  Widget build(BuildContext context) {

    return Container(
      //padding: EdgeInsets.symmetric(vertical: 0.0),
      width: double.infinity,
      child: FlatButton(
        onPressed: onTap,
        padding: EdgeInsets.all(11.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Theme.of(context).buttonColor,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}