import 'package:flutter/material.dart';
import 'package:flutter_shopping/product_cart.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List<Widget> bottomNavigation = [
    Image.asset("assets/store.png", width: 32.0, height: 32.0),
    Icon(Icons.search, size: 32.0),
    Icon(Icons.favorite, size: 32.0),
    Icon(Icons.add_shopping_cart, size: 32.0),
    Image.asset("assets/profile.png", width: 35.0, height: 35.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 25.0),
                  child:
                      Image.asset("assets/logo.png", width: 62.0, height: 42.0),
                ),
              ),
              ProductCard(0xFFfaecfb, "assets/shoes_01.png",
                  "Hybrid Rocket WNS", "\$999.00", "\$749"),
              SizedBox(height: 20.0),
              ProductCard(0xFFf8e1da, "assets/shoes_02.png",
                  "Hybrid Runner ARS", "\$699", "\$599")
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.5),
            offset: Offset(0.0, -3.0),
            blurRadius: 10.0,
          )
        ]),
        child: Row(
            children: bottomNavigation.map((item) {
          var index = bottomNavigation.indexOf(item);

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: bottomNavItem(item, index == _currentIndex),
            ),
          );
        }).toList()),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
      decoration: BoxDecoration(
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.black12.withOpacity(.02),
                    offset: Offset(0.0, 5.0),
                  )
                ]
              : []),
      child: item,
    );
