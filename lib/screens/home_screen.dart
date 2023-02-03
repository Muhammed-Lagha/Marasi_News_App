import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart' show IconlyLight;
import 'package:google_fonts/google_fonts.dart';
import 'package:marasi_news_app/services/utils.dart';
//import 'package:marasi_news_app/provider/dark_theme_provider.dart';
import 'package:marasi_news_app/widgets/drawer_widget.dart';
//import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).getColor;
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          elevation: 0,
            iconTheme: IconThemeData(color: color),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Marasi ',
            style:GoogleFonts.lobster(
                fontSize: 20,letterSpacing: 0.6,textStyle: TextStyle(color:color,)
                ),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () =>{} ,
                icon: const Icon(IconlyLight.search),),

          ],
        ),
        body:Column(
          children: [
            Container(padding: const EdgeInsets.all(8),
              child: Row(children: [
                GestureDetector(
                  onTap: () => {},
                  child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Theme.of(context).cardColor) ,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('All News'),
                      )),
                )
              ],
              ),
            )
          ],
        ) ,
      ),
    );
  }
}
