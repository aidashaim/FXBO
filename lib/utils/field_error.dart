import 'package:flutter/cupertino.dart';

class FieldError {
  final String fieldKey;
  final String errorText;

  FieldError({
    @required this.fieldKey,
    @required this.errorText,
  });
}
