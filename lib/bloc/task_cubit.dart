import 'package:bloc/bloc.dart';
import 'package:todoey_flutter/bloc/task_state.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskCubit extends Cubit<TaskState> {

  TaskCubit() : super(TaskState(taskList: [])); // initial state, empty list

  List<Task> _taskList = [];

  void addNewTask(Task task) {
    this._taskList.add(task);
    emit(TaskState(taskList: _taskList));
  }

  void updateTask(int index) {
    this._taskList[index].toggleDone();
    emit(TaskState(taskList: _taskList));
  }

  void deleteTask(int index) {
    this._taskList.removeAt(index);
    emit(TaskState(taskList: _taskList));
  }


}// End of class