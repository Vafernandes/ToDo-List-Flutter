# To Do list - Flutter

### Este projetinho teve como objetivo entender como funciona o ListView.builder do Flutter.


```dart

ListView.builder(
              itemCount: ToDoModel.instanciaToDoModel.getLengthTodos(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(ToDoModel.instanciaToDoModel.getToDos()[index]),
                );
              },
            ),

```

![Alt Text](gif/apresentacao.gif)



