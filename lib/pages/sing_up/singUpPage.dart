import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/widgets/appButton.dart';
import 'package:fxbo/widgets/appCheckBox.dart';
import 'package:fxbo/widgets/appDropDownButton.dart';
import 'package:fxbo/widgets/appLogo.dart';
import 'package:fxbo/widgets/appTextField.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  List<String> itemsList = ['Mr', 'Ms'];
  List<String> countryList = ['Russia', 'USA', 'France'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppLogo(),
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppDropDownButton(
                      title: 'Title',
                      initialValue: 'Mr',
                      itemsList: itemsList,
                      hintText: '123'),
                  AppTextField(
                    text: 'First Name',
                    type: TextInputType.text,
                  ),
                  AppTextField(
                    text: 'Last Name',
                    type: TextInputType.text,
                  ),
                  AppDropDownButton(
                      initialValue: 'Russia',
                      itemsList: countryList,
                      hintText: 'Country'),
                  AppTextField(
                    text: 'Phone Number',
                    type: TextInputType.phone,
                  ),
                  AppTextField(
                    text: 'Email',
                    type: TextInputType.emailAddress,
                    isLast: true,
                  ),
                  SizedBox(height: 5.0),
                  AppCheckBox(text: 'Accept me document this'),
                  SizedBox(height: 0.0),
                  AppButton(
                    text: 'Continue',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
