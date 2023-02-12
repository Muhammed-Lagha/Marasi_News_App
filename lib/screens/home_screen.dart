import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_iconly/flutter_iconly.dart' show IconlyLight;
import 'package:google_fonts/google_fonts.dart';
import 'package:marasi_news_app/consts/vars.dart';
import 'package:marasi_news_app/services/utils.dart';
//import 'package:marasi_news_app/provider/dark_theme_provider.dart';
import 'package:marasi_news_app/widgets/drawer_widget.dart';
import 'package:marasi_news_app/widgets/vSpacing.dart';

import '../widgets/articles_widget.dart';
import '../widgets/tabs.dart';
//import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var newsType = NewsType.allNews;
  int currentPageIndex = 0;
  String sortBy = SortByEnum.publishedAt.name;

  //get dropDownItems => null;
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
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(children: [
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
                    fontSize: newsType == NewsType.allNews ? 16 : 14,),
                const SizedBox(width: 20,),
                TabsWidget(
                  text: 'Top Trending',
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
                  fontSize: newsType == NewsType.topTrending ? 16 : 14,
                )
              ],
              ),
              const VerticalSpacing(10),
              newsType == NewsType.topTrending?Container()
              : SizedBox(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    paginationButton(text: 'Prev',function: (){
                      if (currentPageIndex == 0){return;}
                      setState(() {
                        currentPageIndex -= 1;
                      });
                    },),
                    Flexible(
                      flex: 2,
                      child: ListView.builder(
                        itemCount: 25,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: currentPageIndex == index ? Colors.blue
                                : Theme.of(context).cardColor,
                            child: InkWell(
                            onTap: () {
                              setState(() {
                                currentPageIndex = index ;
                              });
                            },
                            child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${index + 1}"),
                                  )),
                            ),
                          ),
                        );

                      },),
                    ),
                    paginationButton( text: 'Next',
                      function: (){
                      if(currentPageIndex == 24){return;}
                      setState(() {
                        currentPageIndex += 1;
                      });
                    },),
                  ],
                ),
              ),
              const VerticalSpacing(10),
              newsType == NewsType.topTrending ? Container()
                  : Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Theme.of(context).cardColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DropdownButton(value: sortBy, items: dropDownItems, onChanged: (String? value) {

                    },),
                  ),
                ),
              ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                        itemBuilder: (ctc,index){
                      return ArticleWidget();
                    }),
                  ),

            ],),
        ) ,
      ),
    );
  }
  List<DropdownMenuItem<String>> get dropDownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        value: SortByEnum.relevancy.name,
        child: Text(SortByEnum.relevancy.name),),
      DropdownMenuItem(
        value: SortByEnum.publishedAt.name,
        child: Text(SortByEnum.publishedAt.name),),
      DropdownMenuItem(
        value: SortByEnum.popularity.name,
        child: Text(SortByEnum.popularity.name),),
    ];
    return menuItems ;
  }
  Widget paginationButton ({required Function function ,required String text}){
    return ElevatedButton(onPressed: () => {function},
      child:  Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.all(6),
        textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),

      ),
    );
  }
}
