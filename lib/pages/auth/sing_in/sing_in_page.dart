import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/pages/account/account_page.dart';
import 'package:fxbo/pages/account_details/account_details_page.dart';
import 'package:fxbo/pages/auth/forgot_password/forgot_password_page.dart';
import 'package:fxbo/pages/auth/sing_up/sing_up_page.dart';
import 'package:fxbo/pages/messages/messages_page.dart';
import 'package:fxbo/repositories/auth_repository.dart';
import 'package:fxbo/widgets/app_button.dart';
import 'package:fxbo/widgets/app_check_box.dart';
import 'package:fxbo/widgets/app_logo.dart';
import 'package:fxbo/widgets/app_text_field.dart';
import 'package:global_configuration/global_configuration.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppLogo(),
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Padding(
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
                            style: Theme.of(context).textTheme.headline1.merge(TextStyle(
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
                      onTap: () async {
                        final baseUrl = GlobalConfiguration().get('baseUrl');
                        final headers = {
                          'Authorization':
                          'Bearer ZGNiNTYyNTE3ZDcwYzgzZDJiNzFiMmE1NmNmNmNhYjQ4YmNiODQ5NWRiZWE4ZDAzNGMzZWMyM2I4YjhmZDc0NA',
                        };
                        final options = {
                          'version': '1.0.0',
                        };
                        final dio = Dio(BaseOptions(
                          baseUrl: baseUrl,
                          headers: headers,
                          queryParameters: options,
                        ),);
                        final loginResult = await AuthRepository(dio).login(email: 'test@example.com', password: '');
                        print(loginResult);
                      },
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Don\'t have an account?',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline2
                              .merge(TextStyle(
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                        FlatButton(
                          child: Text(
                            'Sing up',
                            style: Theme
                                .of(context)
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
      ),
    );
  }
}