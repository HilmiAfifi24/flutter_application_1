import 'package:flutter/material.dart';
import 'package:flutter_application_1/day5/toDoApp/todo.dart';

class TodoProvider with ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void toggleTodoStatus(int index) {
    _todos[index].toggleCompleted();
    notifyListeners();
  }

  void deleteTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
