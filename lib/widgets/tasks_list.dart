import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_flutter/bloc/task_bloc.dart';
import 'package:todoey_flutter/bloc/task_event.dart';
import 'package:todoey_flutter/bloc/task_state.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState> (
    builder: (context, state) {
      return ListView.builder(itemBuilder: (context, index) {
        final task = state.taskList[index];
        return TaskTile(
            taskTitle: task.title,
            isChecked: task.isFinished,
            didPressOnCheckBox: () {
              BlocProvider.of<TaskBloc>(context).add(TaskEvent(event: Event.UpdateEvent, task: task));
            },
            didLongPressOnText: () {
              BlocProvider.of<TaskBloc>(context).add(TaskEvent(event: Event.DeleteEvent, task: task));
            },
          );
        },
        itemCount: state.taskList.length,
        );
    });

  }

} // End of class

