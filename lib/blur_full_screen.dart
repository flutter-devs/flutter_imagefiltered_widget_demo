import 'dart:ui';
import 'package:flutter/material.dart';


class BlurFullScreen extends StatefulWidget {
  @override
  _BlurFullScreenState createState() => _BlurFullScreenState();
}

class _BlurFullScreenState extends State<BlurFullScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child:ImageFiltered(
            imageFilter: ImageFilter.blur( sigmaY: 3,sigmaX: 3),
            child: FullScreen()
        ) ,
    );
  }
}

class FullScreen extends StatelessWidget {
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
                Image.asset("assets/devs.jpg",)
              ],
            ),
          ),
        )
    );
  }
}


