import 'package:flutter/material.dart';
import 'package:fxbo/pages/upload_payment_details/upload_payment_details_page.dart';
import 'package:fxbo/pages/uploaded_payment_details/uploaded_payment_details_item.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_button_alternative.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class UploadedPaymentDetailsPage extends StatefulWidget {
  @override
  _UploadedPaymentDetailsPageState createState() =>
      _UploadedPaymentDetailsPageState();
}

class _UploadedPaymentDetailsPageState
    extends State<UploadedPaymentDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'Uploaded Payment Details',
        appBar: AppBar(),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          color: Color(0xFF5CBC47),
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 12,
                        bottom: 12,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return UploadedPaymentDetailsItem();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 12,
                        );
                      },
                    ),
                  ),
                  AppButtonBottom(
                    text: 'add payment details',
                    color: Color(0xFF5CBC47),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UploadPaymentDetailsPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
