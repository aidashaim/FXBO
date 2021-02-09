import 'package:flutter/widgets.dart';
import 'package:fxbo/dialog/dialog_data.dart';
import 'package:fxbo/models/dto/country.dart';
import 'package:fxbo/models/dto/registration_repsone.dart';
import 'package:fxbo/pages/auth/sing_up/fields.dart';
import 'package:fxbo/pages/auth/sing_up/i_sign_up_view.dart';
import 'package:fxbo/pages/auth/sing_up/sign_up_navigator.dart';
import 'package:fxbo/repositories/auth_repository.dart';
import 'package:fxbo/repositories/dict_repository.dart';
import 'package:fxbo/utils/field_error.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignUpViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;
  final DictRepository _dictRepository;

  ISignUpView _view;
  SignUpNavigator _navigator;

  SignUpViewModel(this._authRepository,
      this._dictRepository,);

  void init(ISignUpView view, SignUpNavigator navigator) async {
    this._view = view;
    this._navigator = navigator;
    _dictRepository.getCountries().then((countries) => _view.onCountriesReady(countries));
  }

  Map<String, String> fieldsErrors = {};
  bool isLoaderVisible = false;

  bool _validateFields({
    @required String firstName,
    @required String lastName,
    @required Country country,
    @required String phone,
    @required String email,
    @required String password,
  }) {
    fieldsErrors.clear();
    if (firstName.isEmpty) {
      fieldsErrors[SignUpViewFields.name] = "Must not be empty";
    }
    if (lastName.isEmpty) {
      fieldsErrors[SignUpViewFields.lastName] = "Must not be empty";
    }
    if (country == null) {
      fieldsErrors[SignUpViewFields.country] = "Select one";
    }
    if (phone.isEmpty) {
      fieldsErrors[SignUpViewFields.phone] = "Must not be empty";
    }
    if (email.isEmpty) {
      fieldsErrors[SignUpViewFields.email] = "Must not be empty";
    }
    if (password.isEmpty) {
      fieldsErrors[SignUpViewFields.password] = "Must not be empty";
    }
    notifyListeners();
    return fieldsErrors.isEmpty;
  }

  Future<void> register({
    @required String firstName,
    @required String lastName,
    @required Country country,
    @required String phone,
    @required String email,
    @required String password,
  }) async {
    final isValidFields = _validateFields(
      firstName: firstName,
      lastName: lastName,
      country: country,
      phone: phone,
      email: email,
      password: password,
    );
    if (isValidFields) {
      _changeLoaderVisibility(true);
      _authRepository
          .register(
        firstName: firstName,
        lastName: lastName,
        countryCode: country.code,
        phone: phone,
        email: email,
        password: password,
      )
          .then((RegistrationResponse result) async {
        _changeLoaderVisibility(false);
        _navigator?.goToSignInPage();
      }).catchError((error) {
        _changeLoaderVisibility(false);
        _view.showDialog(
          DialogData(
            type: DialogType.ERROR,
            title: 'Fail',
            text: 'Error while creating account',
          ),
        );
      });
    }
  }

  void _changeLoaderVisibility(bool isVisible) {
    isLoaderVisible = isVisible;
    notifyListeners();
  }
}
