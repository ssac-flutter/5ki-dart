import 'package:dart_basic/book_rent/data/repository/book_repository.dart';
import 'package:dart_basic/book_rent/data/repository/rental_repository.dart';
import 'package:dart_basic/book_rent/data/repository/user_repository.dart';

import '../data/model/rental.dart';

class BookRentModel {
  final BookRepository bookRepository;
  final UserRepository userRepository;
  final RentalRepository rentalRepository;

  BookRentModel(
    this.bookRepository,
    this.userRepository,
    this.rentalRepository,
  );

  // 책 렌트
  void rentBook(int bookId, int userId) {
    final book = bookRepository.findById(bookId);
    final user = userRepository.findById(userId);

    if (book == null || user == null) {
      throw Exception('책 또는 유저가 존재하지 않습니다.');
    }

    final rentedBook = rentalRepository.findById(bookId);
    if (rentedBook != null) {
      throw Exception('이미 대여된 책입니다.');
    }

    rentalRepository.upsertRental(
      Rental(
        book: book,
        user: user,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(Duration(days: 14)),
      ),
    );
  }
}
