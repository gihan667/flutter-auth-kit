import 'package:shared_preferences/shared_preferences.dart';

class DarkModeHelper {
  static const ACTIVE_MODE = "mode";

  setDarkMode(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(ACTIVE_MODE, value);
  }

  Future<bool> getMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(ACTIVE_MODE) ?? false;
  }
}