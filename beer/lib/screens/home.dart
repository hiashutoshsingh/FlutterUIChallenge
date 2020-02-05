import 'package:beer/model/beer.dart';
import 'package:beer/repository/service.dart';
import 'package:beer/widget/beertile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Beer> _beers = <Beer>[];

  @override
  void initState() {
    super.initState();
    listenForBeers();
  }

  void listenForBeers() async {
    final Stream<Beer> stream = await getBeers();
    stream.listen((Beer beer) => {setState(() => _beers.add(beer))});
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Top Beers'),
        ),
        body: ListView.builder(
            itemCount: _beers.length,
            itemBuilder: (context, index) => BeerTile(_beers[index])),
      );
}
