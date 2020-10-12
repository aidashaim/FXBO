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
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'BACK OFFICE\n',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .merge(TextStyle(fontSize: 33.7, color: Colors.white))),
          TextSpan(
              text: 'The Ultimate Forex CRM',
              style: Theme.of(context).textTheme.headline6),
        ]),
      ),
    );
  }
}
