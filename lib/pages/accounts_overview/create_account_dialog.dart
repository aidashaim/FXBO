import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fxbo/pages/auth/create_account/create_account_page.dart';

class CreateAccountDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 12),
        height: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildButton(
              context: context,
              title: 'Open Live Account',
              color: Theme.of(context).primaryColor,
              textStyle: Theme.of(context).textTheme.headline6,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAccountPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 12,
            ),
            _buildButton(
              context: context,
              title: 'Open Demo Account',
              color: Color(0xFF636363),
              textStyle: Theme.of(context).textTheme.headline6,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAccountPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 1.5,
                ),
              ),
              child: _buildButton(
                context: context,
                title: 'Cancel',
                color: Colors.white,
                onTap: () {
                  Navigator.of(context).pop();
                },
                textStyle: Theme.of(context).textTheme.headline6.merge(
                      TextStyle(
                        color: Color(0xFF636363),
                      ),
                    ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget _buildButton({
    @required BuildContext context,
    @required String title,
    @required Color color,
    @required Function onTap,
    @required TextStyle textStyle,
  }) {
    return FlatButton(
      minWidth: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      color: color,
      onPressed: () {
        onTap.call();
      },
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
