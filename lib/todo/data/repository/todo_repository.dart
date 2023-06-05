import 'package:dart_basic/todo/data/model/todo.dart';

abstract class TodoRepository {
  Todo? findById(int id);

  List<Todo> findAll();

  void upsertTodo(Todo todo);

  void deleteTodo(Todo todo);
}
