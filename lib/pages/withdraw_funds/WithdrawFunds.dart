import 'package:flutter/material.dart';
import 'package:fxbo/widgets/appBarWidget.dart';
import 'package:fxbo/widgets/appDrawer.dart';
import 'package:fxbo/widgets/appDropDownButton.dart';
import 'package:fxbo/widgets/bottomAppBarWidget.dart';

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
                  itemsList: fromList,
                  hintText: ''),
              AppDropDownButton(
                  title: 'Withdraw To',
                  initialValue: 'ThunderXPay',
                  itemsList: toList,
                  hintText: ''),
              AppDropDownButton(
                  title: 'Payment Details',
                  initialValue: '123456789',
                  itemsList: detailsList,
                  hintText: ''),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(text: 'Continue', onTap: (){},),
    );
  }
}
