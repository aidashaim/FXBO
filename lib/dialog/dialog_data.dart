import 'package:flutter/cupertino.dart';

class DialogData {
  final DialogType type;
  final String title;
  final String text;

  DialogData({
    @required this.type,
    @required this.title,
    @required this.text,
  });
}

enum DialogType {
  SUCCESS,
  ALERT,
  WARNING,
  ERROR,
}
