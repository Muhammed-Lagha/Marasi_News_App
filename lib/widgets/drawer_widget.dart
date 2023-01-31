import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
        DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          child: Column(
            children: [
              // Title(color:Colors.white ,
              //     child: Text(
              //       'Marasi'
              //     ),
              // ),
              Flexible(
                  child: Image(
                    image: AssetImage(
                        "assets/images/newspaper.png"
                    ),
                    height: 160,
                  ),
              ),
            ],
          ),
        ),
      ],
      ),
    );
  }
}
