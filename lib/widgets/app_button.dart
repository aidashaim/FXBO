import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool showLoader;

  const AppButton({
    @required this.text,
    this.onTap,
    this.showLoader = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      child: FlatButton(
        onPressed: _onClick,
        padding: EdgeInsets.all(11),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Theme.of(context).buttonColor,
        child: Center(child: _buildChild(context)),
      ),
    );
  }

  void _onClick() {
    if (showLoader) {
      return;
    } else {
      onTap.call();
    }
  }

  Widget _buildChild(BuildContext context) {
    if (showLoader) {
      return SizedBox(
        width: 16,
        height: 16,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return Text(
        text,
        style: Theme.of(context).textTheme.headline3.merge(
          TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
  }
}
