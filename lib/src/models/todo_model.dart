class ToDoModel {
  static ToDoModel instanciaToDoModel = ToDoModel();

  String _toDoModel;
  bool _isFinish = false;
  List<String> _todos = [];

  void addToDo(String todo) {
    if (todo != '') {
      _todos.add(todo);
      _toDoModel = '';
    }
  }

  void cleanToDos() {
    this._todos = [];
    print(_todos);
  }

  String getToDoModel() {
    return this._toDoModel;
  }

  void setToDoModel(String valor) {
    this._toDoModel = valor;
  }

  bool getIsFinish() {
    return this._isFinish;
  }

  void setIsFinich(bool value) {
    this._isFinish = value;
  }

  List<String> getToDos() {
    return this._todos;
  }

  int getLengthTodos() {
    return this._todos.length;
  }
}
