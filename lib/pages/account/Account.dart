import 'package:flutter/material.dart';
import 'package:fxbo/widgets/appBarWidget.dart';
import 'package:fxbo/widgets/appDrawer.dart';
import 'package:fxbo/widgets/bottomAppBarWidget.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final mainColor = Color(0xFF5CBC47);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'account 134456',
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
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 35.0),
                      child: Column(
                        children: [
                          Text(
                            'Balance',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline1.merge(
                                TextStyle(fontSize: 25.0, color: Colors.white)),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '1,000.00',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline1.merge(
                                TextStyle(fontSize: 42.0, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 60.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Type',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              'STANDARD',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
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
                        SizedBox(height: 20.0),
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
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Credit',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              '0.00',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Equity',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              '0.00',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Margin',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              '0.00',
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
                  SizedBox(height: 100.0,)
                ],
              ),
            ),
          )),
      bottomNavigationBar: BottomButton(
        text: 'deposit',
        onTap: () {},
      ),
    );
  }
}
