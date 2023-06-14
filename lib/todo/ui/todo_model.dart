import 'dart:io';
import 'dart:math';

import 'package:dart_basic/todo/data/model/todo.dart';
import 'package:dart_basic/todo/data/repository/todo_repository.dart';

class TodoViewModel {
  final TodoRepository _todoRepository;

  TodoViewModel(this._todoRepository);

  String? input() {
    return stdin.readLineSync();
  }

  List<Todo> getAllTodos() => _todoRepository.findAll();

  Todo addTodo(String title) {
    final id = _todoRepository.findAll().map((e) => e.id).fold(0, max) + 1;
    final newTodo = Todo(id, title, false);

    _todoRepository.upsertTodo(newTodo);
    return newTodo;
  }

  void toggleTodo(int id) {
    final todo = _todoRepository.findById(id);

    if (todo == null) {
      print('없는 id 입니다');
      return;
    }

    todo.isDone = !todo.isDone;
  }

  void deleteTodo() {}
}
