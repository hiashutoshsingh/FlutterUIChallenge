import 'package:flutter/material.dart';
import 'package:flutter_aqi/city.dart';
import 'package:flutter_aqi/citytile.dart';

class TaskList extends StatelessWidget {
  final List<Results> tasks;

  TaskList({@required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTasks(),
    );
  }

  List<Widget> getChildrenTasks() {
    return tasks.map((tasks) => CityTile(tasks)).toList();
  }
}
