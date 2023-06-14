import 'dart:io';

import 'user_manage_model.dart';

class UserManageScreen {
  final UserManageModel model;

  bool _isExit = false;

  UserManageScreen(this.model) {
    printMenu();
  }

  void printMenu() {
    while (!_isExit) {
      print('');
      print('1. 회원목록, 2. 회원등록, 3. 회원삭제, 4. 종료');

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
        default:
      }
    }
  }

  String? _input() {
    return stdin.readLineSync();
  }

  void _printList() {
    model.getAllUsers().forEach(print);
  }

  void _add() {
    print('추가할 이름을 입력하세요.');
    final name = _input()!;
    model.addUser(name);
    print('$name 을/를 추가했습니다.');
  }

  void _delete() {
    print('삭제할 회원의 id를 입력하세요.');
    final id = int.tryParse(_input()!);

    if (id == null) {
      print('id를 잘못 입력하였습니다');
      return;
    }

    model.deleteUser(id);
  }

  void _update() {
    print('수정할 할 회원의 id를 입력하세요.');
    final id = int.tryParse(_input()!);

    if (id == null) {
      print('id를 잘못 입력하였습니다');
    }

    // 업데이트 로직
  }
}
