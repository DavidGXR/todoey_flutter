import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final Function didPressOnCheckBox;
  final Function didLongPressOnText;

  TaskTile({this.taskTitle, this.isChecked, this.didPressOnCheckBox, this.didLongPressOnText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onLongPress: ()  {
          didLongPressOnText();
        },
        child: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null
          ),
        ),
      ),
      trailing: Checkbox(
          value: isChecked,
          onChanged: (value) {
            didPressOnCheckBox();// onChanged pass boolean value to onCheckBoxPress by default without needing us to put it into the callback function manually
          }
      )
    );
  }
}


