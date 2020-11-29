import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/pages/account/account_page.dart';
import 'package:fxbo/pages/accounts_overview/accounts_overview_page.dart';
import 'package:fxbo/pages/auth/create_account/create_account_page.dart';
import 'package:fxbo/pages/documents/documents_page.dart';
import 'package:fxbo/pages/downloads/downloads_page.dart';
import 'package:fxbo/pages/messages/messages_page.dart';
import 'package:fxbo/pages/splash/splash_screen.dart';
import 'package:fxbo/pages/upload_new_documents/upload_new_documents_page.dart';
import 'package:fxbo/pages/upload_payment_details/upload_payment_details_page.dart';
import 'package:fxbo/pages/uploaded_payment_details/uploaded_payment_details_page.dart';
import 'package:fxbo/pages/withdraw_funds/withdraw_funds_page.dart';

import 'di/app_di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FXBO',
      theme: ThemeData(
        textSelectionHandleColor: Color(0xFF5CBC47),
        canvasColor: Colors.white,
        primaryColor: Color(0xFF5CBC47),
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        accentColor: Color(0xFF5CBC47),
        cursorColor: Color(0xFF5CBC47),
        focusColor: Color(0xFF5CBC47),
        hintColor: Color(0xFFAAAAAA),
        splashColor: Color(0xFF5CBC47),
        buttonColor: Color(0xFF5CBC47),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
              height: 1.2,
              letterSpacing: 0,
              color: Color(0xFF303030)),
          headline2: TextStyle(
              fontFamily: 'Nunito',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
              height: 1.2,
              letterSpacing: 0,
              color: Color(0xFF303030)),
          headline3: TextStyle(
              fontFamily: 'Nunito',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
              height: 1.2,
              letterSpacing: 0,
              color: Color(0xFFFFFFFF)),
          headline4: TextStyle(
              fontFamily: 'Nunito',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 17.0,
              height: 1.15,
              letterSpacing: 0.34,
              color: Color(0xFFFFFFFF)),
          headline5: TextStyle(
              fontFamily: 'Nunito',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
              height: 1.15,
              letterSpacing: 0.34,
              color: Color(0xFF636363)),
          headline6: TextStyle(
              fontFamily: 'Nunito',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
              height: 0.9,
              letterSpacing: 0,
              color: Color(0xFFFFFFFF)),
          subtitle1: TextStyle(
              fontFamily: 'Nunito-bold',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              height: 1.5,
              letterSpacing: 0,
              color: Color(0xFF303030)),
          // Button Text
          bodyText2: TextStyle(fontSize: 15.0, color: Theme.of(context).hintColor),
          // Hint
          bodyText1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF636363)),
          // TextField Title
          caption: TextStyle(fontSize: 12.0, color: Color(0xFF636363)),
        ),
        /*accentTextTheme: TextTheme(
          headline5: TextStyle(fontSize: 20.0, color: Theme.of(context).accentColor),
          headline4: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Color(0xFF5CBC47)),
          headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Color(0xFF5CBC47)),
          headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: Color(0xFF5CBC47)),
          headline1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500, color: Color(0xFF5CBC47)),
          subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white),
          headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF5CBC47)),
          bodyText2: TextStyle(fontSize: 12.0, color: Color(0xFF5CBC47)),
          bodyText1: TextStyle(fontSize: 14.0, color: Color(0xFF5CBC47)),
          caption: TextStyle(fontSize: 12.0, color: Color(0xFF5CBC47)),
        ),*/
      ),
      home: UploadPaymentDetailsPage(),
    );
  }
}
