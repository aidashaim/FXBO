import 'package:flutter/material.dart';
import 'package:fxbo/pages/accounts_overview/accounts_overview_page.dart';
import 'package:fxbo/pages/downloads/downloads_page.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class AccountDetailsPage extends StatefulWidget {
  @override
  _AccountDetailsPageState createState() => _AccountDetailsPageState();
}

class _AccountDetailsPageState extends State<AccountDetailsPage> {
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
                          const Color(0xFF99F26E),
                          mainColor,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  width: double.maxFinite,
                  height: 120.0,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: ClippingClass(),
                        child: Container(
                          color: Colors.white.withOpacity(0.15),
                        ),
                      ),
                      ClipPath(
                        clipper: Clipping2Class(),
                        child: Container(
                          color: Colors.white.withOpacity(0.15),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
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
                    ],
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
                SizedBox(
                  height: 100.0,
                ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DownloadsPage(),
                    ),
                  );
                },
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccountsOverviewPage(),
              ),
            );
          },
        ),
      ]),
    );
  }
}

class Clipping2Class extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, 100.0);
    path.quadraticBezierTo(130.0, 80.0, 110.0, 0.0);
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, 120.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(60.0, 120.0);
    path.quadraticBezierTo(130.0, 80.0, 70.0, 0.0);
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, 120.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
