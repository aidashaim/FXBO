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
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 220.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppLogo(),
                      AppDropDownButton(
                          title: 'Title',
                          initialValue: 'Mr',
                          itemsList: itemsList,
                          hintText: '123'),
                      AppTextField(
                          text: 'First name', type: TextInputType.emailAddress),
                      AppTextField(
                          text: 'Last name', type: TextInputType.emailAddress),
                      AppDropDownButton(
                          initialValue: 'Russia',
                          itemsList: countryList,
                          hintText: 'Country'),
                      AppTextField(
                          text: 'Phone number',
                          type: TextInputType.emailAddress),
                      AppTextField(
                        text: 'Email',
                        type: TextInputType.emailAddress,
                        isLast: true,
                      ),
                      SizedBox(height: 5.0),
                      AppCheckBox(text: 'Accept me document this'),
                      SizedBox(height: 0.0),
                      AppButton(text: 'Continue', onTap: () {}),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
