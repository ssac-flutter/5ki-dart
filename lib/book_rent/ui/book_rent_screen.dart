import 'dart:io';

import 'package:dart_basic/book_rent/ui/book_manage_screen/book_manage_screen.dart';
import 'package:dart_basic/book_rent/ui/book_rent_model.dart';
import 'package:dart_basic/book_rent/ui/user_manage_screen/user_manage_screen.dart';

import 'book_manage_screen/book_manage_model.dart';
import 'user_manage_screen/user_manage_model.dart';

class BookRentScreen {
  final BookRentModel bookRentModel;
  final UserManageModel userModel;
  final BookManageModel bookModel;

  bool _isExit = false;

  BookRentScreen(
    this.bookRentModel,
    this.userModel,
    this.bookModel,
  ) {
    printMenu();
  }

  void printMenu() {
    while (!_isExit) {
      print('');
      print('1. 회원관리, 2. 책관리, 3. 렌트관리, 4. 종료');

      int? number = int.tryParse(stdin.readLineSync()!);

      switch (number) {
        case 1:
          UserManageScreen(userModel);
          break;
        case 2:
          BookManageScreen(bookModel);
          break;
        case 3:
          break;
        case 4:
          _isExit = true;
          break;
        default:
      }
    }
  }
}
