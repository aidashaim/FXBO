import 'package:flutter/material.dart';

//////// BottomAppBar c 3 кнопками
class BottomAppBarWidget extends StatelessWidget {
  final Function onTapDeposit;
  final Function onTapMessage;

  const BottomAppBarWidget({
    @required this.onTapDeposit,
    this.onTapMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
                  child: IconButton(
                    icon: Image.asset('assets/depositIcon.png'),
                    onPressed: onTapDeposit,

                  ),
                ),
                Text('Deposit', style: Theme.of(context).textTheme.headline2,),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: IconButton(
                    icon: Image.asset('assets/messageIcon.png',),
                    onPressed: onTapMessage,
                  ),
                ),
                Text('Messages', style: Theme.of(context).textTheme.headline2,),
              ],
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
        child: Image.asset('assets/plusButton.png',)
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
              child:
              Text(text.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
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
              child:
              Text(text.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
              color: mainColor,
              onPressed: onTapContinue,
              child:
              Text(text2.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
            ),
          ),
        ],
      ),
    );
  }
}