import 'package:bloc/bloc.dart';
import 'package:todoey_flutter/bloc/task_state.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskCubit extends Cubit<TaskState> {

  TaskCubit() : super(TaskState());

  void addNewTask(Task task) {
    var a = state.addNewTask(task);

  }

  void updateTask(Task task) {
    state.updateTask(task);
  }

  void deleteTask(Task task) {
    state.deleteTask(task);
  }

}// End of class