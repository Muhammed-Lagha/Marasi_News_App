import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart' show IconlyLight;
import 'package:google_fonts/google_fonts.dart';
import 'package:marasi_news_app/consts/vars.dart';
import 'package:marasi_news_app/services/utils.dart';
//import 'package:marasi_news_app/provider/dark_theme_provider.dart';
import 'package:marasi_news_app/widgets/drawer_widget.dart';

import '../widgets/tabs.dart';
//import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var newsType = NewsType.allNews;
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
                TabsWidget(
                    text: 'All News',
                    color: newsType == NewsType.allNews? Theme.of(context).cardColor
                     : Colors.transparent,
                    function: (){
                      if(newsType == NewsType.allNews){
                        return;
                      }
                      setState(() {
                        newsType = NewsType.allNews;
                      });
                    },
                    fontSize: newsType == NewsType.allNews ? 22 : 14,),
                SizedBox(width: 25,),

                TabsWidget(
                  text: 'All News',
                  color: newsType == NewsType.topTrending? Theme.of(context).cardColor
                      : Colors.transparent,
                  function: (){
                    if(newsType == NewsType.topTrending){
                      return;
                    }
                    setState(() {
                      newsType = NewsType.topTrending;
                    });
                  },
                  fontSize: newsType == NewsType.topTrending ? 22 : 14,
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
