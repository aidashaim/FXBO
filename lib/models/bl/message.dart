import 'package:flutter/cupertino.dart';

class Message {
  final DateTime date;
  final String title;
  final String text;

  Message({
    @required this.date,
    @required this.title,
    @required this.text,
  });

  factory Message.fromJson(dynamic json) {
    return Message(
      date: DateTime.now().add(Duration(hours: 5)),
      title: "FXBO",
      text: "few gew gwg wwg ewgeww ge ew gw w",
    );
  }
}
