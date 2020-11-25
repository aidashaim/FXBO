import 'package:flutter/widgets.dart';
import 'package:fxbo/models/registration_repsone.dart';
import 'package:fxbo/pages/auth/sing_up/i_sign_up_view.dart';
import 'package:fxbo/pages/auth/sing_up/sign_up_navigator.dart';
import 'package:fxbo/repositories/auth_repository.dart';
import 'package:fxbo/repositories/dict_repository.dart';
import 'package:fxbo/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignUpViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final DictRepository _dictRepository;

  ISignUpView _view;
  SignUpNavigator _navigator;

  SignUpViewModel(
    this._authRepository,
    this._dictRepository,
    this._userRepository,
  );

  void init(ISignUpView view, SignUpNavigator navigator) async {
    this._view = view;
    this._navigator = navigator;
    _dictRepository.getCountries().then((countries) => _view.onCountriesReady(countries));
  }

  Future<void> register({
    @required String firstName,
    @required String lastName,
    @required String countryCode,
    @required String phone,
    @required String email,
    @required String password,
  }) async {
    _authRepository.register(
      firstName: firstName,
      lastName: lastName,
      countryCode: countryCode,
      phone: phone,
      email: email,
      password: password,
    ).then((RegistrationResponse result) async {
      _userRepository.id = result.id;
      await _userRepository.saveId(result.id);
      _navigator?.goToAccountDetailsPage();
    }).catchError((error) {
      print(error);
    });
  }
}
