import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/di/app_di.dart';
import 'package:fxbo/models/country.dart';
import 'package:fxbo/pages/account_details/account_details_page.dart';
import 'package:fxbo/pages/auth/sing_up/i_sign_up_view.dart';
import 'package:fxbo/pages/auth/sing_up/sign_up_navigator.dart';
import 'package:fxbo/pages/auth/sing_up/sign_up_view_model.dart';
import 'package:fxbo/widgets/app_button.dart';
import 'package:fxbo/widgets/app_check_box.dart';
import 'package:fxbo/widgets/app_drop_down_button.dart';
import 'package:fxbo/widgets/app_logo.dart';
import 'package:fxbo/widgets/app_text_field.dart';
import 'package:provider/provider.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> implements ISignUpView, SignUpNavigator {
  List<String> itemsList = ['Mr', 'Ms'];
  List<Country> countries;

  Country selectedCountry;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<SignUpViewModel>(
        create: (context) => getIt.get<SignUpViewModel>()..init(this, this),
        child: Consumer<SignUpViewModel>(
          builder: (context, model, child) => _buildContent(model),
        ),
      ),
    );
  }

  Widget _buildContent(SignUpViewModel model) {
    if (countries != null) {
      return _buildLoadedPage(model);
    } else {
      return _buildLoadingPage();
    }
  }

  Widget _buildLoadingPage() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildLoadedPage(SignUpViewModel model) {
    return SingleChildScrollView(
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
                    controller: _firstNameController,
                  ),
                  AppTextField(
                    text: 'Last Name',
                    type: TextInputType.text,
                    controller: _lastNameController,
                  ),
                  AppDropDownButton(
                    initialValue: countries.first.name,
                    itemsList: countries.map((e) => e.name).toList(),
                    hintText: 'Country',
                    onChanged: (newCountry) {
                      selectedCountry = countries.firstWhere((element) => element.name == newCountry);
                    },
                  ),
                  AppTextField(
                    text: 'Phone Number',
                    type: TextInputType.phone,
                    controller: _phoneNumberController,
                  ),
                  AppTextField(
                    text: 'Email',
                    type: TextInputType.emailAddress,
                    controller: _emailController,
                  ),
                  AppTextField(
                    text: 'Password',
                    type: TextInputType.visiblePassword,
                    controller: _passwordController,
                    isLast: true,
                  ),
                  SizedBox(height: 5.0),
                  AppCheckBox(text: 'Accept me document this'),
                  SizedBox(height: 0.0),
                  AppButton(
                    text: 'Continue',
                    onTap: () async {
                      model.register(
                        firstName: _firstNameController.text,
                        lastName: _lastNameController.text,
                        countryCode: selectedCountry.code,
                        phone: _phoneNumberController.text,
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void onCountriesReady(List<Country> countries) {
    setState(() {
      this.countries = countries;
      this.selectedCountry = countries.first;
    });
  }

  @override
  void goToAccountDetailsPage() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AccountDetailsPage()));
  }
}
