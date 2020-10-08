import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/widgets/appButton.dart';
import 'package:fxbo/widgets/appCheckBox.dart';
import 'package:fxbo/widgets/appLink.dart';
import 'package:fxbo/widgets/appLogo.dart';
import 'package:fxbo/widgets/appTextField.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 220.0,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AppLogo(),
                          AppTextField(
                              title: 'Email',
                              text: 'Enter your email address',
                              ico: Image.asset('asset/email.svg'),
                              type: TextInputType.emailAddress),
                          AppTextField(
                            title: 'Password',
                            text: 'Enter your password',
                            ico: Image.asset('asset/email.svg'),
                            type: TextInputType.emailAddress,
                            isLast: true,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                AppCheckBox(text: 'Remember me'),
                                AppLink(
                                    fontSize: 16.0,
                                    text: 'Forgot Password?',
                                    onPressed: () {}),
                              ]),
                          SizedBox(height: 60.0),
                          AppButton(text: 'Login', onTap: () {}),
                          SizedBox(height: 40.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'Don' + "'" + 't have an account?',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                AppLink(
                                    fontSize: 18.0,
                                    text: 'Sing up',
                                    onPressed: () {}),
                              ])
                        ]),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
