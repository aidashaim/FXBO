import 'package:flutter/material.dart';
import 'package:fxbo/pages/messages/MessagesPage.dart';
import 'package:fxbo/pages/withdraw_funds/WithdrawFunds.dart';

//////// BottomAppBar c 3 кнопками
class BottomAppBarWidget extends StatelessWidget {
  /*final Function onTapDeposit;
  final Function onTapMessage;

  const BottomAppBarWidget({
    @required this.onTapDeposit,
    this.onTapMessage,
  });*/

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/depositIcon.png', width: 55.0),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MessagesPage())),
                ),
                Text(
                  'Deposit',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .merge(TextStyle(height: 0.3)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/messageIcon.png', width: 35.0),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WithdrawFundsPage())),
                ),
                Text(
                  'Messages',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .merge(TextStyle(height: 0.3)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FloatingButtonWidget extends StatelessWidget {
  final Function onTapPlus;

  const FloatingButtonWidget({
    this.onTapPlus,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTapPlus,
      child: Image.asset('assets/plusButton.png'),
    );
  }
}

//////// BottomAppBar c 1 кнопкой
class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;

  const BottomButton({
    @required this.onTap,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    final mainColor = Color(0xFF5CBC47);

    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
              color: mainColor,
              onPressed: onTap,
              child: Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//////// BottomAppBar c 2 кнопками
class BottomTwoButton extends StatelessWidget {
  final Function onTapBack;
  final Function onTapContinue;
  final String text;
  final String text2;

  const BottomTwoButton({
    @required this.onTapBack,
    this.onTapContinue,
    this.text,
    this.text2,
  });

  @override
  Widget build(BuildContext context) {
    final mainColor = Color(0xFF5CBC47);

    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
              color: Color(0xFF636363),
              onPressed: onTapBack,
              child: Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
              color: mainColor,
              onPressed: onTapContinue,
              child: Text(
                text2.toUpperCase(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
