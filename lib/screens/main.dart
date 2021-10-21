import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey_flutter/bloc/task_cubit.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => TaskCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: TaskScreen()
      ),
    );
  }
}


