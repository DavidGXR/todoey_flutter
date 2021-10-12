import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;

  void didPressOnCheckBox(bool state) {
    this.isChecked = state;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Go to Mango Byte office',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: TaskCheckBox(
          checkBoxState: this.isChecked,
          onCheckBoxPress: didPressOnCheckBox
      )
    );
  }
}


class TaskCheckBox extends StatelessWidget {

  final bool checkBoxState;
  final Function onCheckBoxPress;

  TaskCheckBox({this.checkBoxState, this.onCheckBoxPress});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: onCheckBoxPress // onChanged pass boolean value to onCheckBoxPress by default without needing us to put it into the callback function manually
    );
  }

}


