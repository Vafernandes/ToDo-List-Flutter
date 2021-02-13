import 'package:flutter/material.dart';
import 'package:todo_list_without_api/src/Models/todo_model.dart';

class ToDoHome extends StatefulWidget {
  @override
  _ToDoHomeState createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                ToDoModel.instanciaToDoModel.cleanToDos();
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/addToDo');
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: ToDoModel.instanciaToDoModel.getLengthTodos(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(ToDoModel.instanciaToDoModel.getToDos()[index]),
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: (ToDoModel.instanciaToDoModel.getToDos().isEmpty)
                  ? Text('Click on icon "+" to add a new To Do')
                  : Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
