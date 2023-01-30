import 'package:flutter/cupertino.dart';
import 'package:marasi_news_app/services/dark_theme_preferences.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePref darkThemePrefs = DarkThemePref();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
  }
}
