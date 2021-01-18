import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilterMatrix extends StatefulWidget {
  @override
  _ImageFilterMatrixState createState() => _ImageFilterMatrixState();
}

class _ImageFilterMatrixState extends State<ImageFilterMatrix> {
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
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageFiltered(
                    imageFilter: ImageFilter.matrix(
                      Float64List.fromList([
                      1,1,0,0,
                      0,1,1,0,
                      1,1,0,1,
                      1,1,0,1
                    ]),
                    ),
                    child: Image.asset("assets/devs.jpg",scale: 3.5,)
                ),
              ],
            ),
          ),
        )
    );
  }
}

