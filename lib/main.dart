import 'package:flutter/material.dart';
import 'package:marasi_news_app/consts/theme_data.dart';
import 'package:marasi_news_app/provider/dark_theme_provider.dart';
import 'package:marasi_news_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeProvider.setDarkTheme =
      await themeProvider.darkThemePrefs.getTheme();
  }
  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return themeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context ,themeProvider , child ) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: Styles.themeData(themeProvider.getDarkTheme, context),
              home: const HomeScreen());
        }
      ),
    );
  }
}
