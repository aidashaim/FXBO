import 'package:flutter/cupertino.dart';
import 'package:fxbo/models/bl/currency.dart';

class AccountInfo {
  final String number;
  final Currency currency;
  final int leverage;
  final String balance;
  final String credit;
  final String equity;
  final String margin;
  final AccountType accountType;

  AccountInfo({
    @required this.leverage,
    @required this.balance,
    @required this.credit,
    @required this.equity,
    @required this.margin,
    @required this.number,
    @required this.currency,
    @required this.accountType,
  });

  factory AccountInfo.fromJson(dynamic json) {
    return AccountInfo(
      number: json['login'],
      currency: Currency.fromJson(json),
      balance: json['balance'],
      leverage: json['leverage'],
      margin: json['margin'],
      credit: json['credit'],
      equity: json['equity'],
      accountType: _getAccountType(json['serverId']),
    );
  }

  static AccountType _getAccountType(int serverId) {
    if (serverId == 1) {
      return AccountType.DEMO;
    } else if (serverId == 2) {
      return AccountType.LIVE;
    } else {
      return AccountType.WALLET;
    }
  }
}

enum AccountType {
  DEMO,
  LIVE,
  WALLET,
}
