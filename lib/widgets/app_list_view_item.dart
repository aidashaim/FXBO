import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppListViewItem extends StatelessWidget {
  final Widget child;

  const AppListViewItem({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        child: child,
      ),
    );
  }
}
