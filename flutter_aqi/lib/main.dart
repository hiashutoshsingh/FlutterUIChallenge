import 'package:flutter/material.dart';
import 'package:flutter_aqi/cityprovidermodel.dart';
import 'package:flutter_aqi/homescreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: Scaffold(
        body: HomeScreen(),
      ),
      builder: (_) => CityProviderModel(),
    );
  }
}
