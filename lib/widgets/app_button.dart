import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const AppButton({
    @required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        onPressed: onTap,
        padding: EdgeInsets.all(11),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Theme.of(context).buttonColor,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline3.merge(
                TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
        ),
      ),
    );
  }
}
