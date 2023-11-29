import 'dart:convert';

import 'package:chatapp/storage/pref_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sharedPrefManager = GetIt.instance;

class SharedPrefManager {
  static SharedPrefManager? _instance;
  static SharedPreferences? _sharedPref;
  static var flutterSecureStorage = const FlutterSecureStorage();

  static Future<SharedPrefManager> getInstance() async {
    _sharedPref ??= await SharedPreferences.getInstance();
    return _instance ??= SharedPrefManager();
  }

  void setUserId(int userId) {
    _sharedPref?.setInt(PreferenceConstants.PREF_USER_ID, userId);
  }

  int? getUserId() {
    return _sharedPref?.getInt(PreferenceConstants.PREF_USER_ID);
  }

  void setUser(Map<String, dynamic> user) {
    _sharedPref?.setString(PreferenceConstants.PREF_USER, jsonEncode(user));
  }

  String? getUser() {
    var user =  _sharedPref?.getString(PreferenceConstants.PREF_USER);
    return jsonDecode(user!);
  }

  void setAccessToken(String token) {
    _sharedPref?.setString(PreferenceConstants.PREF_ACCESS_TOKEN, token);
  }

  String? getAccessToken() {
    return _sharedPref?.getString(PreferenceConstants.PREF_ACCESS_TOKEN);
  }

  void clear() {
    _sharedPref?.clear();
  }
}
