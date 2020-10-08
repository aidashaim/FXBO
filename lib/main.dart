import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/pages/sing_in/singInPage.dart';

void main() => {runApp(MyApp())};

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
          headline5: TextStyle(fontSize: 20.0, color: Color(0xFF636363)),
          headline4: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Color(0xFF636363)),
          headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Color(0xFF636363)),
          headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: Color(0xFF636363)),
          headline1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500, color: Color(0xFF636363)),
          subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Color(0xFF636363)),
          headline6: TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 18.0, fontWeight: FontWeight.bold),
          // Button Text
          bodyText2: TextStyle(fontSize: 15.0, color: Theme.of(context).hintColor),
          // Hint
          bodyText1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF636363)),
          // TextField Title
          caption: TextStyle(fontSize: 12.0, color: Color(0xFF636363)),
        ),
        accentTextTheme: TextTheme(
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
        ),
      ),
      home: SingInPage(),
    );
  }
}