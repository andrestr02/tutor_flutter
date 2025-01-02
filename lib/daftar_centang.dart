//import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Space Exploration Planner!"),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: [
            Progress(),
            TaskList(),
          ],
        ));
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("You are this far away from exploring the whole"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "Load rocket with supplies"),
        TaskItem(label: "Launch Rocket"),
        TaskItem(label: "Circle the home planet"),
        TaskItem(label: "Launch moon lander #1"),
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  const TaskItem({super.key, required this.label});
  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            }),
        Text(widget.label),
      ],
    );
  }
}
  
  //MaterialApp
  //Scaffold
  //AppBar
  //Text
  //body: Column
  // text, text, text
  //image
  //Row
  //text, text, button
  //...

