import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>( // Consumer is
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          final task = taskData.taskList[index];
          return TaskTile(
            taskTitle: task.title,
            isChecked: task.isFinished,
            didPressOnCheckBox: () {
              taskData.updateTask(task);
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
} // End of class

