import 'package:bloc/bloc.dart';
import 'package:todoey_flutter/bloc/task_event.dart';
import 'package:todoey_flutter/bloc/task_state.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {

  TaskBloc() : super(TaskState());

  List<Task> _taskList = [];

  @override
  void onEvent(TaskEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
    
    switch (event) {
      case TaskEvent.AddEvent: emit(TaskState(taskList: ))
        break;
      case TaskEvent.DeleteEvent:
        break;
      case TaskEvent.UpdateEvent:
        break;
    }

  }

}// End of class