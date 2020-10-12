import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const AppBarWidget({
    this.title,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title.toUpperCase(), style: Theme.of(context).textTheme.headline2.merge(TextStyle(fontSize: 17.0)),),
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}