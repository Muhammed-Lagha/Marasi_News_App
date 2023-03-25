import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marasi_news_app/widgets/articles_widget.dart';
import 'package:marasi_news_app/widgets/empty_screen.dart';
import '../services/utils.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).getColor;
    return Scaffold(appBar: AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: color),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text('Bookmarks ',
        style:GoogleFonts.lobster(
            fontSize: 20,letterSpacing: 0.6,textStyle: TextStyle(color:color,)
        ),
      ),
    ),
     body: const EmptyNewsWidget(
       text: ('Ops! No Result Found'),
       imagePath: 'assets/images/bookmark.png',),
    //     ListView.builder(
    //     itemCount: 20,
    //     itemBuilder: (ctx,index){
    //       return const ArticleWidget();
    //     },
    // ),
    );
  }
}
