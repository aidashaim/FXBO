import 'package:flutter/cupertino.dart';
import 'package:fxbo/pages/auth/sing_in/sing_in_navigator.dart';
import 'package:fxbo/repositories/auth_repository.dart';
import 'package:fxbo/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SignInViewModel extends ChangeNotifier {
  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  SignInViewModel(
    this._userRepository,
    this._authRepository,
  );

  SignInNavigator _navigator;

  void init(SignInNavigator navigator) {
    _navigator = navigator;
  }

  //email: 'testi@email.com',
  //password: 'StrongPassword1',

  void authorize(String login, String password) async {
    _authRepository.login(email: login, password: password).then((result) async {
      _userRepository.id = result.id;
      await _userRepository.saveId(result.id);
      _navigator?.goToAccountDetailsPage();
    }).catchError((error) {
      print(error);
    });
  }
}
