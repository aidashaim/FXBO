import 'package:flutter/material.dart';
import 'package:fxbo/pages/messages/messages_page.dart';
import 'package:fxbo/pages/withdraw_funds/withdraw_funds_page.dart';

//////// BottomAppBar c 3 кнопками
class BottomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int messagesCount = 2;

    final mainColor = Color(0xFF5CBC47);
    return Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFFAAAAAA),
              blurRadius: 15,
            ),
          ],
        ),
        child: BottomAppBar(
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
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WithdrawFundsPage(),
                        ),
                      ),
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
                    Stack(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/messageIcon.png',
                              width: 35.0),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MessagesPage(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Container(
                            padding: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: mainColor,
                            ),
                            child: Text(
                              messagesCount.toString(),
                              style:
                                  Theme.of(context).textTheme.subtitle1.merge(
                                        TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                            ),
                          ),
                        ),
                      ],
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
        ));
  }
}

class FloatingButtonWidget extends StatelessWidget {
  final Function onTapPlus;

  const FloatingButtonWidget({
    this.onTapPlus,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 70.0,
      icon: Image.asset(
        'assets/plusButton.png',

      ),
      onPressed: onTapPlus,
    );
  }
}

//////// BottomAppBar c 1 кнопкой
class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final bool isGrey;

  const BottomButton({@required this.onTap, this.text, this.isGrey = false});

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
              color: isGrey ? Color(0xFF9E9E9E) : mainColor,
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
