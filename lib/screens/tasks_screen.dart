import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/bloc/task_cubit.dart';
import 'package:todoey_flutter/bloc/task_state.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';

class TaskScreen extends StatefulWidget {

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  // List<Task> taskList = [
  //   Task(title: "Go to office"),
  //   Task(title: "Go to fix car at May Garage"),
  //   Task(title: "Date with gf")
  // ];

  void didPressOnCheckBox(int index) {
    setState(() {
     // this.taskList[index].toggleDone();
    });
  }

  void didAddTask(String task) {
    setState(() {
      //this.taskList.add(Task(title: task));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.lightBlue,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                    child: AddTaskScreen(didAddTask: didAddTask),
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ));
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 60.0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 50.0
                    ),
                  ),
                  BlocBuilder<TaskCubit, TaskState> (
                    builder: (context, state) {
                    return Text(
                        '${state.taskCount} tasks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                        ),
                      );
                    }
                  ),

                ],
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)
                      )
                  ),
                  child: TasksList()

                )
            ),
          ],
        )
    );
  }
}

// class TaskScreen extends StatelessWidget {
//
//   Widget buildBottomSheet(BuildContext context) {
//     return Container(
//       child: Text('Hi'),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.lightBlue,
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             showModalBottomSheet(
//                 context: context,
//                 builder: (context) => AddTaskScreen(),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0)
//                 ));
//           },
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(30.0, 60.0, 0, 0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     child: Icon(
//                       Icons.list,
//                       size: 30.0,
//                       color: Colors.lightBlueAccent,
//                     ),
//                     backgroundColor: Colors.white,
//                     radius: 30.0,
//                   ),
//                   SizedBox(height: 10.0),
//                   Text(
//                     'Todoey',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 50.0
//                     ),
//                   ),
//                   Text(
//                     '12 Tasks',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18.0
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Expanded(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 20.0),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10.0),
//                           topRight: Radius.circular(10.0)
//                       )
//                   ),
//                   child: TasksList(),
//
//                 )
//             ),
//           ],
//         )
//     );
//   }
//
// }