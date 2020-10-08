import 'package:flutter/material.dart';

class AppListView extends StatefulWidget {
  final EdgeInsetsGeometry margin;
  final String initialValue;
  final List<String> itemsList;
  final String hintText;
  final Function onChanged;
  final String title;

  const AppListView({
    this.margin = const EdgeInsets.all(0),
    this.initialValue,
    this.itemsList,
    this.hintText,
    this.onChanged,
    this.title,
  });

  @override
  AppListViewState createState() => new AppListViewState();
}

class AppListViewState extends State<AppListView> {
  final darkColor = Color(0xFF636363);
  final mainColor = Color(0xFF5CBC47);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('123'),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: ListView(
    children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Andrei S'),

            ),
            ListTile(
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text('Accounts Overview'),
              //trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text('Messages'),
              //trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text('Documents'),
              //trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text('Deposit Funds'),
              //trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text('Payment Details'),
              //trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text('Downloads'),
              //trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text('Log out'),
              //trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text('Home'),
              //trailing: Icon(Icons.arrow_upward),
            ),

          ],
          )
        ),
    );
  }
}
