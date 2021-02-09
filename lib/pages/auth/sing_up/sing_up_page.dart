import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fxbo/di/app_di.dart';
import 'package:fxbo/dialog/dialog_data.dart';
import 'package:fxbo/dialog/dialog_factory.dart';
import 'package:fxbo/models/dto/country.dart';
import 'package:fxbo/pages/account_details/account_details_page.dart';
import 'package:fxbo/pages/auth/sing_in/sing_in_page.dart';
import 'package:fxbo/pages/auth/sing_up/fields.dart';
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
  List<String> titles = ['Mr', 'Ms'];
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppLogo(),
        Expanded(
          child: GestureDetector(
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
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppDropDownButton(
                            title: 'Title',
                            values: titles,
                            hintText: 'Title',
                            onChanged: (title) {},
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          AppTextField(
                            text: 'First Name',
                            type: TextInputType.text,
                            controller: _firstNameController,
                            errorText: model.fieldsErrors[SignUpViewFields.name],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          AppTextField(
                            text: 'Last Name',
                            type: TextInputType.text,
                            controller: _lastNameController,
                            errorText: model.fieldsErrors[SignUpViewFields.lastName],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          AppDropDownButton(
                            values: countries.map((e) => e.name).toList(),
                            hintText: 'Country',
                            onChanged: (newCountry) {
                              selectedCountry = countries.firstWhere((element) => element.name == newCountry);
                            },
                            errorText: model.fieldsErrors[SignUpViewFields.country],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          AppTextField(
                            text: 'Phone Number',
                            type: TextInputType.phone,
                            controller: _phoneNumberController,
                            errorText: model.fieldsErrors[SignUpViewFields.phone],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          AppTextField(
                            text: 'Email',
                            type: TextInputType.emailAddress,
                            controller: _emailController,
                            errorText: model.fieldsErrors[SignUpViewFields.email],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          AppTextField(
                            text: 'Password',
                            type: TextInputType.visiblePassword,
                            controller: _passwordController,
                            errorText: model.fieldsErrors[SignUpViewFields.password],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppCheckBox(
                        title: 'Accept me document this',
                        onChanged: (value) {
                          setState(() {

                          });
                        },
                      ),
                      AppButton(
                        text: 'Continue',
                        showLoader: model.isLoaderVisible,
                        onTap: () async {
                          model.register(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            country: selectedCountry,
                            phone: _phoneNumberController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).padding.bottom,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void onCountriesReady(List<Country> countries) {
    setState(() {
      this.countries = countries;
    });
  }

  @override
  void goToSignInPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SingInPage(),
      ),
    );
  }

  @override
  void showDialog(DialogData data) {
    DialogFactory.show(context, data);
  }
}
