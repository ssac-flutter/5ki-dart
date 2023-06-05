import 'package:dart_basic/todo/data/model/todo.dart';
import 'package:dart_basic/todo/data/repository/todo_repository.dart';

class TodoMemoryRepositoryImpl implements TodoRepository {
  List<Todo> _todos = [];

  @override
  void deleteTodo(Todo todo) {
    _todos.remove(todo);
  }

  @override
  List<Todo> findAll() {
    return _todos;
  }

  @override
  Todo? findById(int id) {
    if (_todos.any((e) => e.id == id) == false) return null;
    return _todos.firstWhere((e) => e.id == id);
  }

  @override
  void upsertTodo(Todo todo) {
    if (_todos.contains(todo)) {
      _todos = _todos.map((e) {
        if (e.id == todo.id) {
          return todo;
        }
        return e;
      }).toList();
    } else {
      _todos.add(todo);
    }
  }
}
