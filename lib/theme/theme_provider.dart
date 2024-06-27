import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/theme/dark_mode.dart';
import 'package:flutter_food_delivery/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  void toggleTheme() {
    themeData = isDarkMode ? lightMode : darkMode;
  }

  // void toggleTheme() {
  //   _themeData = isDarkMode ? lightMode : darkMode;
  //   notifyListeners();
  // }
}
