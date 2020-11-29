import 'package:flutter/material.dart';
import 'package:fxbo/pages/uploaded_payment_details/uploaded_payment_details_page.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/app_drop_down_button.dart';
import 'package:fxbo/widgets/app_text_field.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadPaymentDetailsPage extends StatefulWidget {
  @override
  _UploadPaymentDetailsPageState createState() =>
      _UploadPaymentDetailsPageState();
}

class _UploadPaymentDetailsPageState extends State<UploadPaymentDetailsPage> {
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
                DottedBorder(
                  dashPattern: [8, 4],
                  strokeWidth: 2.0,
                  color: mainColor,
                  child: Container(
                    padding: EdgeInsets.only(top: 10.0),
                    alignment: Alignment.center,
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
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomButton(
          text: 'Upload',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UploadedPaymentDetailsPage(),
              ),
            );
          },
        ));
  }
}
