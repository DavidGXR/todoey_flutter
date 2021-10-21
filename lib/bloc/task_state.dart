import 'dart:collection';
import 'package:todoey_flutter/models/task.dart';

class TaskState  {

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
  }

  void updateTask(Task task) {
    task.toggleDone();
  }

  void deleteTask(Task task) {
    this._taskList.remove(task);
  }

}// End of class