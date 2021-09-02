import 'package:flutter/material.dart';
import 'package:flutter_auth/helpers/dark_mode_helper.dart';

class DarkModeProvider with ChangeNotifier {
  DarkModeHelper darkModeHelper = DarkModeHelper();
  bool _darkMode = false;

  bool get darkMode => _darkMode;

  set darkMode(bool value) {
    _darkMode = value;
    darkModeHelper.setDarkMode(value);

    notifyListeners();
  }
}