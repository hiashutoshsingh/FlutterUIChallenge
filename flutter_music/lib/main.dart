import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  // Widget _buildRadialSeekBar(){
  //  //
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF1DB954),
          ),
          onPressed: () {},
        ),
        title: Text("Music",
            style: TextStyle(color: Colors.white, fontFamily: "Nexa")),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Color(0xFF1DB954)),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Center(
            child: Container(
              width: 250.0,
              height: 250.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFffffff),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 240.0,
                      height: 240.0,
                      child: SingleCircularSlider(
                        100,
                        0,
                        handlerOutterRadius: 5.0,
                        sliderStrokeWidth: 5.0,
                        selectionColor: Color(0xFF1DB954),
                        handlerColor: Color(0xFF1DB954)
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 210.0,
                      height: 210.0,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipOval(
                          clipper: MClipper(),
                          child: Image.asset(
                            "assets/music.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: <Widget>[
              Text(
                "Berzerk",
                style: TextStyle(
                    color: Color(0xFF1DB954),
                    fontSize: 20.0,
                    fontFamily: "Nexa"),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Eminem",
                style: TextStyle(
                    color: Color(0xFFffffff),
                    fontSize: 18.0,
                    fontFamily: "NexaLight"),
              )
            ],
          ),
          Container(
            width: 350.0,
            height: 150.0,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 65.0,
                    width: 290.0,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xFFffffff), width: 3.0),
                        borderRadius: BorderRadius.circular(40.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.fast_rewind,
                              size: 55.0, color: Color(0xFF1DB954)),
                          Expanded(child: Container()),
                          Icon(Icons.fast_forward,
                              size: 55.0, color: Color(0xFF1DB954)),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 92.0,
                    height: 92.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFffffff), shape: BoxShape.circle),
                    child: IconButton(
                        icon: Icon(Icons.play_arrow,
                            size: 45.0, color: Color(0xFF1DB954)),
                        onPressed: () {}),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180.0,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -25,
                  child: Container(
                    width: 50.0,
                    height: 180.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF1DB954),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                    ),
                  ),
                ),
                Positioned(
                  right: -25,
                  child: Container(
                    width: 50.0,
                    height: 180.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF1DB954),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0)),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      song("assets/cover_1.jpg", "Pulled", "Beatdown"),
                      song("assets/cover_2.jpg", "Beauty", "Beatdown"),
                      song("assets/cover_3.jpg", "Dermot", "Beatdown"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget song(String image, String title, String subtitle) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          image,
          width: 40.0,
          height: 40.0,
        ),
        SizedBox(
          width: 8.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title, style: TextStyle(color: Color(0xFF1DB954))),
            Text(subtitle,
                style: TextStyle(color: Color(0xFFffffff), fontSize: 16))
          ],
        )
      ],
    ),
  );
}

class MClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: min(size.width, size.height) / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
