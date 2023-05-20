import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStore {
  static List<String> passwords = [];
  static bool isnew = passwords.isEmpty;
  static Future<void> setPassword(String password) async {
    passwords.add(password);
    SharedPreferences store = await SharedPreferences.getInstance();
    store.setStringList('Passwords', passwords);
    debugPrint('Done,');
  }

  static getPassword() async {
    SharedPreferences store = await SharedPreferences.getInstance();
    List<String>? password = store.getStringList('Passwords');
    return password;
  }
}
