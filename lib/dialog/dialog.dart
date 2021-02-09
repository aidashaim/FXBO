import 'package:flutter/material.dart';
import 'package:fxbo/pages/account_details/account_details_page.dart';
import 'package:fxbo/pages/accounts_overview/accounts_overview_page.dart';
import 'package:fxbo/pages/auth/create_account/create_account_page.dart';

class CustomAppDialog extends StatefulWidget {
  @override
  CustomAppDialogState createState() => new CustomAppDialogState();
}

class CustomAppDialogState extends State<CustomAppDialog> {
  final mainColor = Color(0xFF5CBC47);

  void showUploadDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 82.0,
                height: 82.0,
                margin: EdgeInsets.all(30.0),
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: mainColor,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/ic_done.png',
                ),
              ),
              Text(
                'Uploaded',
                style: Theme.of(context).textTheme.headline2.merge(TextStyle(fontSize: 28.0)),
              ),
            ],
          ),
          actions: [
            Container(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Image.asset('assets/ic_close.png'),
                iconSize: 66.0,
                tooltip: '',
              ),
            ),
          ],
          actionsPadding: EdgeInsets.symmetric(horizontal: 90.0),
        );
      },
    );
  }

  void showProgressDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 82.0,
                height: 82.0,
                margin: EdgeInsets.all(30.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: mainColor,),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '18%',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline2
                      .merge(TextStyle(fontSize: 25.0),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Upload in \n progress',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline2
                      .merge(TextStyle(fontSize: 28.0),),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showCreateAccountDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0,),
                  height: 200.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Account Type',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                          Text(
                            'Standard',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                        ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Leverage',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                          Text(
                            '1:10',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                        ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Currency',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                          Text(
                            'EUR',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                        ],),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.0)),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
                        color: Color(0xFF636363),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Back',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
                        color: mainColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountDetailsPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Confirm',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline6,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),);
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

  void showWithdrawDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  height: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Withdraw From',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline2
                                  .merge(TextStyle(fontSize: 18.0),),
                            ),
                            Text(
                              'Standard 1',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline2
                                  .merge(TextStyle(fontSize: 18.0),),
                            ),
                          ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Withdraw To',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                          Text(
                            'Thunder XPay',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                        ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment Details',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                          Text(
                            'Thunder XPay \n Card 123456789',
                            textAlign: TextAlign.end,
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                        ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                          Text(
                            '10.00 EUR',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount to be Credited',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                          Text(
                            '360.00 THB',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline2
                                .merge(TextStyle(fontSize: 18.0),),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20.0),),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
                        color: Color(0xFF636363),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Back',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
                        color: mainColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountsOverviewPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Confirm',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline6,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
          Tween(begin: Offset(0, 1), end: Offset(0, 0),).animate(anim1),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlatButton(
        child: Text('ALERT'),
        onPressed: () {
          showProgressDialog(context);
        },
      ),
    );
  }
}
