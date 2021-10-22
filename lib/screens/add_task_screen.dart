import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/bloc/task_cubit.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {

  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0, bottom: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),

          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
            controller: textFieldController,
          ),
          SizedBox(height: 10.0),
          TextButton(
            onPressed: () {
              if (this.textFieldController.text.isEmpty) {
                return;
              } else {
                final task = Task(title: this.textFieldController.text);
                context.read<TaskCubit>().addNewTask(task);
                Navigator.pop(context);
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)
            ),
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white
              ),
            ) ,
          )
        ],
      ),
    );
  }
}
