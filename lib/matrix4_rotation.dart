import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class Matrix4Rotation extends StatefulWidget {
  @override
  _Matrix4RotationState createState() => _Matrix4RotationState();
}

class _Matrix4RotationState extends State<Matrix4Rotation> {
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
                    imageFilter: ImageFilter.matrix(
                      Matrix4.rotationZ(0.15).storage,
                    ),
                      child: Image.asset("assets/devs.jpg",scale:3.5)
                ),
              ],
            ),
          ),
        )
    );
  }
}

