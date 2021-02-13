import 'package:flutter/material.dart';

import 'src/pages/add_todo.dart';
import 'src/pages/todo_home.dart';

void main() {
  runApp(ToDoList());
}

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ToDoHome(),
        '/addToDo': (context) => AddToDo(),
      },
    );
  }
}
