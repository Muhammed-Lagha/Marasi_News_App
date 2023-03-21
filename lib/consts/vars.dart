import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

enum NewsType{
  topTrending,
  allNews,
}
enum SortByEnum {
  relevancy,
  popularity,
  publishedAt,
}
TextStyle smallTextStyle = GoogleFonts.montserrat(fontSize: 12);

const List <String> searchKeywords = [
  "Books",
  "Movies",
  "Sport",
  "Fashion",
  "Football",
  "Unity",
  "Flutter",
  "Python",
  "Java Script",
  "C#"
];