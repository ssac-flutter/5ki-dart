import 'package:dart_basic/book_rent/ui/book_manage_screen/book_manage_model.dart';
import 'package:dart_basic/book_rent/ui/book_rent_model.dart';
import 'package:dart_basic/book_rent/ui/book_rent_screen.dart';
import 'package:dart_basic/book_rent/ui/user_manage_screen/user_manage_model.dart';

import 'data/repository/book_repository_impl.dart';
import 'data/repository/rental_repository_impl.dart';
import 'data/repository/user_repository_impl.dart';

void main() {
  BookRentScreen(
    BookRentModel(
      BookRepositoryImpl(),
      UserRepositoryImpl(),
      RentalRepositoryImpl(),
    ),
    UserManageModel(
      UserRepositoryImpl(),
    ),
    BookManageModel(
      BookRepositoryImpl(),
    ),
  );
}
