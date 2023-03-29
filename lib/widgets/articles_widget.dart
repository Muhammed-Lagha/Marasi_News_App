import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:marasi_news_app/inner_screens/news_details.dart';
import 'package:marasi_news_app/services/utils.dart';
import 'package:marasi_news_app/widgets/vSpacing.dart';
import 'package:page_transition/page_transition.dart';

import '../consts/vars.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor,
        child: GestureDetector(
          onTap: () {
          },
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 60,
                  width: 60,
                  color:Theme.of(context).colorScheme.secondary,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 60,
                  width: 60,
                  color:Theme.of(context).colorScheme.secondary,
                ),
              ),
              Container(
                color: Theme.of(context).cardColor,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FancyShimmerImage(
                        height: size.height * 0.12,
                        width: size.width * 0.12,
                        boxFit: BoxFit.fill,
                          imageUrl: 'https://images.pexels.com/photos/2299499/pexels-photo-2299499.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Title '*10, textAlign: TextAlign.justify, maxLines: 2 , overflow: TextOverflow.ellipsis, style: smallTextStyle,),
                          const VerticalSpacing(5),
                          Align(alignment: Alignment.topRight,
                              child: Text("Reading Time",style: smallTextStyle,)),
                          Row(
                            children: [IconButton(onPressed: () {
                              Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const NewsWebView(),
                                  inheritTheme: true,
                                  ctx: context),
                            );},
                                icon:const Icon(Icons.link_outlined),color: Colors.blue,),
                              Text('15-2-2023'*2,maxLines: 1, style: smallTextStyle,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
