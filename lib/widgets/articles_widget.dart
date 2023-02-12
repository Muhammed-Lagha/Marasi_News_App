import 'package:flutter/material.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:marasi_news_app/services/utils.dart';
import 'package:marasi_news_app/widgets/vSpacing.dart';

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
        child: Stack(
          children: [
            InkWell(
              onTap: () {},
              child: Positioned(
                child: Container(
                  height: 60,
                  width: 60,
                  color:Theme.of(context).colorScheme.secondary,
                ),
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
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Title '*10, style: smallTextStyle,),
                        const VerticalSpacing(5),
                        Align(alignment: Alignment.topRight,
                            child: Text("Reading Time",style: smallTextStyle,)),
                        Row(
                          children: [IconButton(onPressed: () {},
                              icon:const Icon(Icons.link_outlined),color: Colors.blue,),
                            Text('15-2-2023'*2, style: smallTextStyle,)
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
    );
  }
}
