import 'package:flutter/material.dart';
import 'package:fxbo/widgets/appBarWidget.dart';
import 'package:fxbo/widgets/appDrawer.dart';
import 'package:fxbo/widgets/appDropDownButton.dart';
import 'package:fxbo/widgets/bottomAppBarWidget.dart';

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
                  itemsList: typeList,
                  hintText: ''),
              AppDropDownButton(
                  title: 'Leverage',
                  initialValue: '1:10',
                  itemsList: leverageList,
                  hintText: ''),
              AppDropDownButton(
                  title: 'Currency',
                  initialValue: 'USD',
                  itemsList: currencyList,
                  hintText: ''),
            ],
          ),
        ),
      ),
      bottomSheet: BottomButton(
        text: 'Continue',
        onTap: () {},
      ),
    );
  }
}
