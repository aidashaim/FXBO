import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/repositories/auth_repository.dart';
import 'package:fxbo/widgets/app_button.dart';
import 'package:fxbo/widgets/app_check_box.dart';
import 'package:fxbo/widgets/app_drop_down_button.dart';
import 'package:fxbo/widgets/app_logo.dart';
import 'package:fxbo/widgets/app_text_field.dart';
import 'package:global_configuration/global_configuration.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppLogo(),
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppDropDownButton(
                      title: 'Title',
                      initialValue: 'Mr',
                      itemsList: itemsList,
                      hintText: '123',
                    ),
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
                      hintText: 'Country',
                    ),
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
                      onTap: () async {

                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
