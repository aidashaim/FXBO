import 'package:flutter/cupertino.dart';
import 'package:fxbo/models/bl/document_data.dart';

class DocumentPreview {
  final int id;
  final String userId;
  final String title;
  final DocumentData data;

  DocumentPreview({
    @required this.id,
    @required this.userId,
    @required this.title,
    @required this.data,
  });

  factory DocumentPreview.fromJson(dynamic json) {
    return DocumentPreview(
      id: json['id'],
      userId: json['userId'],
      title: json['type'],
      data: DocumentData.fromJson(json['data']),
    );
  }
}
