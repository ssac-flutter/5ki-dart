import 'package:dart_basic/book_rent/data/model/book.dart';
import 'package:dart_basic/book_rent/data/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final List<Book> _books = [];
  var _lastId = 0;

  @override
  Book? findById(int id) {
    return _books.firstWhere((element) => element.id == id);
  }

  @override
  List<Book> findAll() {
    return _books;
  }

  @override
  Book upsertBook(Book book) {
    final index = _books.indexWhere((element) => element.id == book.id);

    if (index == -1) {
      book.id = ++_lastId;
      _books.add(book);
    } else {
      _books[index] = book;
    }

    return book;
  }

  @override
  void deleteBook(int id) {
    _books.removeWhere((element) => element.id == id);
  }
}