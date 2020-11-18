import 'package:flutter/material.dart';
import 'package:fxbo/pages/splash/splash_navigator.dart';
import 'package:fxbo/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SplashViewModel extends ChangeNotifier {
  final UserRepository userRepository;

  SplashViewModel(
    this.userRepository,
  );

  Future<void> init(SplashNavigator splashNavigator) async {
    final savedId = await userRepository.getSavedId();
    if (savedId != null && savedId.isNotEmpty) {
      userRepository.id = savedId;
      splashNavigator.goToAccountDetailsPage();
    } else {
      splashNavigator.goToSingInPage();
    }
  }
}
