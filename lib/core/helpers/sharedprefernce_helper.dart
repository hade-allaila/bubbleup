import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefernceHelper {
  late SharedPreferences? sharedPrefernce;

  SharedPrefernceHelper(this.sharedPrefernce);

  void setData(String key, dynamic value) {
    if (value is String) {
      sharedPrefernce?.setString(key, value);
    } else if (value is int) {
      sharedPrefernce?.setInt(key, value);
    } else if (value is bool) {
      sharedPrefernce?.setBool(key, value);
    } else if (value is double) {
      sharedPrefernce?.setDouble(key, value);
    } else if (value is List<String>) {
      sharedPrefernce?.setStringList(key, value);
    } else {
      print("value is type is not supported");
    }
  }

  int? getInt(String key) {
    return sharedPrefernce?.getInt(key);
  }

  String? getString(String key) {
    return sharedPrefernce?.getString(key);
  }

  List<String>? getStringList(String key) {
    return sharedPrefernce?.getStringList(key);
  }

  bool? getBool(String key) {
    return sharedPrefernce?.getBool(key);
  }

  double? getDouble(String key) {
    return sharedPrefernce?.getDouble(key);
  }
}
