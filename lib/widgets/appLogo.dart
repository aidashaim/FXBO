import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xFF5CBC47),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 60.0),
      child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline6,
            children: <TextSpan> [
              TextSpan(text: 'BACK OFFICE\n', style: TextStyle(color: Colors.white, fontSize: 37.5, fontWeight: FontWeight.w700,)),
              TextSpan(text: 'The Ultimate Forex CRM', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.normal)),
    ]
        ),
    ),
    );
  }
}