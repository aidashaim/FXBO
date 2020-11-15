import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fxbo/pages/account_details/account_details_page.dart';
import 'package:fxbo/pages/auth/sing_in/sing_in_page.dart';
import 'package:fxbo/repositories/user_repository.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    UserRepository.getUserId().then((id) {
      if (id.isNotEmpty) {
        UserRepository.id = id;
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AccountDetailsPage(),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => SingInPage(),
          ),
        );
      }
    }).catchError((err) {
      print(err);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SingInPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
