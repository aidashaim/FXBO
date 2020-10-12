import 'package:flutter/material.dart';
import 'package:fxbo/widgets/appBarWidget.dart';
import 'package:fxbo/widgets/appDrawer.dart';
import 'package:fxbo/widgets/appDropDownButton.dart';
import 'package:fxbo/widgets/appTextField.dart';
import 'package:fxbo/widgets/bottomAppBarWidget.dart';

class UploadedPaymentDetails extends StatefulWidget {
  @override
  _UploadedPaymentDetailsState createState() => _UploadedPaymentDetailsState();
}

class _UploadedPaymentDetailsState extends State<UploadedPaymentDetails> {
  final mainColor = Color(0xFF5CBC47);
  List<String> uploadList = ['Skrill', 'Standard 2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBarWidget(
          title: 'Upload Payment Details',
          appBar: AppBar(),
        ),
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

              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomButton(
          text: 'add payment details',
          onTap: () {},
        ));
  }
}
