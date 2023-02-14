
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/utils.dart';

class TopTrendingWidget extends StatelessWidget {
  const TopTrendingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(10.0),
        child: Material(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {},
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  boxFit: BoxFit.fill,
                  errorWidget: Image.asset('assets/images/empty_image.png'),
                  imageUrl: 'https://images.pexels.com/photos/11139714/pexels-photo-11139714.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  height: size.height * 0.33,
                  width: double.infinity,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Ragusa, Sicilia, Italia',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  IconButton(onPressed: () {},
                      icon: const Icon(Icons.link_outlined,)
                  ),
                  const Spacer(),
                  SelectableText(
                    '15 - 2 - 2023',
                    style: GoogleFonts.montserrat(fontSize: 15),
                  )
                ],
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}
