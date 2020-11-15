import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {

  static const String _PREF_USER_ID = "userId";

  static String id;

  static Future<void> saveUserId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_PREF_USER_ID, id);
  }

  static Future<String> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_PREF_USER_ID);
  }

}