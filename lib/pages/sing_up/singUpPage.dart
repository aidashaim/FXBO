import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/widgets/appButton.dart';
import 'package:fxbo/widgets/appCheckBox.dart';
import 'package:fxbo/widgets/appDropDownButton.dart';
import 'package:fxbo/widgets/appLink.dart';
import 'package:fxbo/widgets/appLogo.dart';
import 'package:fxbo/widgets/appTextField.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {

  Widget _buildRememberMeCheckbox() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 20.0,
      child: Row(
        children: <Widget>[
          Container(
            width: 25.0,
            margin: EdgeInsets.only(right:20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF636363), width: 1.0),
              borderRadius: BorderRadius.all( Radius.circular(3.0)),
            ),

            child: Checkbox(
              value: true,//_rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  //_rememberMe = value;
                });
              },
            ),

          ),
          Text(
            'Accept me document this',
            //style: labelStyle,
          ),],
      ),
    );
  }

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
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 60.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppLogo(),
                      AppDropDownButton(),
                      AppTextField(title: '',  text: 'First name', ico: Icons.email, type: TextInputType.emailAddress),
                      AppTextField(title: '', text: 'Last name', ico: Icons.enhanced_encryption, type: TextInputType.emailAddress),
                      AppDropDownButton(),
                      AppTextField(title: '',  text: 'Phone number', ico: Icons.email, type: TextInputType.emailAddress),
                      AppTextField(title: '', text: 'Email', ico: Icons.enhanced_encryption, type: TextInputType.emailAddress),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            _buildRememberMeCheckbox(),
                            //AppCheckBox(),//'Remember me'),
                            //AppLink(size: 14.0, text: 'Forgot Password?', onPressed: () {}),
                          ]
                      ),
                      SizedBox(height: 20.0),
                      AppButton(text: 'Continue', onTap: () {}),
                      /*SizedBox(height: 40.0),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Dont have an account?',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            AppLink(size: 18.0, text: 'Sing up', onPressed: () {}),
                          ]
                      )*/
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