import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.taskList[index].title,
            isChecked: taskData.taskList[index].isFinished,
            didPressOnCheckBox: () {
              taskData.taskList[index].toggleDone();
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
} // End of class


// class TasksList extends StatefulWidget {
//
//   @override
//   _TasksListState createState() => _TasksListState();
// }
//
// class _TasksListState extends State<TasksList> {
//   List<Task> taskList = [
//     Task(title: "Go to office"),
//     Task(title: "Go to fix car at May Garage"),
//     Task(title: "Date with gf")
//   ];
//
//   void didPressOnCheckBox(int index) {
//     setState(() {
//       this.taskList[index].toggleDone();
//     });
//   }
//
//   Widget build(BuildContext context) {
//     return ListView.builder(itemBuilder: (context, index) {
//       return TaskTile(
//         taskTitle: this.taskList[index].title,
//         isChecked: this.taskList[index].isFinished,
//         didPressOnCheckBox: () {
//           didPressOnCheckBox(index);
//         },
//       );
//     },
//       itemCount: this.taskList.length,
//     );
//   }
//
// }
