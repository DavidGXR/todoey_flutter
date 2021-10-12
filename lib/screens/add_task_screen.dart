import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

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
          ),
          SizedBox(height: 10.0),
          TextButton(
            onPressed: () {

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
