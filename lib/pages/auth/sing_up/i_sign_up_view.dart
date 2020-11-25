import 'package:fxbo/models/country.dart';

abstract class ISignUpView {
  void onCountriesReady(List<Country> countries);
}
