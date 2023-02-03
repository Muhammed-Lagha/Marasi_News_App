import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:marasi_news_app/widgets/vSpacing.da

import 'package:marasi_news_app/widgets/vSpacing.dart';


import 'package:provider/provider.dart';import '../provider/dark_theme_provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Drawer(
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CircleAvatar(
                   radius: 50,
                  child: Flexible(
                    child: Image.asset(
                      'assets/images/newspaper_icon.png',
                ),
                  ),),
               const VerticalSpacing(10),
                Flexible(child: Text('Marasi News-App',style:GoogleFonts.lobster(fontSize: 20,letterSpacing: 0.6),)),
               ],
             ),),
            const VerticalSpacing(10),
             ListTile(
              leading: Icon(IconlyBold.home,
                //color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            //VerticalSpacing(20),
            const Divider(),
            ListTile(
              leading: Icon(IconlyBold.bookmark,
               // color: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(
                'Bookmark',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            SwitchListTile(
              title: const Text(
                  'Theme',
                  style: TextStyle(fontSize: 20),
              ),
              secondary: Icon(
                  themeState.getDarkTheme
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                  //color: Theme.of(context).colorScheme.secondary,
              ),
              onChanged: (bool value){
                setState(() {
                  themeState.setDarkTheme = value ;
                });
              },
              value: themeState.getDarkTheme,
            )
          ],
        ),
      ),
    );
  }
}
