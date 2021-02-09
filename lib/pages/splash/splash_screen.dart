import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fxbo/di/app_di.dart';
import 'package:fxbo/pages/accounts_overview/accounts_overview_page.dart';
import 'package:fxbo/pages/auth/sing_in/sing_in_page.dart';
import 'package:fxbo/pages/splash/splash_navigator.dart';
import 'package:fxbo/pages/splash/splash_view_model.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> implements SplashNavigator {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<SplashViewModel>(
        create: (context) => getIt.get<SplashViewModel>()..init(this),
        child: Consumer<SplashViewModel>(
          builder: (context, repository, child) => _buildProgressWidget(),
        ),
      ),
    );
  }

  Widget _buildProgressWidget() {
    return Center(
      child: CircularProgressIndicator(),
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
  void goToSingInPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SingInPage(),
      ),
    );
  }
}
