import 'package:flutter/material.dart';
import 'package:fxbo/widgets/appBarWidget.dart';
import 'package:fxbo/widgets/appDrawer.dart';
import 'package:fxbo/widgets/bottomAppBarWidget.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;

    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'account details',
        appBar: AppBar(),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFFFFFFFF),
                const Color(0xFFFCFCFC),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: new LinearGradient(
                        colors: [
                          const Color(0xFF9BF977),
                          mainColor,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  width: double.maxFinite,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 20.0),
                    child: Column(
                      children: [
                        Text(
                          'Your account 7 \nhas been successfully created',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 15.0),
                        Image.asset(
                          'assets/plusIcon.png',
                          height: 30.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Login',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            '7',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Server',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            'Live',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Leverage',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            '1:10',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Currency',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            'EUR',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            'L9dfjru77',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Investor Password',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            '4dsUikjh',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100.0,),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(0.0, 21.0, 0.0, 15.0),
                color: Color(0xFF636363),
                onPressed: () {},
                child: Text(
                  'download platform'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        BottomButton(
          text: 'Accounts overview',
          onTap: () {},
        ),
      ]),
    );
  }
}
