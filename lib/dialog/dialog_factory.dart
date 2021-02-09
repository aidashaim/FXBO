import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fxbo/dialog/dialog_data.dart';
import 'package:fxbo/dialog/app_dialog.dart';

class DialogFactory {
  static void show(BuildContext context, DialogData data) {

    Icon icon;

    switch (data.type) {
      case DialogType.SUCCESS:
        icon = Icon(
          Icons.cloud_done,
          color: Colors.green,
          size: 40,
        );
        break;
      case DialogType.ALERT:
        icon = Icon(
          Icons.stream,
          color: Colors.grey,
          size: 40,
        );
        break;
      case DialogType.WARNING:
        icon = Icon(
          Icons.warning,
          color: Colors.amber,
          size: 40,
        );
        break;
      case DialogType.ERROR:
        icon = Icon(
          Icons.error,
          color: Colors.redAccent,
          size: 40,
        );
        break;
    }
    showDialog(
      context: context,
      child: AppDialog(
        icon: icon,
        title: data.title,
        text: data.text,
      ),
    );
  }
}
