import 'package:flutter/cupertino.dart';

class Currency {
  final String name;

  Currency({
    @required this.name,
  });

  String getSymbol() {
    return "\$";
  }

  factory Currency.fromJson(dynamic json) {
    return Currency(
      name: json['currency'],
    );
  }
}
