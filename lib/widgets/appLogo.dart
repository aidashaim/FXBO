import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5CBC47),
      padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 0.0),
      height: 200.0,
      alignment: Alignment.topRight,
      width: double.infinity,
      //margin: EdgeInsets.only(bottom: 60.0),
      child: Image.asset('assets/logo.png'),
    );
  }
}
