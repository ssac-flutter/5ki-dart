import 'package:dart_basic/todo/data/repository/todo_memory_repository_impl.dart';
import 'package:dart_basic/todo/ui/todo_screen.dart';
import 'package:dart_basic/todo/ui/todo_view_model.dart';

void main() {
  TodoScreen(TodoViewModel(TodoMemoryRepositoryImpl()));
}