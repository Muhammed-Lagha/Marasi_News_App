import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:marasi_news_app/services/utils.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return Stack(
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
                    imageUrl: 'https://images.pexels.com/photos/12071970/pexels-photo-12071970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                ),

              )
            ],
          ),

        ),
      ],
    );
  }
}
