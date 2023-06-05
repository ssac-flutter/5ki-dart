import 'package:dart_basic/todo/ui/todo_view_model.dart';

class TodoScreen {
  final TodoViewModel viewModel;

  bool _isExit = false;

  TodoScreen(this.viewModel) {
    printMenu();
  }

  void printMenu() {
    while (!_isExit) {
      print('');
      print('1. Todo 목록, 2. Todo 등록, 3. Todo 변경, 4. Todo 삭제, 5. 종료');

      int? number = int.tryParse(viewModel.input()!);

      switch (number) {
        case 1:
          _printTodoList();
          break;
        case 2:
          _addTodo();
          _printTodoList();
          break;
        case 3:
          _updateTodo();
          _printTodoList();
          break;
        case 4:
          break;
        case 5:
          _isExit = true;
          break;
        default:
      }
    }
  }

  void _printTodoList() {
    viewModel.getAllTodos().forEach(print);
  }

  void _addTodo() {
    print('할 일을 입력하세요.');
    final title = viewModel.input()!;
    final insertedTodo = viewModel.addTodo(title);
    print('$insertedTodo 를 추가했습니다.');
  }

  void _updateTodo() {
    print('수정할 할 일의 id를 입력하세요.');
    final id = int.tryParse(viewModel.input()!);

    if (id == null) {
      print('id를 잘못 입력하였습니다');
    }

    viewModel.toggleTodo(id!);
  }
}
