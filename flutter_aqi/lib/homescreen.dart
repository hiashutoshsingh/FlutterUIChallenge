import 'package:flutter/material.dart';

import 'allplacestab.dart';
import 'myplacestab.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AQI'),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(text: 'All Places'),
            Tab(text: 'My Places'),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: <Widget>[
        AllPlaces(),
        MyPlaces(),
      ]),
    );
  }
}
