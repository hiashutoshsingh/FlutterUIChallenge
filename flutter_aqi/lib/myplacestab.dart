import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'city.dart';
import 'citylist.dart';
import 'cityprovidermodel.dart';
import 'citytile.dart';

class MyPlaces extends StatelessWidget {
  List<Results> results;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<CityProviderModel>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.completedTasks,
        ),
      ),
    );
  }
}
