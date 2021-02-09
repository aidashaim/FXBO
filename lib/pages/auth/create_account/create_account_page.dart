import 'package:flutter/material.dart';
import 'package:fxbo/dialog/dialog.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_button_alternative.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/app_drop_down_button.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  List<String> typeList = ['Standard', 'Normal'];
  List<String> leverageList = ['1:10', '1:15', '1:20'];
  List<String> currencyList = ['USD', 'EUR', 'RUB'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'Create Account',
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
                title: 'Type',
                initialValue: 'Standard',
                values: typeList,
                hintText: '',
              ),
              AppDropDownButton(
                title: 'Leverage',
                initialValue: '1:10',
                values: leverageList,
                hintText: '',
              ),
              AppDropDownButton(
                title: 'Currency',
                initialValue: 'USD',
                values: currencyList,
                hintText: '',
              ),
            ],
          ),
        ),
      ),
      bottomSheet: AppButtonBottom(
        text: 'Continue',
        color: Color(0xFF5CBC47),
        onTap: () {
          CustomAppDialogState().showCreateAccountDialog(context);
        },
      ),
    );
  }
}
