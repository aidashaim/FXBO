import 'package:flutter/material.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class UploadedPaymentDetailsPage extends StatefulWidget {
  @override
  _UploadedPaymentDetailsPageState createState() => _UploadedPaymentDetailsPageState();
}

class _UploadedPaymentDetailsPageState extends State<UploadedPaymentDetailsPage> {
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
            children: <Widget>[],
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(
        text: 'add payment details',
        onTap: () {},
      ),
    );
  }
}
