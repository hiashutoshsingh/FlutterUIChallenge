import 'package:flutter/material.dart';
import 'package:flutter_aqi/city.dart';
import 'package:provider/provider.dart';

import 'cityprovidermodel.dart';

class CityTile extends StatelessWidget {
  Results results;

  CityTile(this.results);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(results.city),
              subtitle: Text(results.measurements[0].value.toString()),
              onTap: () {
                Provider.of<CityProviderModel>(context, listen: false)
                    .toggleTodo(results);
              },
            ),
          ),
          Divider()
        ],
      );
}
