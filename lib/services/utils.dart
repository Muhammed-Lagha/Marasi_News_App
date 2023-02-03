import 'package:flutter/cupertino.dart' show BuildContext, Color;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:marasi_news_app/provider/dark_theme_provider.dart';
 class Utils {
  late BuildContext context ;
  Utils(this.context);

  bool get getTheme => Provider.of<DarkThemeProvider>(context).getDarkTheme;
  Color get getColor => getTheme ? Colors.white : Colors.black;

 }