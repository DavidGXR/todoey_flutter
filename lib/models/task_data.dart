import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> _taskList = [
    Task(title: "Go to office"),
    Task(title: "Go to fix car at May Garage"),
    Task(title: "Date with gf")
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  void addNewTask(Task task) {
    _taskList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    this._taskList.remove(task);
    notifyListeners();
  }

}// End of class