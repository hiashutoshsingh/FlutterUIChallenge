import 'dart:collection';

import 'package:flutter/material.dart';

import 'city.dart';

class CityProviderModel extends ChangeNotifier {
  final List<Results> _tasks = [];

  UnmodifiableListView<Results> get allTasks => UnmodifiableListView(_tasks);

  UnmodifiableListView<Results> get incompleteTasks =>
      UnmodifiableListView(_tasks.where((todo) => !todo.completed));

  UnmodifiableListView<Results> get completedTasks =>
      UnmodifiableListView(_tasks.where((todo) => todo.completed));

  void addTodo(Results results) {
    _tasks.add(results);
    notifyListeners();
  }

  void toggleTodo(Results result) {
    final taskIndex = _tasks.indexOf(result);
    _tasks[taskIndex].toggleCompleted();
    notifyListeners();
  }
}
