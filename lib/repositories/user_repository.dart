import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class UserRepository extends ChangeNotifier {

  final SharedPreferences sharedPreferences;

  UserRepository(
    this.sharedPreferences,
  );

  static const String _PREF_USER_ID = "userId";

  String id;

  Future<void> saveId(String id) async {
    await sharedPreferences.setString(_PREF_USER_ID, id);
  }

  Future<String> getSavedId() async {
    return sharedPreferences.getString(_PREF_USER_ID);
  }
}