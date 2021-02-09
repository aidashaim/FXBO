import 'package:flutter/material.dart';
import 'package:fxbo/pages/accounts_overview/accounts_overview_page.dart';
import 'package:fxbo/pages/auth/sing_in/sing_in_page.dart';
import 'package:fxbo/pages/documents/documents_page.dart';
import 'package:fxbo/pages/downloads/downloads_page.dart';
import 'package:fxbo/pages/messages/messages_page.dart';
import 'package:fxbo/pages/uploaded_payment_details/uploaded_payment_details_page.dart';
import 'package:fxbo/pages/withdraw_funds/withdraw_funds_page.dart';

class AppDrawer extends StatelessWidget {
  final Function onChanged;
  final String title;

  const AppDrawer({
    this.onChanged,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final int messagesCount = 2;

    final mainColor = Color(0xFF5CBC47);
    return Drawer(
      child: Stack(
        children: [
          Container(
            height: 150.0,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                ),
                gradient: new LinearGradient(
                  colors: [
                    const Color(0xFF5CBC47),
                    const Color(0xFF84F96A),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
              accountEmail: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Andrei S',
                  style: Theme.of(context).textTheme.headline6.merge(
                        TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
              ),
              accountName: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  '100000,',
                  style: Theme.of(context).textTheme.headline6.merge(
                        TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 140.0, 0.0, 60.0),
            child: ListView(
              children: <Widget>[
                _buildButton(
                  context: context,
                  title: 'Accounts Overview',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountsOverviewPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                    title: Stack(
                      children: [
                        Text(
                          'Messages',
                          style: Theme.of(context).textTheme.headline1.merge(
                                TextStyle(fontSize: 20.0),
                              ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 25.0,
                            padding: EdgeInsets.fromLTRB(18.0, 14.0, 18.0, 0.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: mainColor,
                            ),
                            child: Text(
                              messagesCount.toString(),
                              style:
                                  Theme.of(context).textTheme.subtitle1.merge(
                                        TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          height: 0.3,
                                        ),
                                      ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MessagesPage(),
                        ),
                      );
                    }
                  //trailing: Icon(Icons.arrow_upward),
                ),
                _buildButton(
                  context: context,
                  title: 'Documents',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DocumentsPage(),
                      ),
                    );
                  },
                ),
                _buildButton(
                  context: context,
                  title: 'Deposit Funds',
                  onTap: () {},
                ),
                _buildButton(
                  context: context,
                  title: 'Withdraw Funds',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WithdrawFundsPage(),
                      ),
                    );
                  },
                ),
                _buildButton(
                  context: context,
                  title: 'Payment Details',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UploadedPaymentDetailsPage(),
                      ),
                    );
                  },
                ),
                _buildButton(
                  context: context,
                  title: 'Downloads',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DownloadsPage(),
                      ),
                    );
                  },
                ),
                _buildButton(
                  context: context,
                  title: 'Log Out',
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => SingInPage(),
                      ),
                          (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
          ClipPath(
            clipper: ClippingClass(),
            child: Container(
              height: 120.0,
              color: Colors.white.withOpacity(0.15),
            ),
          ),
          Transform.rotate(
            angle: 10,
            child: Container(
              width: 180.0,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(150, 100),),
                color: Colors.white.withOpacity(0.15),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 23.0),
              child: ListTile(
                trailing: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onTap: () => Navigator.of(context).pop(), //
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/logo.png',
                color: mainColor,
                width: 190.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({@required BuildContext context, @required String title, @required Function onTap,}) {
    return ListTile(
      title: Text(
        title,
        style: Theme
            .of(context)
            .textTheme
            .headline1
            .merge(
          TextStyle(fontSize: 20),
        ),
      ),
      onTap: () {
        Navigator.of(context).pop();
        onTap.call();
      },
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, 100.0);
    path.quadraticBezierTo(200.0, 80.0, 100.0, 0.0);
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, 140.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
