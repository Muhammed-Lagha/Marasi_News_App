import 'package:flutter/material.dart';
import 'package:marasi_news_app/consts/theme_data.dart';
import 'package:marasi_news_app/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool _isDark = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: Styles.themeData(_isDark, context),
        home: HomeScreen());
  }
}
