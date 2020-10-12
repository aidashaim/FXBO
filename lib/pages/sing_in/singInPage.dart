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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppLogo(),
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppTextField(
                    title: 'Email',
                    text: 'Enter your email address',
                    leading: Image.asset(
                      'assets/emailIcon.png',
                      scale: 1.6,
                    ),
                    type: TextInputType.emailAddress,
                  ),
                  AppTextField(
                    title: 'Password',
                    text: 'Enter your password',
                    leading: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Image.asset(
                          'assets/passwordIcon.png',
                          scale: 1.6,
                        )),
                    type: TextInputType.visiblePassword,
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
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              .merge(TextStyle(
                                fontSize: 13,
                                color: Color(0xFF58BE3F),
                              )),
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
                  SizedBox(height: 80.0),
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
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .merge(TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      FlatButton(
                        child: Text(
                          'Sing up',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .merge(TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF58BE3F),
                              )),
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
        ],
      ),
    );
  }
}
