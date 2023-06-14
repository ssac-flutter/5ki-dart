import '../model/book.dart';

abstract interface class BookRepository {
  Book findById(int id);

  List<Book> findAll();

  Book upsertBook(Book book);

  void deleteBook(int id);
}
