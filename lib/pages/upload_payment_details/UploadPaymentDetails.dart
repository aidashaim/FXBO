import 'package:flutter/material.dart';
import 'package:fxbo/widgets/appBarWidget.dart';
import 'package:fxbo/widgets/appDrawer.dart';
import 'package:fxbo/widgets/appDropDownButton.dart';
import 'package:fxbo/widgets/appTextField.dart';
import 'package:fxbo/widgets/bottomAppBarWidget.dart';

class UploadPaymentDetails extends StatefulWidget {
  @override
  _UploadPaymentDetailsState createState() => _UploadPaymentDetailsState();
}

class _UploadPaymentDetailsState extends State<UploadPaymentDetails> {
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
                SizedBox(height: 20.0),
                AppDropDownButton(
                    title: 'I want to upload',
                    initialValue: 'Skrill',
                    itemsList: uploadList,
                    hintText: ''),
                AppTextField(
                  text: 'Skrill Account Email',
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: mainColor)),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: double.maxFinite,
                          child: IconButton(
                            iconSize: 60.0,
                            icon: Image.asset(
                              'assets/uploadIcon.png',
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          'Payment Method \n Screenshot',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .merge(TextStyle(fontSize: 20.0)),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomButton(
          text: 'Upload',
          onTap: () {},
        ));
  }
}
