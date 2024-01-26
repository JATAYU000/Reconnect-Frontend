import 'package:shared_preferences/shared_preferences.dart';

addBoolToSF(bool boolvalue) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('isLoggedIn', boolvalue);
}

getBoolValuesSF(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? boolValue = prefs.getBool(key);
  return boolValue;
}

removeValues(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove(key);
}

checkIfExists(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool checkValue = prefs.containsKey(key);
  return checkValue;
}

loadPreferences(String key) async {
    final prefs = await SharedPreferences.getInstance();
    
      bool boolValue = prefs.getBool(key) ?? false;
    return boolValue;
  }

  addString(String key,String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key,value);
}