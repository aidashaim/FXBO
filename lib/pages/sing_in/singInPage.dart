import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/pages/forgot_password/forgotPasswordPage.dart';
import 'package:fxbo/pages/sing_up/singUpPage.dart';
import 'package:fxbo/widgets/appButton.dart';
import 'package:fxbo/widgets/appCheckBox.dart';
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppLogo(),
              AppTextField(
                title: 'Email',
                text: 'Enter your email address',
                leading: Icon(
                  Icons.email,
                  color: Color(0xFF636363),
                ),
                type: TextInputType.emailAddress,
              ),
              AppTextField(
                title: 'Password',
                text: 'Enter your password',
                leading: Icon(
                  Icons.lock,
                  color: Color(0xFF636363),
                ),
                type: TextInputType.emailAddress,
                isLast: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: AppCheckBox(text: 'Remember me'),
                  ),
                  FlatButton(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF58BE3F),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              AppButton(
                text: 'Login',
                onTap: () {},
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have an account?',
                    style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  FlatButton(
                    child: Text(
                      'Sing up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF58BE3F),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SingUpPage(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
