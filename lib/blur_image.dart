import 'dart:ui';

import 'package:flutter/material.dart';


class BlurImage extends StatefulWidget {
  @override
  _BlurImageState createState() => _BlurImageState();
}

class _BlurImageState extends State<BlurImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("ImageFiltered Demo"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageFiltered(
                    imageFilter: ImageFilter.blur( sigmaY: 4,sigmaX: 4),
                    child: Image.asset("assets/devs.jpg",)
                ),
              ],
            ),
          ),
        )
    );
  }

}

