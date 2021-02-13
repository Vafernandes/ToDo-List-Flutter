import 'package:flutter/material.dart';
import 'package:todo_list_without_api/src/Models/todo_model.dart';

class AddToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add To Do'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Write what you want to do',
                  ),
                  onChanged: (value) {
                    ToDoModel.instanciaToDoModel.setToDoModel(value);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: RaisedButton(
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                    ToDoModel.instanciaToDoModel
                        .addToDo(ToDoModel.instanciaToDoModel.getToDoModel());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
