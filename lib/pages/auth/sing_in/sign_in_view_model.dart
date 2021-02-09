import 'package:flutter/cupertino.dart';
import 'package:fxbo/dialog/dialog_data.dart';
import 'package:fxbo/pages/interfaces/dialog_viewer.dart';
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

  DialogViewer _view;
  SignInNavigator _navigator;

  bool isLoaderVisible = false;
  bool rememberUser = false;

  void init(DialogViewer view, SignInNavigator navigator) {
    _view = view;
    _navigator = navigator;
  }

  //email: 'testi@email.com',
  //password: 'StrongPassword1',

  void authorize({
    @required String login,
    @required String password,
  }) async {
    _changeLoaderVisibility(true);
    _authRepository.login(email: login, password: password).then((result) async {
      if (rememberUser) {
        await _userRepository.saveAndSetId(result.id);
      } else {
        _userRepository.setId(result.id);
      }
      _navigator?.goToAccountsOverviewPage();
    }).catchError((error) {
      _changeLoaderVisibility(false);
      _view.showDialog(
        DialogData(
          type: DialogType.ERROR,
          title: 'Authorization failed',
          text: 'Incorrect email or password',
        ),
      );
    });
  }

  void _changeLoaderVisibility(bool isVisible) {
    isLoaderVisible = isVisible;
    notifyListeners();
  }
}
