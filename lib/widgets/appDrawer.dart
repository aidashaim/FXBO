import 'package:flutter/material.dart';

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
      UserAccountsDrawerHeader(

      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0))
      ),
      accountName: Text('Andrei S', style: Theme.of(context)
          .textTheme
          .headline6
          .merge(TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),),
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
    'Payment Details',
    style: Theme.of(context)
        .textTheme
        .headline1
        .merge(TextStyle(fontSize: 20.0)),
    ),
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
    padding: EdgeInsets.only(top: 10.0),
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
    child: RichText(
    text: TextSpan(children: <TextSpan>[
    TextSpan(
    text: 'BACK OFFICE\n',
    style: Theme.of(context)
        .textTheme
        .subtitle1
        .merge(TextStyle(fontSize: 22.0, color: mainColor))),
    TextSpan(
    text: 'The Ultimate Forex CRM',
    style: Theme.of(context)
        .textTheme
        .headline6
        .merge(TextStyle(fontSize: 13, color: mainColor))),
    ]),
    ),
    ),
    ),
    ],
    )
    ,
    );
  }

//@override
//Size get preferredSize => new Size.fromHeight(drawer.preferredSize.height);
}

/*var notBtnExtended;

  ListTile _buildMenuMessages() {
      if(false)
          return ListTile(
              title: Text('Messages'),
          );
      else
        return ListTile(
          title: Text('Messages'),
          trailing: Icon(Icons.alarm),
        );
        }*/

/*notBtnExtended = Stack(
  overflow: Overflow.visible,
  children: <Widget>[
  notBtn,
  Positioned(
  top: -6,
  right: 18,
  child: Material(
  borderRadius: BorderRadius.circular(4.0),
  color: Colors.transparent,
  elevation: 6.0,
  child: Container(
  padding: EdgeInsets.all(3),
  decoration: BoxDecoration(
  color: Theme.of(context).cursorColor,
  borderRadius: BorderRadius.circular(40),
  border: Border.all(color: Colors.black)),
  constraints: BoxConstraints(
  minWidth: 24,
  minHeight: 20,
  ),
  child: Text(
  notReadCount.toString(),
  style: TextStyle(
  color: Colors.black,
  fontSize: 14,
  ),
  textAlign: TextAlign.center,
  ),
  ),
  ),
  )
  ],*/
