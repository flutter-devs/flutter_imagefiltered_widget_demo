import 'package:flutter/material.dart';
import 'package:flutter_imagefiltered_demo/blur_full_screen.dart';
import 'package:flutter_imagefiltered_demo/blur_image.dart';
import 'package:flutter_imagefiltered_demo/imagefilter_matrix.dart';
import 'package:flutter_imagefiltered_demo/matrix4_rotation.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ImageFiltered Demo'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                RaisedButton(
                  child: Text('Blur Image',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BlurImage()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),
                ),
                SizedBox(height: 8,),
                RaisedButton(
                  child: Text('ImageFilter Matrix',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ImageFilterMatrix()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),

                RaisedButton(
                  child: Text('Matrix4 Rotation',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Matrix4Rotation()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),


                ),
                SizedBox(height: 8,),

                RaisedButton(
                  child: Text('Blur Full Screen',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BlurFullScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),


                ),
                
              ],
            ),
          )
      ), //center
    );
  }
}
