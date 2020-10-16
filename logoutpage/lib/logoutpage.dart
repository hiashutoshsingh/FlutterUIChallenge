import 'package:flutter/material.dart';

import 'package:gradient_widgets/gradient_widgets.dart';
import 'nm_box.dart';

//Main LogoOut Page 
class Logout extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Logout> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[50],
            elevation: 0,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Stack(children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.black87)),
                  ]),
                ])),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Center(
                child: Text('LOGOUT PAGE',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat')),
              ),
            ]),
            SizedBox(height: 70),
            Container(
              width: 280,
              height: 280,
              padding: EdgeInsets.all(8),
              decoration: nMbox,
              child: Container(
                decoration: nMbox,
                padding: EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        // image: AssetImage('assets/avatar.JPG'),
                        image: new NetworkImage(
                            "https://media1.tenor.com/images/59e875bc06f88080a4d9d8f5c8ccd38f/tenor.gif?itemid=5679892")),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Center(
                    child: Text('TAP LOGOUT BUTTON TO LOGOUT',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold))),
            
              ],
            ),
            SizedBox(height: 30),
         
            Center(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: GradientButton(
                increaseHeightBy: 10,
                increaseWidthBy: 16,
                child: Center(child: Text('LOGOUT')),
                callback: () {
                        
//U r method to logout from the app
                          Navigator.pop(context);

                  
                },
                gradient: Gradients.hotLinear,
                shadowColor:
                    Gradients.backToFuture.colors.last.withOpacity(0.25),
              ),
            ))
          
          ]),
        ));
  }
}
