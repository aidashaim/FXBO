import 'package:fxbo/models/dto/country.dart';
import 'package:fxbo/pages/interfaces/dialog_viewer.dart';

abstract class ISignUpView extends DialogViewer {
  void onCountriesReady(List<Country> countries);
}
