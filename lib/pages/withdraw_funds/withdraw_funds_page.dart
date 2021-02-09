import 'package:flutter/material.dart';
import 'package:fxbo/pages/withdraw_funds_2/withdraw_funds_2_page.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_button_alternative.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/app_drop_down_button.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class WithdrawFundsPage extends StatefulWidget {
  @override
  _WithdrawFundsPageState createState() => _WithdrawFundsPageState();
}

class _WithdrawFundsPageState extends State<WithdrawFundsPage> {
  final mainColor = Color(0xFF5CBC47);
  List<String> fromList = ['Standard 1', 'Standard 2'];
  List<String> toList = ['ThunderXPay', 'ThunderYPay'];
  List<String> detailsList = ['123456789', '567891234', '987654321'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'withdraw funds',
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
                  title: 'Withdraw From',
                  initialValue: 'Standard 1',
                  values: fromList,
                  hintText: ''),
              AppDropDownButton(
                  title: 'Withdraw To',
                  initialValue: 'ThunderXPay',
                  values: toList, hintText: ''),
              AppDropDownButton(
                  title: 'Payment Details', initialValue: '123456789', values: detailsList, hintText: ''),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppButtonBottom(
        color: Color(0xFF5CBC47),
        text: 'Continue',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WithdrawFunds2Page(),
            ),
          );
        },
      ),
    );
  }
}
