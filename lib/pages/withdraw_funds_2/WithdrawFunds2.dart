import 'package:flutter/material.dart';
import 'package:fxbo/widgets/appBarWidget.dart';
import 'package:fxbo/widgets/appDrawer.dart';
import 'package:fxbo/widgets/appTextField.dart';
import 'package:fxbo/widgets/bottomAppBarWidget.dart';

class WithdrawFunds2Page extends StatefulWidget {
  @override
  _WithdrawFunds2PageState createState() => _WithdrawFunds2PageState();
}

class _WithdrawFunds2PageState extends State<WithdrawFunds2Page> {
  final mainColor = Color(0xFF5CBC47);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBarWidget(
          title: 'withdraw funds',
          appBar: AppBar(),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    AppTextField(
                      title: 'Amount',
                      text: 'Standard 1',
                      type: TextInputType.emailAddress,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30.0),
                        alignment: Alignment.center,
                        width: 90.0,
                        height: 48.3,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: Text(
                          'EUR',
                          style: Theme.of(context).textTheme.headline3,
                        ))
                  ],
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    AppTextField(
                      title: 'Credit Amount',
                      text: '1:10',
                      type: TextInputType.emailAddress,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30.0),
                        alignment: Alignment.center,
                        width: 90.0,
                        height: 48.3,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: Text(
                          'THB',
                          style: Theme.of(context).textTheme.headline3,
                        ))
                  ],
                ),
                Text(
                  'Approximate amount to be credited to your wallet after deducting the Commission & Fees',
                  style: Theme.of(context).textTheme.headline2.merge(
                      TextStyle(fontSize: 13.0, color: Color(0xFF636363))),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomTwoButton(
          text: 'back',
          text2: 'continue',
          onTapBack: () {},
          onTapContinue: () {},
        ));
  }
}
