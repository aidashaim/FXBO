import 'package:flutter/material.dart';
import 'package:fxbo/pages/messages/MessagesPage.dart';
import 'package:fxbo/pages/upload_new_documents/UploadNewDocuments.dart';
import 'package:fxbo/pages/uploaded_payment_details/UploadedPaymentDetails.dart';
import 'package:fxbo/pages/withdraw_funds/WithdrawFunds.dart';

class AppDrawer extends StatelessWidget {
  //}implements PreferredSizeWidget {
  final Function onChanged;
  final String title;

  //final Drawer drawer;

  const AppDrawer({
    this.onChanged,
    this.title,
    //this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    final mainColor = Color(0xFF5CBC47);
    return Drawer(
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                height: 120.0,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(30.0)),
                    gradient: new LinearGradient(
                        colors: [
                          const Color(0xFF5CBC47),
                          const Color(0xFF84F96A),
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  accountName: Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                    'Andrei S',
                    style: Theme.of(context).textTheme.headline6.merge(
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Accounts Overview',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
              ),
              ListTile(
                title: Text(
                  'Messages',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessagesPage())),
                //trailing: Icon(Icons.arrow_upward),
              ),
              ListTile(
                title: Text(
                  'Documents',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
              ),
              ListTile(
                title: Text(
                  'Deposit Funds',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
              ),
              ListTile(
                title: Text(
                  'Withdraw Funds',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WithdrawFundsPage())),
              ),
              ListTile(
                title: Text(
                  'Payment Details',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UploadedPaymentDetails())),
              ),
              ListTile(
                title: Text(
                  'Downloads',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
              ),
              ListTile(
                title: Text(
                  'Log Out',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .merge(TextStyle(fontSize: 20.0)),
                ),
              ),
            ],
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
}
