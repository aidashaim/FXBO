import 'package:flutter/cupertino.dart';

class DocumentData {
  final String frontSidePath;
  final String backSidePath;

  DocumentData({
    @required this.frontSidePath,
    @required this.backSidePath,
  });

  factory DocumentData.fromJson(dynamic json) {
    return DocumentData(
      frontSidePath: json['front_side']['path'],
      backSidePath: json['back_side']['path'],
    );
  }
}
