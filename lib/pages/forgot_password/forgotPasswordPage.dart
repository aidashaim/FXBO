import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/widgets/appButton.dart';
import 'package:fxbo/widgets/appLogo.dart';
import 'package:fxbo/widgets/appTextField.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  AppTextField(
                    title: 'Forgot Password',
                    text: 'Enter your email address',
                    leading: Image.asset(
                      'assets/emailIcon.png',
                      scale: 1.6,
                    ),
                    type: TextInputType.emailAddress,
                  ),
                  AppButton(text: 'Continue', onTap: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
