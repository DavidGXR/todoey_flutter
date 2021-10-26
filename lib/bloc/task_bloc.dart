import 'package:bloc/bloc.dart';
import 'package:todoey_flutter/bloc/task_event.dart';
import 'package:todoey_flutter/bloc/task_state.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {

  TaskBloc() : super(TaskState(taskList: []));
  
  List<Task> _taskData = [];
  
  @override
  void onEvent(TaskEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);

    if (event.event == Event.AddEvent) {
      this._taskData.add(event.task);
      emit(TaskState(taskList: this._taskData));
    } else if (event.event == Event.DeleteEvent) {
      this._taskData.remove(event.task);
      emit(TaskState(taskList: this._taskData));
    } else {
      final updatedTask = _taskData.firstWhere((element) =>
      element == event.task,
          orElse: () {
            return null;
          });
      updatedTask.toggleDone();
      emit(TaskState(taskList: this._taskData));
    }
  }



}// End of class