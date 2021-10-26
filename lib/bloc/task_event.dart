import 'package:todoey_flutter/models/task.dart';

enum Event {
  AddEvent,
  UpdateEvent,
  DeleteEvent
}

class TaskEvent {
  Task task;
  Event event;

  TaskEvent({this.task, this.event});

}// End of class