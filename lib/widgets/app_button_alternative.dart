import 'package:flutter/material.dart';

class AppButtonBottom extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color color;

  const AppButtonBottom({
    @required this.onTap,
    @required this.text,
    this.color = const Color(0xFF9E9E9E),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color,
        padding: EdgeInsets.only(
          top: 16,
          bottom: MediaQuery.of(context).padding.bottom > 0 ? MediaQuery.of(context).padding.bottom : 12,
          left: 16,
          right: 16,
        ),
        //color: color,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
