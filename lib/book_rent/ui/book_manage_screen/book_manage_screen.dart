import 'dart:io';

import 'book_manage_model.dart';

class BookManageScreen {
  final BookManageModel model;

  bool _isExit = false;

  BookManageScreen(this.model) {
    printMenu();
  }

  void printMenu() {
    while (!_isExit) {
      print('');
      print('1. 도서목록, 2. 도서등록, 3. 도서삭제, 4. 종료');

      int? number = int.tryParse(_input()!);

      switch (number) {
        case 1:
          _printList();
          break;
        case 2:
          _add();
          _printList();
          break;
        case 3:
          _delete();
          _printList();
          break;
        case 4:
          _isExit = true;
          break;
        default:
      }
    }
  }

  String? _input() {
    return stdin.readLineSync();
  }

  void _printList() {
    model.getAllBooks().forEach(print);
  }

  void _add() {
    print('추가할 도서명을 입력하세요.');
    final title = _input()!;
    print('저자명을 입력하세요.');
    final name = _input()!;
    model.addBook(title, name);
    print('$title 을/를 추가했습니다.');
  }

  void _delete() {
    print('삭제할 도서의 id를 입력하세요.');
    final id = int.tryParse(_input()!);

    if (id == null) {
      print('id를 잘못 입력하였습니다');
      return;
    }

    model.deleteBook(id);
  }

  void _update() {
    print('수정할 할 도서의 id를 입력하세요.');
    final id = int.tryParse(_input()!);

    if (id == null) {
      print('id를 잘못 입력하였습니다');
    }

    // 업데이트 로직
  }
}
