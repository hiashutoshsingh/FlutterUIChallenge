import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_aqi/city.dart';
import 'package:http/http.dart' as http;

import 'citytile.dart';

class AllPlaces extends StatefulWidget {
  @override
  AllPlacesState createState() {
    return new AllPlacesState();
  }
}

class AllPlacesState extends State<AllPlaces> {
  var url =
      "https://api.openaq.org/v1/latest?city=Chennai&parameter=pm25&limit=1";

  CityHub cityHub;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
   CityHub cityHubn = CityHub.fromJson(decodedJson);
    setState(() {
      this.cityHub = cityHubn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return cityHub == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: cityHub.results.length,
            itemBuilder: (context, index) => CityTile(cityHub.results[index]));
  }
}
