import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/bloc/task_cubit.dart';
import 'package:todoey_flutter/bloc/task_state.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState> (
    builder: (context, state) {
      return ListView.builder(itemBuilder: (context, index) {
        final task = state.taskList[index];
        return TaskTile(
            taskTitle: task.title,
            isChecked: task.isFinished,
            didPressOnCheckBox: () {
              context.read<TaskCubit>().updateTask(index);
            },
            didLongPressOnText: () {
              context.read<TaskCubit>().deleteTask(index);
            },
          );
        },
        itemCount: state.taskList.length,
        );
    });

  }



} // End of class

