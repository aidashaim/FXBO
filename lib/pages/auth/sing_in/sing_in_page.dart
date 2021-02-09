import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/di/app_di.dart';
import 'package:fxbo/dialog/dialog_data.dart';
import 'package:fxbo/dialog/dialog_factory.dart';
import 'package:fxbo/pages/accounts_overview/accounts_overview_page.dart';
import 'package:fxbo/pages/auth/forgot_password/forgot_password_page.dart';
import 'package:fxbo/pages/interfaces/dialog_viewer.dart';
import 'package:fxbo/pages/auth/sing_in/sign_in_view_model.dart';
import 'package:fxbo/pages/auth/sing_in/sing_in_navigator.dart';
import 'package:fxbo/pages/auth/sing_up/sing_up_page.dart';
import 'package:fxbo/widgets/app_button.dart';
import 'package:fxbo/widgets/app_check_box.dart';
import 'package:fxbo/widgets/app_logo.dart';
import 'package:fxbo/widgets/app_text_field.dart';
import 'package:provider/provider.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> implements DialogViewer, SignInNavigator {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<SignInViewModel>(
        create: (context) => getIt.get<SignInViewModel>()..init(this, this),
        child: Consumer<SignInViewModel>(
          builder: (context, model, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppLogo(),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  AppTextField(
                                    title: 'Email',
                                    text: 'Enter your email address',
                                    leading: Image.asset(
                                      'assets/ic_mail.png',
                                      scale: 1.6,
                                    ),
                                    type: TextInputType.emailAddress,
                                    controller: loginController,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  AppTextField(
                                    title: 'Password',
                                    text: 'Enter your password',
                                    leading: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Image.asset(
                                        'assets/ic_lock.png',
                                        scale: 1.6,
                                      ),
                                    ),
                                    type: TextInputType.visiblePassword,
                                    controller: passwordController,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: AppCheckBox(
                                          title: 'Remember me',
                                          onChanged: (value) {
                                            model.rememberUser = value;
                                          },
                                        ),
                                      ),
                                      FlatButton(
                                        child: Text(
                                          'Forgot Password?',
                                          style: Theme.of(context).textTheme.headline1.merge(
                                                TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFF58BE3F),
                                                ),
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
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppButton(
                                text: 'Login',
                                showLoader: model.isLoaderVisible,
                                onTap: () async {
                                  model.authorize(
                                    login: loginController.text,
                                    password: passwordController.text,
                                  );
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Don\'t have an account?',
                                    style: Theme.of(context).textTheme.headline2.merge(
                                          TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                  ),
                                  FlatButton(
                                    child: Text(
                                      'Sing up',
                                      style: Theme.of(context).textTheme.headline2.merge(
                                            TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF58BE3F),
                                            ),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).padding.bottom,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void goToAccountsOverviewPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => AccountsOverviewPage(),
      ),
    );
  }

  @override
  void goToSingUpPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SingUpPage(),
      ),
    );
  }

  @override
  void showDialog(DialogData data) {
    DialogFactory.show(context, data);
  }
}
