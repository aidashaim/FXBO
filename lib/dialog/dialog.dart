import 'package:flutter/material.dart';

class AppDialog extends StatefulWidget {
  final List<String> itemsList;

  const AppDialog({
    this.itemsList,
  });

  @override
  AppDialogState createState() => new AppDialogState();
}

class AppDialogState extends State<AppDialog> {
  final mainColor = Color(0xFF5CBC47);

  createUploadDialog(BuildContext context) {
    return showDialog(
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
                      border: Border.all(width: 3.0, color: mainColor),
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Image.asset(
                      'assets/plusIcon.png',
                    ),
                  ),
                  Text(
                    'Uploaded',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        .merge(TextStyle(fontSize: 28.0)),
                  ),
                ]),
            actions: [
              Container(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset('assets/closeIcon.png'),
                  iconSize: 66.0,
                  tooltip: '',
                ),
              ),
            ],
            actionsPadding: EdgeInsets.symmetric(horizontal: 90.0),
          );
        });
  }

  createProgressDialog(BuildContext context) {
    return showDialog(
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
                      border: Border.all(width: 3.0, color: mainColor),
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    child: Text(
                      '18%',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          .merge(TextStyle(fontSize: 25.0)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Upload in \n progress',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          .merge(TextStyle(fontSize: 28.0)),
                    ),
                  ),
                ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlatButton(
      child: Text('ALERT'),
      onPressed: () {
        createProgressDialog(context);
      },
    ));
  }
}
