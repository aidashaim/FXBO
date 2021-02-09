import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository extends ChangeNotifier {

  final SharedPreferences sharedPreferences;

  UserRepository(
    this.sharedPreferences,
  );

  static const String _PREF_USER_ID = "userId";

  String _id;

  void init() {
    this._id = _getSavedId();
  }

  Future<void> saveAndSetId(String id) async {
    await saveId(id);
    setId(id);
  }

  Future<void> saveId(String id) async {
    await sharedPreferences.setString(_PREF_USER_ID, id);
  }

  void setId(String id) async {
    this._id = id;
  }

  String getId() {
    return this._id;
  }

  String _getSavedId() {
    return sharedPreferences.getString(_PREF_USER_ID);
  }

  void clean() {
    sharedPreferences.clear();
  }

}